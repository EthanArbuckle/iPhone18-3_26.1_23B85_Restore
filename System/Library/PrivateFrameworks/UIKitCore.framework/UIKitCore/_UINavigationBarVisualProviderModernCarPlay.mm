@interface _UINavigationBarVisualProviderModernCarPlay
- (BOOL)navigationItemIsBackItem:(id)a3;
- (BOOL)navigationItemIsTopItem:(id)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UIBarButtonItemAppearanceStorage)appearanceStorage;
- (id)defaultFontDescriptor;
- (void)__backButtonAction;
- (void)_configureBackground;
- (void)_installGradientLayerMaskForClippingView:(id)a3;
- (void)_updateContentAnimated:(BOOL)a3 completion:(id)a4 direction:(unint64_t)a5;
- (void)_updateContentForTopItem:(id)a3 backItem:(id)a4 animated:(BOOL)a5 direction:(unint64_t)a6;
- (void)navigationBarInvalidatedResolvedLayoutMargins;
- (void)navigationItemUpdatedBackButtonContent:(id)a3 animated:(BOOL)a4;
- (void)navigationItemUpdatedContentLayout:(id)a3 animated:(BOOL)a4;
- (void)navigationItemUpdatedLeftBarButtonItems:(id)a3 animated:(BOOL)a4;
- (void)navigationItemUpdatedRightBarButtonItems:(id)a3 animated:(BOOL)a4;
- (void)navigationItemUpdatedTitleContent:(id)a3 animated:(BOOL)a4;
- (void)prepare;
- (void)provideViewsForContents:(id)a3 topItem:(id)a4 backItem:(id)a5;
- (void)setupTopNavigationItem;
- (void)stackDidChangeFrom:(id)a3;
- (void)teardown;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateTopNavigationItemAnimated:(BOOL)a3;
@end

@implementation _UINavigationBarVisualProviderModernCarPlay

- (void)_configureBackground
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = [(_UINavigationBarVisualProvider *)self navigationBar];
  v4 = [v3 barStyle];

  if (v4 == 4)
  {
    v5 = [(_UINavigationBarVisualProviderModernCarPlay *)self backgroundView];
    v6 = +[UIColor clearColor];
    [v5 setBackgroundColor:v6];

    v17 = [(_UINavigationBarVisualProviderModernCarPlay *)self backgroundView];
    [v17 setBackgroundEffects:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v7 = [(_UINavigationBarVisualProvider *)self navigationBar];
    v8 = [v7 traitCollection];
    v9 = dbl_18A67B790[[v8 accessibilityContrast] == 1];

    v10 = +[UIColor tableBackgroundColor];
    v11 = [v10 colorWithAlphaComponent:v9];
    v12 = [(_UINavigationBarVisualProviderModernCarPlay *)self backgroundView];
    [v12 setBackgroundColor:v11];

    v13 = [UIColorEffect colorEffectSaturate:1.5];
    v14 = [UIBlurEffect effectWithBlurRadius:10.0];
    v15 = [(_UINavigationBarVisualProviderModernCarPlay *)self backgroundView];
    v18[0] = v13;
    v18[1] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    [v15 setBackgroundEffects:v16];
  }
}

- (void)setupTopNavigationItem
{
  v4 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v3 = [(_UINavigationBarItemStack *)self->super._stack backItem];
  [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentForTopItem:v4 backItem:v3 animated:0 direction:0];
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

    v6 = [(_UINavigationBarVisualProviderModernCarPlay *)self contentView];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    navigationBar = self->super._navigationBar;
    v8 = [(_UINavigationBarVisualProviderModernCarPlay *)self contentView];
    [(UIView *)navigationBar addSubview:v8];

    v9 = [_UICarTitleView alloc];
    v10 = [(UIView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(_UINavigationBarVisualProviderModernCarPlay *)self setTitleView:v10];

    v11 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    LODWORD(v13) = 1144750080;
    [v12 setContentCompressionResistancePriority:0 forAxis:v13];

    v14 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    LODWORD(v15) = 1111752704;
    [v14 setContentHuggingPriority:0 forAxis:v15];

    v16 = [(_UINavigationBarVisualProviderModernCarPlay *)self contentView];
    v17 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    [v16 addSubview:v17];

    v18 = _newButtonBar(self);
    [(_UINavigationBarVisualProviderModernCarPlay *)self setLeadingBar:v18];

    v19 = self->super._navigationBar;
    v20 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBar];
    v21 = [v20 view];
    [(UIView *)v19 addSubview:v21];

    v22 = _newButtonBar(self);
    [(_UINavigationBarVisualProviderModernCarPlay *)self setTrailingBar:v22];

    v23 = self->super._navigationBar;
    v24 = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBar];
    v25 = [v24 view];
    [(UIView *)v23 addSubview:v25];

    v26 = self;
    v27 = [_UIButtonBarButton alloc];
    v28 = objc_alloc_init(_UIButtonBarButtonVisualProviderCarPlay);
    v29 = [(_UIButtonBarButton *)v27 initWithVisualProvider:v28];

    [(UIView *)v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v30) = 1144586240;
    [(UIView *)v29 setContentCompressionResistancePriority:0 forAxis:v30];
    [(UIControl *)v29 addTarget:v26 action:sel___backButtonAction forControlEvents:0x2000];

    [(_UINavigationBarVisualProviderModernCarPlay *)v26 setBackBarButton:v29];
    v31 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 contentView];
    v32 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 backBarButton];
    [v31 addSubview:v32];

    [(UIView *)self->super._navigationBar _setWantsAutolayout];
    if ([(UIView *)self->super._navigationBar translatesAutoresizingMaskIntoConstraints])
    {
      [(UIView *)self->super._navigationBar _setHostsLayoutEngine:1];
    }

    v33 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 leadingBar];
    v34 = [v33 view];
    v35 = [v34 leadingAnchor];
    v36 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v37 = [v36 leadingAnchor];
    v38 = [v35 constraintEqualToAnchor:v37 constant:12.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)v26 setLeadingBarConstraint:v38];

    v39 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 leadingBar];
    v40 = [v39 view];
    v41 = [v40 widthAnchor];
    v42 = [v41 constraintEqualToConstant:0.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)v26 setLeadingBarNoItemsConstraint:v42];

    v43 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 trailingBar];
    v44 = [v43 view];
    v45 = [v44 widthAnchor];
    v46 = [v45 constraintEqualToConstant:0.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)v26 setTrailingBarNoItemsConstraint:v46];

    v215 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 backBarButton];
    v211 = [v215 leadingAnchor];
    v213 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v209 = [v213 leadingAnchor];
    v47 = [v211 constraintEqualToAnchor:v209];
    v220[0] = v47;
    v48 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 backBarButton];
    v49 = [v48 trailingAnchor];
    v50 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 leadingBar];
    v51 = [v50 view];
    v52 = [v51 leadingAnchor];
    v53 = [v49 constraintEqualToAnchor:v52];
    v220[1] = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v220 count:2];
    [(_UINavigationBarVisualProviderModernCarPlay *)v26 setBackButtonConstraints:v54];

    v55 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 titleView];
    v56 = [v55 leadingAnchor];
    v57 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v58 = [v57 leadingAnchor];
    v59 = [v56 constraintEqualToAnchor:v58 constant:12.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)v26 setLargeTitleLeadingConstraint:v59];

    v60 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 titleView];
    v61 = [v60 trailingAnchor];
    v62 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v63 = [v62 trailingAnchor];
    v64 = [v61 constraintEqualToAnchor:v63 constant:-12.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)v26 setLargeTitleTrailingConstraint:v64];

    v65 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 titleView];
    v66 = [v65 centerXAnchor];
    v67 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v68 = [v67 centerXAnchor];
    v69 = [v66 constraintEqualToAnchor:v68];
    [(_UINavigationBarVisualProviderModernCarPlay *)v26 setRegularTitleConstraint:v69];

    v70 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 leadingBar];
    v71 = [v70 view];
    v72 = [v71 trailingAnchor];
    v73 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 titleView];
    v74 = [v73 leadingAnchor];
    v75 = [v72 constraintLessThanOrEqualToAnchor:v74 constant:-12.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)v26 setLeadingBarWithTitleTrailingConstraint:v75];

    v76 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 leadingBar];
    v77 = [v76 view];
    v78 = [v77 trailingAnchor];
    v79 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 trailingBar];
    v80 = [v79 view];
    v81 = [v80 leadingAnchor];
    v82 = [v78 constraintLessThanOrEqualToAnchor:v81 constant:-12.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)v26 setLeadingBarWithNoTitleTrailingConstraint:v82];

    v83 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 trailingBar];
    v84 = [v83 view];
    v85 = [v84 leadingAnchor];
    v86 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 titleView];
    v87 = [v86 trailingAnchor];
    v88 = [v85 constraintGreaterThanOrEqualToAnchor:v87 constant:12.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)v26 setTrailingBarWithTitleLeadingConstraint:v88];

    v89 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 trailingBar];
    v90 = [v89 view];
    v91 = [v90 leadingAnchor];
    v92 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 leadingBar];
    v93 = [v92 view];
    v94 = [v93 trailingAnchor];
    v95 = [v91 constraintGreaterThanOrEqualToAnchor:v94 constant:12.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)v26 setTrailingBarWithNoTitleLeadingConstraint:v95];

    v96 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 trailingBar];
    v97 = [v96 view];
    v98 = [v97 trailingAnchor];
    v99 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v100 = [v99 trailingAnchor];
    v101 = [v98 constraintEqualToAnchor:v100 constant:-12.0];
    [(_UINavigationBarVisualProviderModernCarPlay *)v26 setTrailingBarConstraint:v101];

    v102 = objc_alloc_init(UIFocusContainerGuide);
    focusContainerGuide = v26->_focusContainerGuide;
    v26->_focusContainerGuide = v102;

    v104 = self->super._navigationBar;
    v105 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 focusContainerGuide];
    [(UIView *)v104 addLayoutGuide:v105];

    v168 = MEMORY[0x1E69977A0];
    v216 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 contentView];
    v212 = [v216 topAnchor];
    v214 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v210 = [v214 topAnchor];
    v208 = [v212 constraintEqualToAnchor:v210];
    v219[0] = v208;
    v207 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 contentView];
    v205 = [v207 bottomAnchor];
    v206 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v204 = [v206 bottomAnchor];
    v203 = [v205 constraintEqualToAnchor:v204];
    v219[1] = v203;
    v202 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 contentView];
    v200 = [v202 leftAnchor];
    v201 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v199 = [v201 leftAnchor];
    v198 = [v200 constraintEqualToAnchor:v199];
    v219[2] = v198;
    v197 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 contentView];
    v195 = [v197 rightAnchor];
    v196 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v194 = [v196 rightAnchor];
    v193 = [v195 constraintEqualToAnchor:v194];
    v219[3] = v193;
    v192 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 backBarButton];
    v190 = [v192 topAnchor];
    v191 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 contentView];
    v189 = [v191 topAnchor];
    v188 = [v190 constraintEqualToAnchor:v189];
    v219[4] = v188;
    v187 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 backBarButton];
    v185 = [v187 bottomAnchor];
    v186 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 contentView];
    v184 = [v186 bottomAnchor];
    v183 = [v185 constraintEqualToAnchor:v184];
    v219[5] = v183;
    v182 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 leadingBarConstraint];
    v219[6] = v182;
    v181 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 leadingBar];
    v180 = [v181 view];
    v178 = [v180 topAnchor];
    v179 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v177 = [v179 topAnchor];
    v176 = [v178 constraintEqualToAnchor:v177];
    v219[7] = v176;
    v175 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 leadingBar];
    v174 = [v175 view];
    v172 = [v174 bottomAnchor];
    v173 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v171 = [v173 bottomAnchor];
    v170 = [v172 constraintEqualToAnchor:v171];
    v219[8] = v170;
    v169 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 leadingBarWithTitleTrailingConstraint];
    v219[9] = v169;
    v167 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 titleView];
    v165 = [v167 centerYAnchor];
    v166 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 contentView];
    v164 = [v166 centerYAnchor];
    v163 = [v165 constraintEqualToAnchor:v164];
    v219[10] = v163;
    v162 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 titleView];
    v160 = [v162 heightAnchor];
    v161 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 contentView];
    v159 = [v161 heightAnchor];
    v158 = [v160 constraintEqualToAnchor:v159];
    v219[11] = v158;
    v157 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 regularTitleConstraint];
    v219[12] = v157;
    v156 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 trailingBarWithTitleLeadingConstraint];
    v219[13] = v156;
    v155 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 trailingBarConstraint];
    v219[14] = v155;
    v154 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 trailingBar];
    v153 = [v154 view];
    v151 = [v153 topAnchor];
    v152 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v150 = [v152 topAnchor];
    v149 = [v151 constraintEqualToAnchor:v150];
    v219[15] = v149;
    v148 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 trailingBar];
    v147 = [v148 view];
    v145 = [v147 bottomAnchor];
    v146 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v144 = [v146 bottomAnchor];
    v143 = [v145 constraintEqualToAnchor:v144];
    v219[16] = v143;
    v142 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 backgroundView];
    v141 = [v142 topAnchor];
    v140 = [(UIView *)self->super._navigationBar topAnchor];
    v139 = [v141 constraintEqualToAnchor:v140];
    v219[17] = v139;
    v138 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 backgroundView];
    v137 = [v138 bottomAnchor];
    v136 = [(UIView *)self->super._navigationBar bottomAnchor];
    v135 = [v137 constraintEqualToAnchor:v136];
    v219[18] = v135;
    v134 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 backgroundView];
    v133 = [v134 leftAnchor];
    v132 = [(UIView *)self->super._navigationBar leftAnchor];
    v131 = [v133 constraintEqualToAnchor:v132];
    v219[19] = v131;
    v130 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 backgroundView];
    v129 = [v130 rightAnchor];
    v128 = [(UIView *)self->super._navigationBar rightAnchor];
    v127 = [v129 constraintEqualToAnchor:v128];
    v219[20] = v127;
    v126 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 focusContainerGuide];
    v124 = [v126 leadingAnchor];
    v125 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v123 = [v125 leadingAnchor];
    v122 = [v124 constraintEqualToAnchor:v123];
    v219[21] = v122;
    v121 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 focusContainerGuide];
    v119 = [v121 trailingAnchor];
    v120 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v118 = [v120 trailingAnchor];
    v117 = [v119 constraintEqualToAnchor:v118];
    v219[22] = v117;
    v116 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 focusContainerGuide];
    v106 = [v116 topAnchor];
    v107 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v108 = [v107 topAnchor];
    v109 = [v106 constraintEqualToAnchor:v108];
    v219[23] = v109;
    v110 = [(_UINavigationBarVisualProviderModernCarPlay *)v26 focusContainerGuide];
    v111 = [v110 bottomAnchor];
    v112 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v113 = [v112 bottomAnchor];
    v114 = [v111 constraintEqualToAnchor:v113];
    v219[24] = v114;
    v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:v219 count:25];
    [v168 activateConstraints:v115];
  }
}

- (void)teardown
{
  v3 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
  [v3 removeFromSuperview];

  [(_UINavigationBarVisualProviderModernCarPlay *)self setTitleView:0];
  v4 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBar];
  v5 = [v4 view];
  [v5 removeFromSuperview];

  [(_UINavigationBarVisualProviderModernCarPlay *)self setLeadingBar:0];
  v6 = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBar];
  v7 = [v6 view];
  [v7 removeFromSuperview];

  [(_UINavigationBarVisualProviderModernCarPlay *)self setTrailingBar:0];
  v8 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
  [v8 removeFromSuperview];

  [(_UINavigationBarVisualProviderModernCarPlay *)self setBackBarButton:0];
  v9 = [(_UINavigationBarVisualProviderModernCarPlay *)self backgroundView];
  [v9 removeFromSuperview];

  [(_UINavigationBarVisualProviderModernCarPlay *)self setBackgroundView:0];
  v10 = [(_UINavigationBarVisualProviderModernCarPlay *)self contentView];
  [v10 removeFromSuperview];

  [(_UINavigationBarVisualProviderModernCarPlay *)self setContentView:0];
  v11 = [(_UINavigationBarVisualProviderModernCarPlay *)self debugViews];
  [v11 enumerateObjectsUsingBlock:&__block_literal_global_240];

  [(_UINavigationBarVisualProviderModernCarPlay *)self setDebugViews:0];
  navigationBar = self->super._navigationBar;
  v13 = [(_UINavigationBarVisualProviderModernCarPlay *)self focusContainerGuide];
  [(UIView *)navigationBar removeLayoutGuide:v13];

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

- (void)provideViewsForContents:(id)a3 topItem:(id)a4 backItem:(id)a5
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
  [v6 setTitleView:v7];

  v8 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
  v9 = [v8 isHidden];

  if ((v9 & 1) == 0)
  {
    v10 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    v12[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v6 setViewsRepresentingBackButton:v11];
  }
}

- (void)stackDidChangeFrom:(id)a3
{
  [(_UINavigationBarItemStack *)self->super._stack setChangeObserver:self];

  [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentAnimated:0 completion:0 direction:0];
}

- (void)updateTopNavigationItemAnimated:(BOOL)a3
{
  v5 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v4 = [(_UINavigationBarItemStack *)self->super._stack backItem];
  [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentForTopItem:v5 backItem:v4 animated:0 direction:0];
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

  v7 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarConstraint];
  [v7 setConstant:v6];

  if (v5 == 0.0)
  {
    v8 = -12.0;
  }

  else
  {
    v8 = -v5;
  }

  v9 = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBarConstraint];
  [v9 setConstant:v8];
}

- (CGSize)intrinsicContentSize
{
  v2 = 44.0;
  v3 = -1.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  if (a3.width == 0.0)
  {
    v4 = [(UIView *)self->super._navigationBar superview];
    v5 = v4;
    if (v4)
    {
      [v4 bounds];
      width = v6;
    }
  }

  v7 = 44.0;
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UINavigationBarVisualProviderModernCarPlay;
  [(_UINavigationBarVisualProvider *)&v4 traitCollectionDidChange:a3];
  [(_UINavigationBarVisualProviderModernCarPlay *)self _configureBackground];
}

- (void)__backButtonAction
{
  navigationBar = self->super._navigationBar;
  v4 = [(_UINavigationBarItemStack *)self->super._stack backItem];
  v3 = [v4 _effectiveBackBarButtonItem];
  [(UINavigationBar *)navigationBar _sendNavigationPopForBackBarButtonItem:v3];
}

- (void)_updateContentForTopItem:(id)a3 backItem:(id)a4 animated:(BOOL)a5 direction:(unint64_t)a6
{
  v307[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = [v8 titleView];

  if (v12)
  {
    v13 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    [v13 setHidden:0];

    v14 = [v8 titleView];
    v15 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    [v15 setView:v14];

    v16 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarWithNoTitleTrailingConstraint];
    v307[0] = v16;
    v17 = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBarWithNoTitleLeadingConstraint];
    v307[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v307 count:2];
    [v10 addObjectsFromArray:v18];

    v19 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarWithTitleTrailingConstraint];
    v306[0] = v19;
    v20 = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBarWithTitleLeadingConstraint];
    v306[1] = v20;
    v21 = v306;
  }

  else
  {
    v22 = [v8 title];
    if (v22 && (v23 = v22, [v8 title], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqualToString:", &stru_1EFB14550), v24, v23, (v25 & 1) == 0))
    {
      v30 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
      [v30 setHidden:0];

      v31 = [v8 title];
      v32 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
      [v32 setText:v31];

      v33 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarWithNoTitleTrailingConstraint];
      v305[0] = v33;
      v34 = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBarWithNoTitleLeadingConstraint];
      v305[1] = v34;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v305 count:2];
      [v10 addObjectsFromArray:v35];

      v19 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarWithTitleTrailingConstraint];
      v304[0] = v19;
      v20 = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBarWithTitleLeadingConstraint];
      v304[1] = v20;
      v21 = v304;
    }

    else
    {
      v26 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
      [v26 setHidden:1];

      v27 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarWithTitleTrailingConstraint];
      v303[0] = v27;
      v28 = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBarWithTitleLeadingConstraint];
      v303[1] = v28;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v303 count:2];
      [v10 addObjectsFromArray:v29];

      v19 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarWithNoTitleTrailingConstraint];
      v302[0] = v19;
      v20 = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBarWithNoTitleLeadingConstraint];
      v302[1] = v20;
      v21 = v302;
    }
  }

  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [v11 addObjectsFromArray:v36];

  v37 = [v9 _effectiveBackBarButtonItem];
  v270 = v9;

  v38 = [v8 hidesBackButton];
  [v8 leftItemsSupplementBackButton];
  v39 = [v8 leftBarButtonItems];
  v40 = v39;
  v41 = MEMORY[0x1E695E0F0];
  if (v39)
  {
    v42 = v39;
  }

  else
  {
    v42 = MEMORY[0x1E695E0F0];
  }

  v43 = v42;

  v44 = [v8 rightBarButtonItems];
  v45 = v44;
  if (!v44)
  {
    v44 = v41;
  }

  v46 = [v44 reverseObjectEnumerator];
  v47 = [v46 allObjects];

  v48 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
  v275 = [v48 isHidden];

  v281 = v43;
  if ([v43 count])
  {
    v49 = v10;
  }

  else
  {
    v49 = v11;
  }

  v50 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarNoItemsConstraint];
  [v49 addObject:v50];

  if ([v47 count])
  {
    v51 = v10;
  }

  else
  {
    v51 = v11;
  }

  v52 = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBarNoItemsConstraint];
  [v51 addObject:v52];

  v53 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
  v54 = v53;
  v279 = v37;
  if (!v37 || (v38 & 1) != 0)
  {
    [v53 setHidden:1];

    v63 = [(_UINavigationBarVisualProviderModernCarPlay *)self backButtonConstraints];
    [v10 addObjectsFromArray:v63];

    v64 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarConstraint];
    [v11 addObject:v64];

    v62 = v43;
    if ([v43 count])
    {
      v65 = [(_UINavigationBarVisualProviderModernCarPlay *)self regularTitleConstraint];
      [v11 addObject:v65];

      v66 = [(_UINavigationBarVisualProviderModernCarPlay *)self largeTitleLeadingConstraint];
      [v10 addObject:v66];

      v67 = [(_UINavigationBarVisualProviderModernCarPlay *)self largeTitleTrailingConstraint];
      [v10 addObject:v67];

      v61 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
      [v61 setLargeText:0];
    }

    else
    {
      v68 = [(_UINavigationBarVisualProviderModernCarPlay *)self largeTitleLeadingConstraint];
      [v11 addObject:v68];

      v69 = [(_UINavigationBarVisualProviderModernCarPlay *)self regularTitleConstraint];
      [v10 addObject:v69];

      v70 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
      [v70 setLargeText:1];

      v71 = [v47 count];
      v61 = [(_UINavigationBarVisualProviderModernCarPlay *)self largeTitleTrailingConstraint];
      if (v71)
      {
        v72 = v10;
      }

      else
      {
        v72 = v11;
      }

      [v72 addObject:v61];
    }
  }

  else
  {
    [v53 setHidden:0];

    v55 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    [v55 configureBackButtonFromBarItem:v37 withAppearanceDelegate:self];

    v56 = [(_UINavigationBarVisualProviderModernCarPlay *)self backButtonConstraints];
    [v11 addObjectsFromArray:v56];

    v57 = [(_UINavigationBarVisualProviderModernCarPlay *)self regularTitleConstraint];
    [v11 addObject:v57];

    v58 = [(_UINavigationBarVisualProviderModernCarPlay *)self largeTitleLeadingConstraint];
    [v10 addObject:v58];

    v59 = [(_UINavigationBarVisualProviderModernCarPlay *)self largeTitleTrailingConstraint];
    [v10 addObject:v59];

    v60 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBarConstraint];
    [v10 addObject:v60];

    v61 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    [v61 setLargeText:0];
    v62 = v43;
  }

  [MEMORY[0x1E69977A0] deactivateConstraints:v10];
  [MEMORY[0x1E69977A0] activateConstraints:v11];
  v73 = [[UIBarButtonItemGroup alloc] initWithBarButtonItems:v62 representativeItem:0];
  v74 = [[UIBarButtonItemGroup alloc] initWithBarButtonItems:v47 representativeItem:0];
  v75 = v74;
  v278 = v73;
  if (!a5)
  {
    v301 = v73;
    v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v301 count:1];
    v91 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBar];
    [v91 setBarButtonGroups:v90];

    v300 = v75;
    v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v300 count:1];
    v93 = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBar];
    [v93 setBarButtonGroups:v92];
LABEL_87:

    goto LABEL_88;
  }

  v272 = v74;
  v76 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBar];
  v77 = [v76 view];
  v293[0] = MEMORY[0x1E69E9820];
  v293[1] = 3221225472;
  v277 = v47;
  v293[2] = __100___UINavigationBarVisualProviderModernCarPlay__updateContentForTopItem_backItem_animated_direction___block_invoke;
  v293[3] = &unk_1E70F35B8;
  v293[4] = self;
  v294 = v73;
  v75 = v272;
  [UIView transitionWithView:v77 duration:5242880 options:v293 animations:&__block_literal_global_19 completion:0.35];

  v62 = v281;
  v78 = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBar];
  v79 = [v78 view];
  v291[0] = MEMORY[0x1E69E9820];
  v291[1] = 3221225472;
  v291[2] = __100___UINavigationBarVisualProviderModernCarPlay__updateContentForTopItem_backItem_animated_direction___block_invoke_3;
  v291[3] = &unk_1E70F35B8;
  v291[4] = self;
  v292 = v272;
  [UIView transitionWithView:v79 duration:5242880 options:v291 animations:&__block_literal_global_21_2 completion:0.35];

  if (a6)
  {
    v80 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    v81 = [v80 visualProvider];
    v82 = [v81 contentView];

    v83 = [UIView alloc];
    v84 = [(UIView *)v83 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v84 setClipsToBounds:1];
    v85 = [(_UINavigationBarVisualProvider *)self navigationBar];
    v273 = v84;
    [v85 addSubview:v84];

    v86 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    LODWORD(v84) = [v86 isHidden];

    v269 = v82;
    v251 = v11;
    if (v84)
    {
      v87 = [(_UINavigationBarVisualProviderModernCarPlay *)self leadingBar];
      v88 = [v87 view];
      v89 = [v88 trailingAnchor];
    }

    else
    {
      v89 = [v82 leadingAnchor];
    }

    v94 = objc_alloc_init(UILayoutGuide);
    v95 = [(_UINavigationBarVisualProvider *)self navigationBar];
    [v95 addLayoutGuide:v94];

    v96 = [(UILayoutGuide *)v94 trailingAnchor];
    v97 = [(_UINavigationBarVisualProviderModernCarPlay *)self trailingBar];
    v98 = [v97 view];
    v99 = [v98 leadingAnchor];
    v100 = [v96 constraintEqualToAnchor:v99];

    v258 = v100;
    LODWORD(v101) = 1148846080;
    [v100 setPriority:v101];
    v268 = v94;
    v102 = [(UILayoutGuide *)v94 leadingAnchor];
    v250 = v89;
    v103 = [v102 constraintEqualToAnchor:v89];

    LODWORD(v104) = 1148846080;
    [v103 setPriority:v104];
    v105 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    LOBYTE(v97) = [v105 isHidden];

    if ((v97 & 1) == 0)
    {
      [v103 setConstant:-4.0];
    }

    v252 = v10;
    v253 = v8;
    v274 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v106 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    v107 = [v106 snapshotViewAfterScreenUpdates:0];

    v254 = v107;
    if (v107)
    {
      [(UIView *)v107 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v273 addSubview:v107];
      v108 = [(UIView *)v107 centerXAnchor];
      v109 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
      v110 = [v109 centerXAnchor];
      v111 = [v108 constraintEqualToAnchor:v110];

      v263 = v111;
      v299[0] = v111;
      v264 = [(UIView *)v107 heightAnchor];
      v266 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
      [v266 frame];
      v113 = [v264 constraintEqualToConstant:v112];
      v299[1] = v113;
      v114 = [(UIView *)v107 widthAnchor];
      v115 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
      [v115 frame];
      v117 = [v114 constraintEqualToConstant:v116];
      v299[2] = v117;
      v118 = [(UIView *)v107 centerYAnchor];
      v119 = [(UIView *)v273 centerYAnchor];
      [v118 constraintEqualToAnchor:v119];
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
    v123 = [(UILayoutGuide *)v268 topAnchor];
    v124 = [(_UINavigationBarVisualProvider *)self navigationBar];
    v125 = [v124 topAnchor];
    v126 = [v123 constraintEqualToAnchor:v125];
    v298[2] = v126;
    v127 = [(UILayoutGuide *)v268 bottomAnchor];
    v128 = [(_UINavigationBarVisualProvider *)self navigationBar];
    v129 = [v128 bottomAnchor];
    v130 = [v127 constraintEqualToAnchor:v129];
    v298[3] = v130;
    v131 = [MEMORY[0x1E695DEC8] arrayWithObjects:v298 count:4];
    [v274 addObjectsFromArray:v131];

    v132 = objc_alloc_init(UIView);
    v133 = v273;
    [(UIView *)v273 addSubview:v132];
    v265 = v132;
    if (v275)
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
      v136 = [v135 leadingAnchor];
      v137 = [(UIView *)v132 leadingAnchor];
      v138 = [v136 constraintEqualToAnchor:v137];

      v139 = [v135 heightAnchor];
      [v269 frame];
      v141 = [v139 constraintEqualToConstant:v140];
      v297[0] = v141;
      v142 = [v135 widthAnchor];
      [v269 frame];
      v144 = [v142 constraintEqualToConstant:v143];
      v297[1] = v144;
      v262 = v138;
      v297[2] = v138;
      v267 = v135;
      v145 = [v135 topAnchor];
      v146 = [(UIView *)v132 topAnchor];
      v147 = [v145 constraintEqualToAnchor:v146];
      v297[3] = v147;
      v148 = [MEMORY[0x1E695DEC8] arrayWithObjects:v297 count:4];
      [v274 addObjectsFromArray:v148];

      v133 = v273;
      v132 = v265;
    }

    [MEMORY[0x1E69977A0] activateConstraints:v274];
    v149 = [(_UINavigationBarVisualProvider *)self navigationBar];
    [v149 layoutIfNeeded];

    [(UILayoutGuide *)v268 layoutFrame];
    [(UIView *)v133 setFrame:?];
    [v134 frame];
    v151 = v150;
    v153 = v152;
    v155 = v154;
    v157 = v156;
    v158 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    [(UIView *)v133 convertRect:v158 fromView:v151, v153, v155, v157];
    [(UIView *)v132 setFrame:?];

    [(_UINavigationBarVisualProviderModernCarPlay *)self _installGradientLayerMaskForClippingView:v133];
    v159 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    v160 = [v159 snapshotViewAfterScreenUpdates:1];

    [v160 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v133 addSubview:v160];
    if (a6 == 1)
    {
      v161 = [v160 leadingAnchor];
    }

    else
    {
      v161 = [v160 leadingAnchor];
      if (v132)
      {
        v162 = [(UIView *)v132 leadingAnchor];
        goto LABEL_46;
      }
    }

    v162 = [(UIView *)v133 trailingAnchor];
LABEL_46:
    v163 = v162;
    v164 = [v161 constraintEqualToAnchor:v162];

    v165 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v257 = v164;
    v296[0] = v164;
    v247 = [v160 heightAnchor];
    v259 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    [v259 frame];
    v167 = [v247 constraintEqualToConstant:v166];
    v296[1] = v167;
    v168 = [v160 widthAnchor];
    v169 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
    [v169 frame];
    v171 = [v168 constraintEqualToConstant:v170];
    v296[2] = v171;
    v256 = v160;
    v172 = [v160 centerYAnchor];
    v173 = [(UIView *)v133 centerYAnchor];
    v174 = [v172 constraintEqualToAnchor:v173];
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

    v176 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    v177 = [v176 isHidden];

    v178 = 0x1E6997000;
    v180 = v262;
    v179 = v263;
    v181 = v254;
    if (v177)
    {
      v182 = 0;
      v271 = 0;
      v248 = 0;
LABEL_50:
      v183 = v257;
      v184 = v255;
      goto LABEL_59;
    }

    v185 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    v186 = [v185 visualProvider];
    v187 = [v186 backIndicatorView];

    v188 = [v187 snapshotViewAfterScreenUpdates:1];
    v189 = [(_UINavigationBarVisualProvider *)self navigationBar];
    [v189 addSubview:v188];

    v190 = [(_UINavigationBarVisualProvider *)self navigationBar];
    v246 = v187;
    [v187 frame];
    v192 = v191;
    v194 = v193;
    v196 = v195;
    v198 = v197;
    v199 = [(_UINavigationBarVisualProviderModernCarPlay *)self backBarButton];
    [v190 convertRect:v199 fromView:{v192, v194, v196, v198}];
    [v188 setFrame:?];

    v200 = [v269 snapshotViewAfterScreenUpdates:1];
    [v200 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v273 addSubview:v200];
    v183 = v257;
    v248 = v188;
    if (a6 == 1)
    {
      v201 = v265;
      if (!v254)
      {
        goto LABEL_57;
      }

      v202 = [v200 leadingAnchor];
      v203 = v254;
    }

    else
    {
      v202 = [v200 trailingAnchor];
      v201 = v265;
      v203 = v265;
    }

    v204 = [(UIView *)v203 leadingAnchor];
    v205 = [v202 constraintEqualToAnchor:v204];

    if (v205)
    {
      v206 = v255;
      v260 = v205;
      [v255 addObject:v205];
LABEL_58:
      v245 = [v200 heightAnchor];
      [v269 frame];
      v208 = [v245 constraintEqualToConstant:v207];
      v295[0] = v208;
      v209 = [v200 widthAnchor];
      [v269 frame];
      v211 = [v209 constraintEqualToConstant:v210];
      v295[1] = v211;
      v271 = v200;
      v212 = [v200 topAnchor];
      v213 = [(UIView *)v201 topAnchor];
      v214 = [v212 constraintEqualToAnchor:v213];
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
      v216 = [(_UINavigationBarVisualProvider *)self navigationBar];
      [v216 layoutIfNeeded];

      v217 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v218 = v217;
      v47 = v277;
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
        v220 = [v256 centerXAnchor];
        v221 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
        v222 = [v221 centerXAnchor];
        v223 = [v220 constraintEqualToAnchor:v222];
        [v219 addObject:v223];

        v47 = v277;
      }

      if (a6 == 2)
      {
        if (v267)
        {
          v224 = [v267 leadingAnchor];
          v225 = [v256 leadingAnchor];
          v226 = [v224 constraintEqualToAnchor:v225];
          [v219 addObject:v226];

          v47 = v277;
        }

        if (v181)
        {
          v227 = [(UIView *)v181 leadingAnchor];
          v228 = [(UIView *)v273 trailingAnchor];
          v229 = [v227 constraintEqualToAnchor:v228];
          [v219 addObject:v229];

          v47 = v277;
        }

        if (!v271)
        {
          goto LABEL_84;
        }

        v230 = [v271 leadingAnchor];
        v231 = [(UIView *)v265 leadingAnchor];
        v232 = [v230 constraintEqualToAnchor:v231 constant:0.0];
      }

      else
      {
        if (v261)
        {
          [v219 addObject:?];
        }

        if (v181 && v269)
        {
          v233 = [(UIView *)v181 leadingAnchor];
          v234 = [(UIView *)v265 leadingAnchor];
          v235 = [v233 constraintEqualToAnchor:v234];
          [v219 addObject:v235];

          v47 = v277;
        }

        if (!v267)
        {
          goto LABEL_84;
        }

        v230 = [v267 trailingAnchor];
        v231 = [(UIView *)v273 leadingAnchor];
        v232 = [v230 constraintEqualToAnchor:v231];
      }

      v236 = v232;
      [v219 addObject:v232];

LABEL_84:
      [*(v178 + 1952) activateConstraints:v219];
      [v256 setAlpha:0.0];
      [v271 setAlpha:0.0];
      if (v275)
      {
        [v248 setAlpha:0.0];
      }

      v237 = [(_UINavigationBarVisualProviderModernCarPlay *)self contentView];
      [v237 setHidden:1];

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
      v8 = v253;
      v93 = v250;
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

- (void)_updateContentAnimated:(BOOL)a3 completion:(id)a4 direction:(unint64_t)a5
{
  v6 = a3;
  v11 = a4;
  if (![(_UINavigationBarVisualProviderModernCarPlay *)self havePrepared])
  {
    [(_UINavigationBarVisualProviderModernCarPlay *)self prepare];
  }

  v8 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v9 = [(_UINavigationBarItemStack *)self->super._stack backItem];
  [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentForTopItem:v8 backItem:v9 animated:v6 direction:a5];
  if (v11)
  {
    v10 = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
    v11[2](v11, v6, v10);
  }
}

- (BOOL)navigationItemIsTopItem:(id)a3
{
  stack = self->super._stack;
  v4 = a3;
  v5 = [(_UINavigationBarItemStack *)stack topItem];

  return v5 == v4;
}

- (BOOL)navigationItemIsBackItem:(id)a3
{
  stack = self->super._stack;
  v4 = a3;
  v5 = [(_UINavigationBarItemStack *)stack backItem];

  return v5 == v4;
}

- (void)navigationItemUpdatedTitleContent:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  stack = self->super._stack;
  v7 = a3;
  v11 = [(_UINavigationBarItemStack *)stack topItem];
  v8 = [(_UINavigationBarItemStack *)self->super._stack backItem];
  v9 = [(_UINavigationBarItemStack *)self->super._stack state];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v11 == v7;
  }

  if (v10)
  {
    [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentForTopItem:v11 backItem:v8 animated:v4 direction:0];
  }
}

- (void)navigationItemUpdatedContentLayout:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  stack = self->super._stack;
  v7 = a3;
  v11 = [(_UINavigationBarItemStack *)stack topItem];
  v8 = [(_UINavigationBarItemStack *)self->super._stack backItem];
  v9 = [(_UINavigationBarItemStack *)self->super._stack state];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v11 == v7;
  }

  if (v10)
  {
    [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentForTopItem:v11 backItem:v8 animated:v4 direction:0];
  }
}

- (void)navigationItemUpdatedBackButtonContent:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  stack = self->super._stack;
  v7 = a3;
  v11 = [(_UINavigationBarItemStack *)stack topItem];
  v8 = [(_UINavigationBarItemStack *)self->super._stack backItem];
  v9 = [(_UINavigationBarItemStack *)self->super._stack state];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 == v7;
  }

  if (v10)
  {
    [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentForTopItem:v11 backItem:v8 animated:v4 direction:0];
  }
}

- (void)navigationItemUpdatedLeftBarButtonItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  stack = self->super._stack;
  v7 = a3;
  v11 = [(_UINavigationBarItemStack *)stack topItem];
  v8 = [(_UINavigationBarItemStack *)self->super._stack backItem];
  v9 = [(_UINavigationBarItemStack *)self->super._stack state];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v11 == v7;
  }

  if (v10)
  {
    [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentForTopItem:v11 backItem:v8 animated:v4 direction:0];
  }
}

- (void)navigationItemUpdatedRightBarButtonItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  stack = self->super._stack;
  v7 = a3;
  v11 = [(_UINavigationBarItemStack *)stack topItem];
  v8 = [(_UINavigationBarItemStack *)self->super._stack backItem];
  v9 = [(_UINavigationBarItemStack *)self->super._stack state];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v11 == v7;
  }

  if (v10)
  {
    [(_UINavigationBarVisualProviderModernCarPlay *)self _updateContentForTopItem:v11 backItem:v8 animated:v4 direction:0];
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
  v2 = [(_UINavigationBarVisualProviderModernCarPlay *)self titleView];
  v3 = [v2 traitCollection];
  v4 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleCallout" compatibleWithTraitCollection:v3];

  return v4;
}

- (void)_installGradientLayerMaskForClippingView:(id)a3
{
  v20[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6979380];
  v4 = a3;
  v5 = [v3 layer];
  v6 = [v4 layer];
  [v6 bounds];
  [v5 setFrame:?];

  v7 = +[UIColor clearColor];
  v8 = [v7 CGColor];

  v9 = +[UIColor blackColor];
  v10 = [v9 CGColor];

  v20[0] = v8;
  v20[1] = v10;
  v20[2] = v10;
  v20[3] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  [v5 setColors:v11];

  v12 = [v4 layer];
  [v12 setMask:v5];

  [v5 setStartPoint:{0.0, 0.5}];
  [v5 setEndPoint:{1.0, 0.5}];
  [v5 frame];
  v19[0] = &unk_1EFE2E3F8;
  v14 = 6.0 / v13;
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:6.0 / v13];
  v19[1] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 - v14];
  v19[2] = v16;
  v19[3] = &unk_1EFE2E408;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [v5 setLocations:v17];

  v18 = [v4 layer];

  [v18 setMask:v5];
}

@end