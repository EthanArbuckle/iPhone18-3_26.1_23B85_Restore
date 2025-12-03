@interface _UINavigationBarVisualProviderCarPlaySolarium
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
- (void)updateProperties;
- (void)updateScrollPocketInteraction;
- (void)updateTopNavigationItemAnimated:(BOOL)animated;
@end

@implementation _UINavigationBarVisualProviderCarPlaySolarium

- (void)updateProperties
{
  v3.receiver = self;
  v3.super_class = _UINavigationBarVisualProviderCarPlaySolarium;
  selfCopy = self;
  [(_UINavigationBarVisualProvider *)&v3 updateProperties];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy updateScrollPocketInteraction:v3.receiver];
}

- (void)updateScrollPocketInteraction
{
  selfCopy = self;
  sub_188FFFB54();
}

- (void)prepare
{
  v211[27] = *MEMORY[0x1E69E9840];
  if (![(_UINavigationBarVisualProviderCarPlaySolarium *)self havePrepared])
  {
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self setHavePrepared:1];
    v210.receiver = self;
    v210.super_class = _UINavigationBarVisualProviderCarPlaySolarium;
    [(_UINavigationBarVisualProvider *)&v210 prepare];
    __asm { FMOV            V0.2D, #4.0 }

    *&self->_desiredLayoutMargins.top = _Q0;
    *&self->_desiredLayoutMargins.bottom = _Q0;
    [(UIView *)self->super._navigationBar setLayoutMargins:4.0, 4.0, 4.0, 4.0];
    v8 = +[UIColor clearColor];
    [(UIView *)self->super._navigationBar setBackgroundColor:v8];

    v9 = objc_alloc_init(UIVisualEffectView);
    [(UIView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self setBackgroundView:v9];
    v209 = v9;
    [(UIView *)self->super._navigationBar addSubview:v9];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self _configureBackground];
    v10 = objc_alloc_init(UIView);
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self setContentView:v10];

    contentView = [(_UINavigationBarVisualProviderCarPlaySolarium *)self contentView];
    [contentView setTranslatesAutoresizingMaskIntoConstraints:0];

    navigationBar = self->super._navigationBar;
    contentView2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self contentView];
    [(UIView *)navigationBar addSubview:contentView2];

    v14 = objc_alloc_init(_UICarTitleView);
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self setTitleView:v14];

    titleView = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
    [titleView setTranslatesAutoresizingMaskIntoConstraints:0];

    titleView2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
    LODWORD(v17) = 1144750080;
    [titleView2 setContentCompressionResistancePriority:0 forAxis:v17];

    titleView3 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
    LODWORD(v19) = 1132068864;
    [titleView3 setContentHuggingPriority:0 forAxis:v19];

    contentView3 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self contentView];
    titleView4 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
    [contentView3 addSubview:titleView4];

    selfCopy = self;
    v23 = [_UIButtonBarButton alloc];
    v24 = objc_alloc_init(_UIButtonBarButtonVisualProviderCarPlay);
    v25 = [(_UIButtonBarButton *)v23 initWithVisualProvider:v24];

    [(UIView *)v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v26) = 1144586240;
    [(UIView *)v25 setContentCompressionResistancePriority:0 forAxis:v26];
    [(UIControl *)v25 addTarget:selfCopy action:sel___backButtonAction forControlEvents:0x2000];

    [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy setBackBarButton:v25];
    contentView4 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy contentView];
    backBarButton = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy backBarButton];
    [contentView4 addSubview:backBarButton];

    v29 = [[_UINavigationButtonBarWrapperView alloc] initWithButtonVisualProviderClass:objc_opt_class() position:0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy setLeadingBarView:v29];

    leadingBarView = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy leadingBarView];
    [leadingBarView setTranslatesAutoresizingMaskIntoConstraints:0];

    v31 = self->super._navigationBar;
    leadingBarView2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy leadingBarView];
    [(UIView *)v31 addSubview:leadingBarView2];

    v33 = [[_UINavigationButtonBarWrapperView alloc] initWithButtonVisualProviderClass:objc_opt_class() position:2];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy setTrailingBarView:v33];

    trailingBarView = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy trailingBarView];
    [trailingBarView setTranslatesAutoresizingMaskIntoConstraints:0];

    v35 = self->super._navigationBar;
    trailingBarView2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy trailingBarView];
    [(UIView *)v35 addSubview:trailingBarView2];

    [(UIView *)self->super._navigationBar _setWantsAutolayout];
    if ([(UIView *)self->super._navigationBar translatesAutoresizingMaskIntoConstraints])
    {
      [(UIView *)self->super._navigationBar _setHostsLayoutEngine:1];
    }

    leadingBarView3 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy leadingBarView];
    leadingAnchor = [leadingBarView3 leadingAnchor];
    layoutMarginsGuide = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy setLeadingBarConstraint:v41];

    leadingBarView4 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy leadingBarView];
    widthAnchor = [leadingBarView4 widthAnchor];
    v44 = [widthAnchor constraintEqualToConstant:0.0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy setLeadingBarNoItemsConstraint:v44];

    trailingBarView3 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy trailingBarView];
    widthAnchor2 = [trailingBarView3 widthAnchor];
    v47 = [widthAnchor2 constraintEqualToConstant:0.0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy setTrailingBarNoItemsConstraint:v47];

    backBarButton2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy backBarButton];
    leadingAnchor3 = [backBarButton2 leadingAnchor];
    layoutMarginsGuide2 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide2 leadingAnchor];
    v52 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy setBackButtonLeadingConstraint:v52];

    backBarButton3 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy backBarButton];
    trailingAnchor = [backBarButton3 trailingAnchor];
    leadingBarView5 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy leadingBarView];
    leadingAnchor5 = [leadingBarView5 leadingAnchor];
    v57 = [trailingAnchor constraintEqualToAnchor:leadingAnchor5 constant:-8.0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy setBackButtonTrailingConstraint:v57];

    titleView5 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy titleView];
    leadingAnchor6 = [titleView5 leadingAnchor];
    layoutMarginsGuide3 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    leadingAnchor7 = [layoutMarginsGuide3 leadingAnchor];
    v62 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:8.0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy setLargeTitleLeadingConstraint:v62];

    titleView6 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy titleView];
    trailingAnchor2 = [titleView6 trailingAnchor];
    layoutMarginsGuide4 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide4 trailingAnchor];
    v67 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy setLargeTitleTrailingConstraint:v67];

    titleView7 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy titleView];
    centerXAnchor = [titleView7 centerXAnchor];
    layoutMarginsGuide5 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    centerXAnchor2 = [layoutMarginsGuide5 centerXAnchor];
    v72 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy setRegularTitleConstraint:v72];

    regularTitleConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy regularTitleConstraint];
    LODWORD(v74) = 1132068864;
    [regularTitleConstraint setPriority:v74];

    leadingBarView6 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy leadingBarView];
    trailingAnchor4 = [leadingBarView6 trailingAnchor];
    titleView8 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy titleView];
    leadingAnchor8 = [titleView8 leadingAnchor];
    v79 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:leadingAnchor8 constant:-4.0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy setLeadingBarWithTitleTrailingConstraint:v79];

    leadingBarView7 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy leadingBarView];
    trailingAnchor5 = [leadingBarView7 trailingAnchor];
    trailingBarView4 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy trailingBarView];
    leadingAnchor9 = [trailingBarView4 leadingAnchor];
    v84 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:leadingAnchor9 constant:-4.0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy setLeadingBarWithNoTitleTrailingConstraint:v84];

    trailingBarView5 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy trailingBarView];
    leadingAnchor10 = [trailingBarView5 leadingAnchor];
    titleView9 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy titleView];
    trailingAnchor6 = [titleView9 trailingAnchor];
    v89 = [leadingAnchor10 constraintGreaterThanOrEqualToAnchor:trailingAnchor6 constant:4.0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy setTrailingBarWithTitleLeadingConstraint:v89];

    trailingBarView6 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy trailingBarView];
    leadingAnchor11 = [trailingBarView6 leadingAnchor];
    leadingBarView8 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy leadingBarView];
    trailingAnchor7 = [leadingBarView8 trailingAnchor];
    v94 = [leadingAnchor11 constraintGreaterThanOrEqualToAnchor:trailingAnchor7 constant:4.0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy setTrailingBarWithNoTitleLeadingConstraint:v94];

    trailingBarView7 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy trailingBarView];
    trailingAnchor8 = [trailingBarView7 trailingAnchor];
    layoutMarginsGuide6 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    trailingAnchor9 = [layoutMarginsGuide6 trailingAnchor];
    v99 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy setTrailingBarConstraint:v99];

    v100 = objc_alloc_init(UIFocusContainerGuide);
    focusContainerGuide = selfCopy->_focusContainerGuide;
    selfCopy->_focusContainerGuide = v100;

    v102 = self->super._navigationBar;
    focusContainerGuide = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy focusContainerGuide];
    [(UIView *)v102 addLayoutGuide:focusContainerGuide];

    v165 = MEMORY[0x1E69977A0];
    contentView5 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy contentView];
    topAnchor = [contentView5 topAnchor];
    layoutMarginsGuide7 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide7 topAnchor];
    v204 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v211[0] = v204;
    contentView6 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy contentView];
    bottomAnchor = [contentView6 bottomAnchor];
    layoutMarginsGuide8 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide8 bottomAnchor];
    v199 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v211[1] = v199;
    contentView7 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy contentView];
    leftAnchor = [contentView7 leftAnchor];
    layoutMarginsGuide9 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    leftAnchor2 = [layoutMarginsGuide9 leftAnchor];
    v194 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v211[2] = v194;
    contentView8 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy contentView];
    rightAnchor = [contentView8 rightAnchor];
    layoutMarginsGuide10 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    rightAnchor2 = [layoutMarginsGuide10 rightAnchor];
    v189 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v211[3] = v189;
    backButtonLeadingConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy backButtonLeadingConstraint];
    v211[4] = backButtonLeadingConstraint;
    backButtonTrailingConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy backButtonTrailingConstraint];
    v211[5] = backButtonTrailingConstraint;
    backBarButton4 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy backBarButton];
    topAnchor3 = [backBarButton4 topAnchor];
    layoutMarginsGuide11 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    topAnchor4 = [layoutMarginsGuide11 topAnchor];
    v182 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v211[6] = v182;
    backBarButton5 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy backBarButton];
    bottomAnchor3 = [backBarButton5 bottomAnchor];
    layoutMarginsGuide12 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    bottomAnchor4 = [layoutMarginsGuide12 bottomAnchor];
    v177 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v211[7] = v177;
    leadingBarConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy leadingBarConstraint];
    v211[8] = leadingBarConstraint;
    leadingBarView9 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy leadingBarView];
    topAnchor5 = [leadingBarView9 topAnchor];
    layoutMarginsGuide13 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    topAnchor6 = [layoutMarginsGuide13 topAnchor];
    v171 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v211[9] = v171;
    leadingBarView10 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy leadingBarView];
    bottomAnchor5 = [leadingBarView10 bottomAnchor];
    layoutMarginsGuide14 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    bottomAnchor6 = [layoutMarginsGuide14 bottomAnchor];
    v166 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v211[10] = v166;
    leadingBarWithTitleTrailingConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy leadingBarWithTitleTrailingConstraint];
    v211[11] = leadingBarWithTitleTrailingConstraint;
    titleView10 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy titleView];
    centerYAnchor = [titleView10 centerYAnchor];
    contentView9 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy contentView];
    centerYAnchor2 = [contentView9 centerYAnchor];
    v159 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v211[12] = v159;
    titleView11 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy titleView];
    heightAnchor = [titleView11 heightAnchor];
    contentView10 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy contentView];
    heightAnchor2 = [contentView10 heightAnchor];
    v154 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v211[13] = v154;
    regularTitleConstraint2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy regularTitleConstraint];
    v211[14] = regularTitleConstraint2;
    trailingBarWithTitleLeadingConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy trailingBarWithTitleLeadingConstraint];
    v211[15] = trailingBarWithTitleLeadingConstraint;
    trailingBarConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy trailingBarConstraint];
    v211[16] = trailingBarConstraint;
    trailingBarView8 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy trailingBarView];
    topAnchor7 = [trailingBarView8 topAnchor];
    layoutMarginsGuide15 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    topAnchor8 = [layoutMarginsGuide15 topAnchor];
    v146 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v211[17] = v146;
    trailingBarView9 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy trailingBarView];
    bottomAnchor7 = [trailingBarView9 bottomAnchor];
    layoutMarginsGuide16 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    bottomAnchor8 = [layoutMarginsGuide16 bottomAnchor];
    v141 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    v211[18] = v141;
    backgroundView = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy backgroundView];
    topAnchor9 = [backgroundView topAnchor];
    topAnchor10 = [(UIView *)self->super._navigationBar topAnchor];
    v137 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
    v211[19] = v137;
    backgroundView2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy backgroundView];
    bottomAnchor9 = [backgroundView2 bottomAnchor];
    bottomAnchor10 = [(UIView *)self->super._navigationBar bottomAnchor];
    v133 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
    v211[20] = v133;
    backgroundView3 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy backgroundView];
    leftAnchor3 = [backgroundView3 leftAnchor];
    leftAnchor4 = [(UIView *)self->super._navigationBar leftAnchor];
    v129 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    v211[21] = v129;
    backgroundView4 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy backgroundView];
    rightAnchor3 = [backgroundView4 rightAnchor];
    rightAnchor4 = [(UIView *)self->super._navigationBar rightAnchor];
    v125 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    v211[22] = v125;
    focusContainerGuide2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy focusContainerGuide];
    leadingAnchor12 = [focusContainerGuide2 leadingAnchor];
    safeAreaLayoutGuide = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    leadingAnchor13 = [safeAreaLayoutGuide leadingAnchor];
    v120 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13];
    v211[23] = v120;
    focusContainerGuide3 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy focusContainerGuide];
    trailingAnchor10 = [focusContainerGuide3 trailingAnchor];
    safeAreaLayoutGuide2 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    trailingAnchor11 = [safeAreaLayoutGuide2 trailingAnchor];
    v115 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
    v211[24] = v115;
    focusContainerGuide4 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy focusContainerGuide];
    topAnchor11 = [focusContainerGuide4 topAnchor];
    safeAreaLayoutGuide3 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    topAnchor12 = [safeAreaLayoutGuide3 topAnchor];
    v107 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
    v211[25] = v107;
    focusContainerGuide5 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy focusContainerGuide];
    bottomAnchor11 = [focusContainerGuide5 bottomAnchor];
    safeAreaLayoutGuide4 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    bottomAnchor12 = [safeAreaLayoutGuide4 bottomAnchor];
    v112 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
    v211[26] = v112;
    v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v211 count:27];
    [v165 activateConstraints:v113];
  }
}

- (void)teardown
{
  titleView = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
  [titleView removeFromSuperview];

  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setTitleView:0];
  leadingBarView = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarView];
  [leadingBarView removeFromSuperview];

  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setLeadingBarView:0];
  trailingBarView = [(_UINavigationBarVisualProviderCarPlaySolarium *)self trailingBarView];
  [trailingBarView removeFromSuperview];

  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setTrailingBarView:0];
  backBarButton = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backBarButton];
  [backBarButton removeFromSuperview];

  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setBackBarButton:0];
  backgroundView = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backgroundView];
  [backgroundView removeFromSuperview];

  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setBackgroundView:0];
  contentView = [(_UINavigationBarVisualProviderCarPlaySolarium *)self contentView];
  [contentView removeFromSuperview];

  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setContentView:0];
  debugViews = [(_UINavigationBarVisualProviderCarPlaySolarium *)self debugViews];
  [debugViews enumerateObjectsUsingBlock:&__block_literal_global_743];

  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setDebugViews:0];
  navigationBar = self->super._navigationBar;
  focusContainerGuide = [(_UINavigationBarVisualProviderCarPlaySolarium *)self focusContainerGuide];
  [(UIView *)navigationBar removeLayoutGuide:focusContainerGuide];

  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setFocusContainerGuide:0];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setLeadingBarConstraint:0];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setLeadingBarNoItemsConstraint:0];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setTrailingBarConstraint:0];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setTrailingBarNoItemsConstraint:0];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setBackButtonLeadingConstraint:0];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setBackButtonTrailingConstraint:0];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setLargeTitleLeadingConstraint:0];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setLargeTitleTrailingConstraint:0];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setRegularTitleConstraint:0];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setHavePrepared:0];
  v12.receiver = self;
  v12.super_class = _UINavigationBarVisualProviderCarPlaySolarium;
  [(_UINavigationBarVisualProvider *)&v12 teardown];
}

- (void)provideViewsForContents:(id)contents topItem:(id)item backItem:(id)backItem
{
  v12[1] = *MEMORY[0x1E69E9840];
  contentsCopy = contents;
  titleView = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
  [contentsCopy setTitleView:titleView];

  backBarButton = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backBarButton];
  isHidden = [backBarButton isHidden];

  if ((isHidden & 1) == 0)
  {
    backBarButton2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backBarButton];
    v12[0] = backBarButton2;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [contentsCopy setViewsRepresentingBackButton:v11];
  }
}

- (void)stackDidChangeFrom:(id)from
{
  [(_UINavigationBarItemStack *)self->super._stack setChangeObserver:self];

  [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentAnimated:0 completion:0 direction:0];
}

- (void)setupTopNavigationItem
{
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentForTopItem:topItem backItem:backItem animated:0 direction:0];
}

- (void)updateTopNavigationItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy direction:0];
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
  v4.super_class = _UINavigationBarVisualProviderCarPlaySolarium;
  [(_UINavigationBarVisualProvider *)&v4 traitCollectionDidChange:change];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self _configureBackground];
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
  animatedCopy = animated;
  v278[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  backItemCopy = backItem;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  titleView = [itemCopy titleView];

  if (titleView)
  {
    titleView2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
    [titleView2 setHidden:0];

    titleView3 = [itemCopy titleView];
    titleView4 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
    [titleView4 setView:titleView3];

    leadingBarWithNoTitleTrailingConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarWithNoTitleTrailingConstraint];
    v278[0] = leadingBarWithNoTitleTrailingConstraint;
    trailingBarWithNoTitleLeadingConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)self trailingBarWithNoTitleLeadingConstraint];
    v278[1] = trailingBarWithNoTitleLeadingConstraint;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v278 count:2];
    [v10 addObjectsFromArray:v18];

    leadingBarWithTitleTrailingConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarWithTitleTrailingConstraint];
    v277[0] = leadingBarWithTitleTrailingConstraint;
    trailingBarWithTitleLeadingConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)self trailingBarWithTitleLeadingConstraint];
    v277[1] = trailingBarWithTitleLeadingConstraint;
    v21 = v277;
  }

  else
  {
    title = [itemCopy title];
    if (title && (v23 = title, [itemCopy title], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqualToString:", &stru_1EFB14550), v24, v23, (v25 & 1) == 0))
    {
      titleView5 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
      [titleView5 setHidden:0];

      title2 = [itemCopy title];
      titleView6 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
      [titleView6 setText:title2];

      leadingBarWithNoTitleTrailingConstraint2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarWithNoTitleTrailingConstraint];
      v276[0] = leadingBarWithNoTitleTrailingConstraint2;
      trailingBarWithNoTitleLeadingConstraint2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self trailingBarWithNoTitleLeadingConstraint];
      v276[1] = trailingBarWithNoTitleLeadingConstraint2;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v276 count:2];
      [v10 addObjectsFromArray:v35];

      leadingBarWithTitleTrailingConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarWithTitleTrailingConstraint];
      v275[0] = leadingBarWithTitleTrailingConstraint;
      trailingBarWithTitleLeadingConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)self trailingBarWithTitleLeadingConstraint];
      v275[1] = trailingBarWithTitleLeadingConstraint;
      v21 = v275;
    }

    else
    {
      titleView7 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
      [titleView7 setHidden:1];

      leadingBarWithTitleTrailingConstraint2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarWithTitleTrailingConstraint];
      v274[0] = leadingBarWithTitleTrailingConstraint2;
      trailingBarWithTitleLeadingConstraint2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self trailingBarWithTitleLeadingConstraint];
      v274[1] = trailingBarWithTitleLeadingConstraint2;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v274 count:2];
      [v10 addObjectsFromArray:v29];

      leadingBarWithTitleTrailingConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarWithNoTitleTrailingConstraint];
      v273[0] = leadingBarWithTitleTrailingConstraint;
      trailingBarWithTitleLeadingConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)self trailingBarWithNoTitleLeadingConstraint];
      v273[1] = trailingBarWithTitleLeadingConstraint;
      v21 = v273;
    }
  }

  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [v11 addObjectsFromArray:v36];

  v245 = backItemCopy;
  _effectiveBackBarButtonItem = [backItemCopy _effectiveBackBarButtonItem];
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

  backBarButton = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backBarButton];
  isHidden = [backBarButton isHidden];

  if ([v43 count])
  {
    v49 = v10;
  }

  else
  {
    v49 = v11;
  }

  leadingBarNoItemsConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarNoItemsConstraint];
  [v49 addObject:leadingBarNoItemsConstraint];

  v250 = allObjects;
  if ([allObjects count])
  {
    v51 = v10;
  }

  else
  {
    v51 = v11;
  }

  trailingBarNoItemsConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)self trailingBarNoItemsConstraint];
  [v51 addObject:trailingBarNoItemsConstraint];

  largeTitleDisplayMode = [itemCopy largeTitleDisplayMode];
  selfCopy = self;
  v241 = v43;
  v242 = _effectiveBackBarButtonItem;
  if (largeTitleDisplayMode == 1 || largeTitleDisplayMode != 2 && (_effectiveBackBarButtonItem == 0) | hidesBackButton & 1)
  {
    backBarButton2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backBarButton];
    [backBarButton2 setHidden:1];

    backButtonLeadingConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backButtonLeadingConstraint];
    v269[0] = backButtonLeadingConstraint;
    backButtonTrailingConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backButtonTrailingConstraint];
    v269[1] = backButtonTrailingConstraint;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v269 count:2];
    [v10 addObjectsFromArray:v57];

    leadingBarConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarConstraint];
    [v11 addObject:leadingBarConstraint];

    if ([v43 count])
    {
      regularTitleConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)self regularTitleConstraint];
      [v11 addObject:regularTitleConstraint];

      largeTitleLeadingConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)self largeTitleLeadingConstraint];
      [v10 addObject:largeTitleLeadingConstraint];

      largeTitleTrailingConstraint = [(_UINavigationBarVisualProviderCarPlaySolarium *)self largeTitleTrailingConstraint];
      [v10 addObject:largeTitleTrailingConstraint];

      titleView8 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
      [titleView8 setLargeText:0];
    }

    else
    {
      largeTitleLeadingConstraint2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self largeTitleLeadingConstraint];
      [v11 addObject:largeTitleLeadingConstraint2];

      regularTitleConstraint2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self regularTitleConstraint];
      [v10 addObject:regularTitleConstraint2];

      titleView9 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
      [titleView9 setLargeText:1];

      v87 = [allObjects count];
      titleView8 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self largeTitleTrailingConstraint];
      if (v87)
      {
        v88 = v10;
      }

      else
      {
        v88 = v11;
      }

      [v88 addObject:titleView8];
    }
  }

  else
  {
    backBarButton3 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backBarButton];
    [backBarButton3 setHidden:0];

    backBarButton4 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backBarButton];
    [backBarButton4 configureBackButtonFromBarItem:_effectiveBackBarButtonItem withAppearanceDelegate:self];

    largeTitleLeadingConstraint3 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self largeTitleLeadingConstraint];
    v272[0] = largeTitleLeadingConstraint3;
    largeTitleTrailingConstraint2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self largeTitleTrailingConstraint];
    v272[1] = largeTitleTrailingConstraint2;
    leadingBarConstraint2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarConstraint];
    v272[2] = leadingBarConstraint2;
    v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v272 count:3];
    [v10 addObjectsFromArray:v68];

    v69 = MEMORY[0x1E69977A0];
    backButtonTrailingConstraint2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backButtonTrailingConstraint];
    v271 = backButtonTrailingConstraint2;
    v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v271 count:1];
    [v69 deactivateConstraints:v71];

    v72 = [v43 count];
    backBarButton5 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backBarButton];
    trailingAnchor = [backBarButton5 trailingAnchor];
    v75 = v11;
    if (v72)
    {
      leadingBarView = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarView];
      v77 = -8.0;
    }

    else
    {
      leadingBarView = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
      v77 = -4.0;
    }

    leadingAnchor = [leadingBarView leadingAnchor];
    v79 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor constant:v77];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self setBackButtonTrailingConstraint:v79];

    backButtonLeadingConstraint2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backButtonLeadingConstraint];
    v270[0] = backButtonLeadingConstraint2;
    backButtonTrailingConstraint3 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backButtonTrailingConstraint];
    v270[1] = backButtonTrailingConstraint3;
    regularTitleConstraint3 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self regularTitleConstraint];
    v270[2] = regularTitleConstraint3;
    v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v270 count:3];
    v11 = v75;
    [v75 addObjectsFromArray:v83];

    titleView8 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
    [titleView8 setLargeText:0];
    _effectiveBackBarButtonItem = v242;
  }

  v244 = v10;
  [MEMORY[0x1E69977A0] deactivateConstraints:v10];
  v243 = v11;
  [MEMORY[0x1E69977A0] activateConstraints:v11];
  v89 = objc_opt_new();
  v90 = objc_opt_new();
  v260 = 0u;
  v261 = 0u;
  v262 = 0u;
  v263 = 0u;
  _topBarSections = [itemCopy _topBarSections];
  v92 = [_topBarSections countByEnumeratingWithState:&v260 objects:v268 count:16];
  if (v92)
  {
    v93 = v92;
    v94 = *v261;
    do
    {
      for (i = 0; i != v93; ++i)
      {
        if (*v261 != v94)
        {
          objc_enumerationMutation(_topBarSections);
        }

        v96 = *(*(&v260 + 1) + 8 * i);
        preferredPlacement = [v96 preferredPlacement];
        if (preferredPlacement == 3)
        {
          goto LABEL_39;
        }

        v98 = v89;
        if (preferredPlacement != 1)
        {
          if (preferredPlacement)
          {
            continue;
          }

LABEL_39:
          v98 = v90;
        }

        [v98 addObject:v96];
      }

      v93 = [_topBarSections countByEnumeratingWithState:&v260 objects:v268 count:16];
    }

    while (v93);
  }

  leadingBarView2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy leadingBarView];
  [leadingBarView2 setBarSections:v89 animated:animatedCopy];

  trailingBarView = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy trailingBarView];
  [trailingBarView setBarSections:v90 animated:animatedCopy];

  if (direction && animatedCopy)
  {
    v101 = [UIView alloc];
    v102 = [(UIView *)v101 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v102 setClipsToBounds:1];
    navigationBar = [(_UINavigationBarVisualProvider *)selfCopy navigationBar];
    v246 = v102;
    [navigationBar addSubview:v102];

    v104 = objc_alloc_init(UILayoutGuide);
    [(UILayoutGuide *)v104 setIdentifier:@"_UINBVPCarPlaySolarium-ClippingGuide"];
    navigationBar2 = [(_UINavigationBarVisualProvider *)selfCopy navigationBar];
    v249 = v104;
    [navigationBar2 addLayoutGuide:v104];

    if ([v43 count])
    {
      leadingBarView3 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy leadingBarView];
      trailingAnchor2 = [leadingBarView3 trailingAnchor];
    }

    else
    {
      leadingBarView3 = [(_UINavigationBarVisualProvider *)selfCopy navigationBar];
      layoutMarginsGuide = [leadingBarView3 layoutMarginsGuide];
      trailingAnchor2 = [layoutMarginsGuide leadingAnchor];
    }

    if ([v250 count])
    {
      trailingBarView2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy trailingBarView];
      leadingAnchor2 = [trailingBarView2 leadingAnchor];
    }

    else
    {
      trailingBarView2 = [(_UINavigationBarVisualProvider *)selfCopy navigationBar];
      layoutMarginsGuide2 = [trailingBarView2 layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    }

    v222 = itemCopy;

    leadingAnchor3 = [(UILayoutGuide *)v249 leadingAnchor];
    v221 = trailingAnchor2;
    v113 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor2 constant:0.0];

    v240 = v113;
    LODWORD(v114) = 1148846080;
    [v113 setPriority:v114];
    trailingAnchor3 = [(UILayoutGuide *)v249 trailingAnchor];
    v220 = leadingAnchor2;
    v116 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor2];

    v239 = v116;
    LODWORD(v117) = 1148846080;
    [v116 setPriority:v117];
    v118 = objc_alloc_init(MEMORY[0x1E695DF70]);
    titleView10 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy titleView];
    v120 = [titleView10 snapshotViewAfterScreenUpdates:0];

    v247 = v118;
    v219 = v120;
    if (v120)
    {
      [v120 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v246 addSubview:v120];
      centerXAnchor = [v120 centerXAnchor];
      titleView11 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy titleView];
      centerXAnchor2 = [titleView11 centerXAnchor];
      v124 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

      v238 = v124;
      v267[0] = v124;
      heightAnchor = [v120 heightAnchor];
      titleView12 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy titleView];
      [titleView12 frame];
      v225 = [heightAnchor constraintEqualToConstant:CGRectGetHeight(v279)];
      v267[1] = v225;
      widthAnchor = [v120 widthAnchor];
      titleView13 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy titleView];
      [titleView13 frame];
      v126 = [widthAnchor constraintEqualToConstant:CGRectGetWidth(v280)];
      v267[2] = v126;
      centerYAnchor = [v120 centerYAnchor];
      centerYAnchor2 = [(UIView *)v246 centerYAnchor];
      v129 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v267[3] = v129;
      v130 = [MEMORY[0x1E695DEC8] arrayWithObjects:v267 count:4];
      [v247 addObjectsFromArray:v130];
    }

    else
    {
      v238 = 0;
    }

    v266[0] = v240;
    v266[1] = v239;
    topAnchor = [(UILayoutGuide *)v249 topAnchor];
    navigationBar3 = [(_UINavigationBarVisualProvider *)selfCopy navigationBar];
    layoutMarginsGuide3 = [navigationBar3 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v132 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v266[2] = v132;
    bottomAnchor = [(UILayoutGuide *)v249 bottomAnchor];
    navigationBar4 = [(_UINavigationBarVisualProvider *)selfCopy navigationBar];
    layoutMarginsGuide4 = [navigationBar4 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v137 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v266[3] = v137;
    v138 = [MEMORY[0x1E695DEC8] arrayWithObjects:v266 count:4];
    [v247 addObjectsFromArray:v138];

    v139 = objc_alloc_init(UIView);
    v140 = v246;
    [(UIView *)v246 addSubview:v139];
    v227 = v139;
    if (isHidden)
    {
      v237 = 0;
      v224 = 0;
      v141 = selfCopy;
    }

    else
    {
      backBarButton6 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy backBarButton];
      visualProvider = [backBarButton6 visualProvider];
      contentView = [visualProvider contentView];
      v145 = [contentView snapshotViewAfterScreenUpdates:0];

      v141 = selfCopy;
      if (v145)
      {
        [v145 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIView *)v246 addSubview:v145];
        leadingAnchor4 = [v145 leadingAnchor];
        leadingAnchor5 = [(UIView *)v139 leadingAnchor];
        v148 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];

        heightAnchor2 = [v145 heightAnchor];
        backBarButton7 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy backBarButton];
        [backBarButton7 frame];
        v216 = [heightAnchor2 constraintEqualToConstant:CGRectGetHeight(v281)];
        v265[0] = v216;
        widthAnchor2 = [v145 widthAnchor];
        backBarButton8 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy backBarButton];
        [backBarButton8 frame];
        v151 = [widthAnchor2 constraintEqualToConstant:CGRectGetWidth(v282)];
        v265[1] = v151;
        v265[2] = v148;
        v237 = v148;
        v224 = v145;
        topAnchor3 = [v145 topAnchor];
        topAnchor4 = [(UIView *)v139 topAnchor];
        v154 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
        v265[3] = v154;
        v155 = [MEMORY[0x1E695DEC8] arrayWithObjects:v265 count:4];
        [v247 addObjectsFromArray:v155];

        v139 = v227;
        v141 = selfCopy;

        v140 = v246;
      }

      else
      {
        v237 = 0;
        v224 = 0;
      }
    }

    [MEMORY[0x1E69977A0] activateConstraints:v247];
    navigationBar5 = [(_UINavigationBarVisualProvider *)v141 navigationBar];
    [navigationBar5 layoutIfNeeded];

    [(UILayoutGuide *)v249 layoutFrame];
    [(UIView *)v140 setFrame:?];
    backBarButton9 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v141 backBarButton];
    [backBarButton9 frame];
    v159 = v158;
    v161 = v160;
    v163 = v162;
    v165 = v164;
    backBarButton10 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v141 backBarButton];
    [(UIView *)v140 convertRect:backBarButton10 fromView:v159, v161, v163, v165];
    [(UIView *)v139 setFrame:?];

    [(_UINavigationBarVisualProviderCarPlaySolarium *)v141 _installGradientLayerMaskForClippingView:v140];
    titleView14 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v141 titleView];
    v168 = [titleView14 snapshotViewAfterScreenUpdates:1];

    [v168 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v140 addSubview:v168];
    if (direction == 1)
    {
      leadingAnchor6 = [v168 leadingAnchor];
    }

    else
    {
      leadingAnchor6 = [v168 leadingAnchor];
      if (v139)
      {
        trailingAnchor4 = [(UIView *)v139 trailingAnchor];
        v171 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4 constant:8.0];
        goto LABEL_64;
      }
    }

    trailingAnchor4 = [(UIView *)v140 trailingAnchor];
    v171 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4];
LABEL_64:
    v172 = v171;

    v173 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v235 = v172;
    v264[0] = v172;
    heightAnchor3 = [v168 heightAnchor];
    titleView15 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v141 titleView];
    [titleView15 frame];
    v213 = [heightAnchor3 constraintEqualToConstant:CGRectGetHeight(v283)];
    v264[1] = v213;
    widthAnchor3 = [v168 widthAnchor];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)v141 titleView];
    v176 = v175 = v168;
    [v176 frame];
    v177 = [widthAnchor3 constraintEqualToConstant:CGRectGetWidth(v284)];
    v264[2] = v177;
    v231 = v175;
    centerYAnchor3 = [v175 centerYAnchor];
    centerYAnchor4 = [(UIView *)v140 centerYAnchor];
    v180 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v264[3] = v180;
    v181 = [MEMORY[0x1E695DEC8] arrayWithObjects:v264 count:4];
    [v173 addObjectsFromArray:v181];

    v182 = selfCopy;
    v218 = v173;
    [MEMORY[0x1E69977A0] activateConstraints:v173];
    navigationBar6 = [(_UINavigationBarVisualProvider *)selfCopy navigationBar];
    [navigationBar6 layoutIfNeeded];

    v184 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v185 = v184;
    if (v238)
    {
      [v184 addObject:?];
    }

    if (v235)
    {
      [v185 addObject:?];
    }

    v186 = v231;
    if (v237)
    {
      [v185 addObject:v237];
    }

    v215 = v185;
    [MEMORY[0x1E69977A0] deactivateConstraints:v185];
    v187 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v231)
    {
      centerXAnchor3 = [v231 centerXAnchor];
      titleView16 = [(_UINavigationBarVisualProviderCarPlaySolarium *)selfCopy titleView];
      centerXAnchor4 = [titleView16 centerXAnchor];
      v191 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      [v187 addObject:v191];

      v182 = selfCopy;
    }

    if (direction == 1)
    {
      if (v219)
      {
        backBarButton11 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v182 backBarButton];
        isHidden2 = [backBarButton11 isHidden];

        trailingAnchor5 = [v219 trailingAnchor];
        if (isHidden2)
        {
          navigationBar7 = [(_UINavigationBarVisualProvider *)v182 navigationBar];
          layoutMarginsGuide5 = [navigationBar7 layoutMarginsGuide];
          leadingAnchor7 = [layoutMarginsGuide5 leadingAnchor];
          v198 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor7];
          [v187 addObject:v198];

          v182 = selfCopy;
        }

        else
        {
          navigationBar7 = [(UIView *)v227 leadingAnchor];
          layoutMarginsGuide5 = [trailingAnchor5 constraintEqualToAnchor:navigationBar7];
          [v187 addObject:layoutMarginsGuide5];
        }

        v186 = v231;
      }

      v202 = v224;
      if (!v224)
      {
        goto LABEL_85;
      }

      trailingAnchor6 = [v224 trailingAnchor];
      leadingAnchor8 = [(UIView *)v246 leadingAnchor];
      v205 = [trailingAnchor6 constraintEqualToAnchor:leadingAnchor8];
    }

    else
    {
      if (v219)
      {
        leadingAnchor9 = [v219 leadingAnchor];
        trailingAnchor7 = [(UIView *)v246 trailingAnchor];
        v201 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor7];
        [v187 addObject:v201];

        v182 = selfCopy;
      }

      v202 = v224;
      if (!v224)
      {
        goto LABEL_85;
      }

      trailingAnchor6 = [v224 leadingAnchor];
      leadingAnchor8 = [(UIView *)v227 trailingAnchor];
      v205 = [trailingAnchor6 constraintEqualToAnchor:leadingAnchor8 constant:8.0];
    }

    v206 = v205;
    [v187 addObject:v205];

    v202 = v224;
    v186 = v231;
LABEL_85:
    [MEMORY[0x1E69977A0] activateConstraints:v187];
    [v186 setAlpha:0.0];
    contentView2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v182 contentView];
    [contentView2 setHidden:1];

    v256[0] = MEMORY[0x1E69E9820];
    v256[1] = 3221225472;
    v256[2] = __102___UINavigationBarVisualProviderCarPlaySolarium__updateContentForTopItem_backItem_animated_direction___block_invoke;
    v256[3] = &unk_1E70F6B40;
    v256[4] = v182;
    v257 = v219;
    v258 = v202;
    v259 = v186;
    v253[0] = MEMORY[0x1E69E9820];
    v253[1] = 3221225472;
    v253[2] = __102___UINavigationBarVisualProviderCarPlaySolarium__updateContentForTopItem_backItem_animated_direction___block_invoke_2;
    v253[3] = &unk_1E70F4638;
    v253[4] = v182;
    v254 = v249;
    v255 = v246;
    v208 = v246;
    v209 = v249;
    v210 = v186;
    v211 = v202;
    v212 = v219;
    [UIView animateWithDuration:0 delay:v256 options:v253 animations:0.35 completion:0.0];

    itemCopy = v222;
    v43 = v241;
    _effectiveBackBarButtonItem = v242;
  }
}

- (void)_updateContentAnimated:(BOOL)animated completion:(id)completion direction:(unint64_t)direction
{
  animatedCopy = animated;
  completionCopy = completion;
  if (![(_UINavigationBarVisualProviderCarPlaySolarium *)self havePrepared])
  {
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self prepare];
  }

  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy direction:direction];
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
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy direction:0];
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
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy direction:0];
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
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy direction:0];
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
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy direction:0];
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
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy direction:0];
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
  titleView = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
  traitCollection = [titleView traitCollection];
  v4 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleCallout" compatibleWithTraitCollection:traitCollection];

  return v4;
}

- (void)_configureBackground
{
  backgroundView = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backgroundView];
  v4 = +[UIColor clearColor];
  [backgroundView setBackgroundColor:v4];

  backgroundView2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backgroundView];
  [backgroundView2 setBackgroundEffects:MEMORY[0x1E695E0F0]];
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
  v19[0] = &unk_1EFE2F108;
  v14 = 6.0 / v13;
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:6.0 / v13];
  v19[1] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 - v14];
  v19[2] = v16;
  v19[3] = &unk_1EFE2F118;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [layer setLocations:v17];

  layer4 = [viewCopy layer];

  [layer4 setMask:layer];
}

@end