@interface _UINavigationBarVisualProviderCarPlaySolarium
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
- (void)updateProperties;
- (void)updateScrollPocketInteraction;
- (void)updateTopNavigationItemAnimated:(BOOL)a3;
@end

@implementation _UINavigationBarVisualProviderCarPlaySolarium

- (void)updateProperties
{
  v3.receiver = self;
  v3.super_class = _UINavigationBarVisualProviderCarPlaySolarium;
  v2 = self;
  [(_UINavigationBarVisualProvider *)&v3 updateProperties];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)v2 updateScrollPocketInteraction:v3.receiver];
}

- (void)updateScrollPocketInteraction
{
  v2 = self;
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

    v11 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self contentView];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    navigationBar = self->super._navigationBar;
    v13 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self contentView];
    [(UIView *)navigationBar addSubview:v13];

    v14 = objc_alloc_init(_UICarTitleView);
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self setTitleView:v14];

    v15 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
    LODWORD(v17) = 1144750080;
    [v16 setContentCompressionResistancePriority:0 forAxis:v17];

    v18 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
    LODWORD(v19) = 1132068864;
    [v18 setContentHuggingPriority:0 forAxis:v19];

    v20 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self contentView];
    v21 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
    [v20 addSubview:v21];

    v22 = self;
    v23 = [_UIButtonBarButton alloc];
    v24 = objc_alloc_init(_UIButtonBarButtonVisualProviderCarPlay);
    v25 = [(_UIButtonBarButton *)v23 initWithVisualProvider:v24];

    [(UIView *)v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v26) = 1144586240;
    [(UIView *)v25 setContentCompressionResistancePriority:0 forAxis:v26];
    [(UIControl *)v25 addTarget:v22 action:sel___backButtonAction forControlEvents:0x2000];

    [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 setBackBarButton:v25];
    v27 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 contentView];
    v28 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 backBarButton];
    [v27 addSubview:v28];

    v29 = [[_UINavigationButtonBarWrapperView alloc] initWithButtonVisualProviderClass:objc_opt_class() position:0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 setLeadingBarView:v29];

    v30 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 leadingBarView];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

    v31 = self->super._navigationBar;
    v32 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 leadingBarView];
    [(UIView *)v31 addSubview:v32];

    v33 = [[_UINavigationButtonBarWrapperView alloc] initWithButtonVisualProviderClass:objc_opt_class() position:2];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 setTrailingBarView:v33];

    v34 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 trailingBarView];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

    v35 = self->super._navigationBar;
    v36 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 trailingBarView];
    [(UIView *)v35 addSubview:v36];

    [(UIView *)self->super._navigationBar _setWantsAutolayout];
    if ([(UIView *)self->super._navigationBar translatesAutoresizingMaskIntoConstraints])
    {
      [(UIView *)self->super._navigationBar _setHostsLayoutEngine:1];
    }

    v37 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 leadingBarView];
    v38 = [v37 leadingAnchor];
    v39 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    v40 = [v39 leadingAnchor];
    v41 = [v38 constraintEqualToAnchor:v40];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 setLeadingBarConstraint:v41];

    v42 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 leadingBarView];
    v43 = [v42 widthAnchor];
    v44 = [v43 constraintEqualToConstant:0.0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 setLeadingBarNoItemsConstraint:v44];

    v45 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 trailingBarView];
    v46 = [v45 widthAnchor];
    v47 = [v46 constraintEqualToConstant:0.0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 setTrailingBarNoItemsConstraint:v47];

    v48 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 backBarButton];
    v49 = [v48 leadingAnchor];
    v50 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    v51 = [v50 leadingAnchor];
    v52 = [v49 constraintEqualToAnchor:v51];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 setBackButtonLeadingConstraint:v52];

    v53 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 backBarButton];
    v54 = [v53 trailingAnchor];
    v55 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 leadingBarView];
    v56 = [v55 leadingAnchor];
    v57 = [v54 constraintEqualToAnchor:v56 constant:-8.0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 setBackButtonTrailingConstraint:v57];

    v58 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 titleView];
    v59 = [v58 leadingAnchor];
    v60 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    v61 = [v60 leadingAnchor];
    v62 = [v59 constraintEqualToAnchor:v61 constant:8.0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 setLargeTitleLeadingConstraint:v62];

    v63 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 titleView];
    v64 = [v63 trailingAnchor];
    v65 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    v66 = [v65 trailingAnchor];
    v67 = [v64 constraintEqualToAnchor:v66];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 setLargeTitleTrailingConstraint:v67];

    v68 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 titleView];
    v69 = [v68 centerXAnchor];
    v70 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    v71 = [v70 centerXAnchor];
    v72 = [v69 constraintEqualToAnchor:v71];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 setRegularTitleConstraint:v72];

    v73 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 regularTitleConstraint];
    LODWORD(v74) = 1132068864;
    [v73 setPriority:v74];

    v75 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 leadingBarView];
    v76 = [v75 trailingAnchor];
    v77 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 titleView];
    v78 = [v77 leadingAnchor];
    v79 = [v76 constraintLessThanOrEqualToAnchor:v78 constant:-4.0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 setLeadingBarWithTitleTrailingConstraint:v79];

    v80 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 leadingBarView];
    v81 = [v80 trailingAnchor];
    v82 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 trailingBarView];
    v83 = [v82 leadingAnchor];
    v84 = [v81 constraintLessThanOrEqualToAnchor:v83 constant:-4.0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 setLeadingBarWithNoTitleTrailingConstraint:v84];

    v85 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 trailingBarView];
    v86 = [v85 leadingAnchor];
    v87 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 titleView];
    v88 = [v87 trailingAnchor];
    v89 = [v86 constraintGreaterThanOrEqualToAnchor:v88 constant:4.0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 setTrailingBarWithTitleLeadingConstraint:v89];

    v90 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 trailingBarView];
    v91 = [v90 leadingAnchor];
    v92 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 leadingBarView];
    v93 = [v92 trailingAnchor];
    v94 = [v91 constraintGreaterThanOrEqualToAnchor:v93 constant:4.0];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 setTrailingBarWithNoTitleLeadingConstraint:v94];

    v95 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 trailingBarView];
    v96 = [v95 trailingAnchor];
    v97 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    v98 = [v97 trailingAnchor];
    v99 = [v96 constraintEqualToAnchor:v98];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 setTrailingBarConstraint:v99];

    v100 = objc_alloc_init(UIFocusContainerGuide);
    focusContainerGuide = v22->_focusContainerGuide;
    v22->_focusContainerGuide = v100;

    v102 = self->super._navigationBar;
    v103 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 focusContainerGuide];
    [(UIView *)v102 addLayoutGuide:v103];

    v165 = MEMORY[0x1E69977A0];
    v208 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 contentView];
    v206 = [v208 topAnchor];
    v207 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    v205 = [v207 topAnchor];
    v204 = [v206 constraintEqualToAnchor:v205];
    v211[0] = v204;
    v203 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 contentView];
    v201 = [v203 bottomAnchor];
    v202 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    v200 = [v202 bottomAnchor];
    v199 = [v201 constraintEqualToAnchor:v200];
    v211[1] = v199;
    v198 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 contentView];
    v196 = [v198 leftAnchor];
    v197 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    v195 = [v197 leftAnchor];
    v194 = [v196 constraintEqualToAnchor:v195];
    v211[2] = v194;
    v193 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 contentView];
    v191 = [v193 rightAnchor];
    v192 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    v190 = [v192 rightAnchor];
    v189 = [v191 constraintEqualToAnchor:v190];
    v211[3] = v189;
    v188 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 backButtonLeadingConstraint];
    v211[4] = v188;
    v187 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 backButtonTrailingConstraint];
    v211[5] = v187;
    v186 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 backBarButton];
    v184 = [v186 topAnchor];
    v185 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    v183 = [v185 topAnchor];
    v182 = [v184 constraintEqualToAnchor:v183];
    v211[6] = v182;
    v181 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 backBarButton];
    v179 = [v181 bottomAnchor];
    v180 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    v178 = [v180 bottomAnchor];
    v177 = [v179 constraintEqualToAnchor:v178];
    v211[7] = v177;
    v176 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 leadingBarConstraint];
    v211[8] = v176;
    v175 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 leadingBarView];
    v173 = [v175 topAnchor];
    v174 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    v172 = [v174 topAnchor];
    v171 = [v173 constraintEqualToAnchor:v172];
    v211[9] = v171;
    v170 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 leadingBarView];
    v168 = [v170 bottomAnchor];
    v169 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    v167 = [v169 bottomAnchor];
    v166 = [v168 constraintEqualToAnchor:v167];
    v211[10] = v166;
    v164 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 leadingBarWithTitleTrailingConstraint];
    v211[11] = v164;
    v163 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 titleView];
    v161 = [v163 centerYAnchor];
    v162 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 contentView];
    v160 = [v162 centerYAnchor];
    v159 = [v161 constraintEqualToAnchor:v160];
    v211[12] = v159;
    v158 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 titleView];
    v156 = [v158 heightAnchor];
    v157 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 contentView];
    v155 = [v157 heightAnchor];
    v154 = [v156 constraintEqualToAnchor:v155];
    v211[13] = v154;
    v153 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 regularTitleConstraint];
    v211[14] = v153;
    v152 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 trailingBarWithTitleLeadingConstraint];
    v211[15] = v152;
    v151 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 trailingBarConstraint];
    v211[16] = v151;
    v150 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 trailingBarView];
    v148 = [v150 topAnchor];
    v149 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    v147 = [v149 topAnchor];
    v146 = [v148 constraintEqualToAnchor:v147];
    v211[17] = v146;
    v145 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 trailingBarView];
    v143 = [v145 bottomAnchor];
    v144 = [(UIView *)self->super._navigationBar layoutMarginsGuide];
    v142 = [v144 bottomAnchor];
    v141 = [v143 constraintEqualToAnchor:v142];
    v211[18] = v141;
    v140 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 backgroundView];
    v139 = [v140 topAnchor];
    v138 = [(UIView *)self->super._navigationBar topAnchor];
    v137 = [v139 constraintEqualToAnchor:v138];
    v211[19] = v137;
    v136 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 backgroundView];
    v135 = [v136 bottomAnchor];
    v134 = [(UIView *)self->super._navigationBar bottomAnchor];
    v133 = [v135 constraintEqualToAnchor:v134];
    v211[20] = v133;
    v132 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 backgroundView];
    v131 = [v132 leftAnchor];
    v130 = [(UIView *)self->super._navigationBar leftAnchor];
    v129 = [v131 constraintEqualToAnchor:v130];
    v211[21] = v129;
    v128 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 backgroundView];
    v127 = [v128 rightAnchor];
    v126 = [(UIView *)self->super._navigationBar rightAnchor];
    v125 = [v127 constraintEqualToAnchor:v126];
    v211[22] = v125;
    v124 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 focusContainerGuide];
    v122 = [v124 leadingAnchor];
    v123 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v121 = [v123 leadingAnchor];
    v120 = [v122 constraintEqualToAnchor:v121];
    v211[23] = v120;
    v119 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 focusContainerGuide];
    v117 = [v119 trailingAnchor];
    v118 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v116 = [v118 trailingAnchor];
    v115 = [v117 constraintEqualToAnchor:v116];
    v211[24] = v115;
    v114 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 focusContainerGuide];
    v104 = [v114 topAnchor];
    v105 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v106 = [v105 topAnchor];
    v107 = [v104 constraintEqualToAnchor:v106];
    v211[25] = v107;
    v108 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v22 focusContainerGuide];
    v109 = [v108 bottomAnchor];
    v110 = [(UIView *)self->super._navigationBar safeAreaLayoutGuide];
    v111 = [v110 bottomAnchor];
    v112 = [v109 constraintEqualToAnchor:v111];
    v211[26] = v112;
    v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v211 count:27];
    [v165 activateConstraints:v113];
  }
}

- (void)teardown
{
  v3 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
  [v3 removeFromSuperview];

  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setTitleView:0];
  v4 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarView];
  [v4 removeFromSuperview];

  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setLeadingBarView:0];
  v5 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self trailingBarView];
  [v5 removeFromSuperview];

  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setTrailingBarView:0];
  v6 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backBarButton];
  [v6 removeFromSuperview];

  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setBackBarButton:0];
  v7 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backgroundView];
  [v7 removeFromSuperview];

  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setBackgroundView:0];
  v8 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self contentView];
  [v8 removeFromSuperview];

  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setContentView:0];
  v9 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self debugViews];
  [v9 enumerateObjectsUsingBlock:&__block_literal_global_743];

  [(_UINavigationBarVisualProviderCarPlaySolarium *)self setDebugViews:0];
  navigationBar = self->super._navigationBar;
  v11 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self focusContainerGuide];
  [(UIView *)navigationBar removeLayoutGuide:v11];

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

- (void)provideViewsForContents:(id)a3 topItem:(id)a4 backItem:(id)a5
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
  [v6 setTitleView:v7];

  v8 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backBarButton];
  v9 = [v8 isHidden];

  if ((v9 & 1) == 0)
  {
    v10 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backBarButton];
    v12[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v6 setViewsRepresentingBackButton:v11];
  }
}

- (void)stackDidChangeFrom:(id)a3
{
  [(_UINavigationBarItemStack *)self->super._stack setChangeObserver:self];

  [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentAnimated:0 completion:0 direction:0];
}

- (void)setupTopNavigationItem
{
  v4 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v3 = [(_UINavigationBarItemStack *)self->super._stack backItem];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentForTopItem:v4 backItem:v3 animated:0 direction:0];
}

- (void)updateTopNavigationItemAnimated:(BOOL)a3
{
  v3 = a3;
  v6 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v5 = [(_UINavigationBarItemStack *)self->super._stack backItem];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentForTopItem:v6 backItem:v5 animated:v3 direction:0];
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
  v4.super_class = _UINavigationBarVisualProviderCarPlaySolarium;
  [(_UINavigationBarVisualProvider *)&v4 traitCollectionDidChange:a3];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self _configureBackground];
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
  v248 = a5;
  v278[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = [v8 titleView];

  if (v12)
  {
    v13 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
    [v13 setHidden:0];

    v14 = [v8 titleView];
    v15 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
    [v15 setView:v14];

    v16 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarWithNoTitleTrailingConstraint];
    v278[0] = v16;
    v17 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self trailingBarWithNoTitleLeadingConstraint];
    v278[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v278 count:2];
    [v10 addObjectsFromArray:v18];

    v19 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarWithTitleTrailingConstraint];
    v277[0] = v19;
    v20 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self trailingBarWithTitleLeadingConstraint];
    v277[1] = v20;
    v21 = v277;
  }

  else
  {
    v22 = [v8 title];
    if (v22 && (v23 = v22, [v8 title], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqualToString:", &stru_1EFB14550), v24, v23, (v25 & 1) == 0))
    {
      v30 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
      [v30 setHidden:0];

      v31 = [v8 title];
      v32 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
      [v32 setText:v31];

      v33 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarWithNoTitleTrailingConstraint];
      v276[0] = v33;
      v34 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self trailingBarWithNoTitleLeadingConstraint];
      v276[1] = v34;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v276 count:2];
      [v10 addObjectsFromArray:v35];

      v19 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarWithTitleTrailingConstraint];
      v275[0] = v19;
      v20 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self trailingBarWithTitleLeadingConstraint];
      v275[1] = v20;
      v21 = v275;
    }

    else
    {
      v26 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
      [v26 setHidden:1];

      v27 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarWithTitleTrailingConstraint];
      v274[0] = v27;
      v28 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self trailingBarWithTitleLeadingConstraint];
      v274[1] = v28;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v274 count:2];
      [v10 addObjectsFromArray:v29];

      v19 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarWithNoTitleTrailingConstraint];
      v273[0] = v19;
      v20 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self trailingBarWithNoTitleLeadingConstraint];
      v273[1] = v20;
      v21 = v273;
    }
  }

  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [v11 addObjectsFromArray:v36];

  v245 = v9;
  v37 = [v9 _effectiveBackBarButtonItem];
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

  v48 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backBarButton];
  v236 = [v48 isHidden];

  if ([v43 count])
  {
    v49 = v10;
  }

  else
  {
    v49 = v11;
  }

  v50 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarNoItemsConstraint];
  [v49 addObject:v50];

  v250 = v47;
  if ([v47 count])
  {
    v51 = v10;
  }

  else
  {
    v51 = v11;
  }

  v52 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self trailingBarNoItemsConstraint];
  [v51 addObject:v52];

  v53 = [v8 largeTitleDisplayMode];
  v252 = self;
  v241 = v43;
  v242 = v37;
  if (v53 == 1 || v53 != 2 && (v37 == 0) | v38 & 1)
  {
    v54 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backBarButton];
    [v54 setHidden:1];

    v55 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backButtonLeadingConstraint];
    v269[0] = v55;
    v56 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backButtonTrailingConstraint];
    v269[1] = v56;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v269 count:2];
    [v10 addObjectsFromArray:v57];

    v58 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarConstraint];
    [v11 addObject:v58];

    if ([v43 count])
    {
      v59 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self regularTitleConstraint];
      [v11 addObject:v59];

      v60 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self largeTitleLeadingConstraint];
      [v10 addObject:v60];

      v61 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self largeTitleTrailingConstraint];
      [v10 addObject:v61];

      v62 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
      [v62 setLargeText:0];
    }

    else
    {
      v84 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self largeTitleLeadingConstraint];
      [v11 addObject:v84];

      v85 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self regularTitleConstraint];
      [v10 addObject:v85];

      v86 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
      [v86 setLargeText:1];

      v87 = [v47 count];
      v62 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self largeTitleTrailingConstraint];
      if (v87)
      {
        v88 = v10;
      }

      else
      {
        v88 = v11;
      }

      [v88 addObject:v62];
    }
  }

  else
  {
    v63 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backBarButton];
    [v63 setHidden:0];

    v64 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backBarButton];
    [v64 configureBackButtonFromBarItem:v37 withAppearanceDelegate:self];

    v65 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self largeTitleLeadingConstraint];
    v272[0] = v65;
    v66 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self largeTitleTrailingConstraint];
    v272[1] = v66;
    v67 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarConstraint];
    v272[2] = v67;
    v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v272 count:3];
    [v10 addObjectsFromArray:v68];

    v69 = MEMORY[0x1E69977A0];
    v70 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backButtonTrailingConstraint];
    v271 = v70;
    v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v271 count:1];
    [v69 deactivateConstraints:v71];

    v72 = [v43 count];
    v73 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backBarButton];
    v74 = [v73 trailingAnchor];
    v75 = v11;
    if (v72)
    {
      v76 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self leadingBarView];
      v77 = -8.0;
    }

    else
    {
      v76 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
      v77 = -4.0;
    }

    v78 = [v76 leadingAnchor];
    v79 = [v74 constraintLessThanOrEqualToAnchor:v78 constant:v77];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self setBackButtonTrailingConstraint:v79];

    v80 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backButtonLeadingConstraint];
    v270[0] = v80;
    v81 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backButtonTrailingConstraint];
    v270[1] = v81;
    v82 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self regularTitleConstraint];
    v270[2] = v82;
    v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v270 count:3];
    v11 = v75;
    [v75 addObjectsFromArray:v83];

    v62 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
    [v62 setLargeText:0];
    v37 = v242;
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
  v91 = [v8 _topBarSections];
  v92 = [v91 countByEnumeratingWithState:&v260 objects:v268 count:16];
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
          objc_enumerationMutation(v91);
        }

        v96 = *(*(&v260 + 1) + 8 * i);
        v97 = [v96 preferredPlacement];
        if (v97 == 3)
        {
          goto LABEL_39;
        }

        v98 = v89;
        if (v97 != 1)
        {
          if (v97)
          {
            continue;
          }

LABEL_39:
          v98 = v90;
        }

        [v98 addObject:v96];
      }

      v93 = [v91 countByEnumeratingWithState:&v260 objects:v268 count:16];
    }

    while (v93);
  }

  v99 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v252 leadingBarView];
  [v99 setBarSections:v89 animated:v248];

  v100 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v252 trailingBarView];
  [v100 setBarSections:v90 animated:v248];

  if (a6 && v248)
  {
    v101 = [UIView alloc];
    v102 = [(UIView *)v101 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v102 setClipsToBounds:1];
    v103 = [(_UINavigationBarVisualProvider *)v252 navigationBar];
    v246 = v102;
    [v103 addSubview:v102];

    v104 = objc_alloc_init(UILayoutGuide);
    [(UILayoutGuide *)v104 setIdentifier:@"_UINBVPCarPlaySolarium-ClippingGuide"];
    v105 = [(_UINavigationBarVisualProvider *)v252 navigationBar];
    v249 = v104;
    [v105 addLayoutGuide:v104];

    if ([v43 count])
    {
      v106 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v252 leadingBarView];
      v107 = [v106 trailingAnchor];
    }

    else
    {
      v106 = [(_UINavigationBarVisualProvider *)v252 navigationBar];
      v108 = [v106 layoutMarginsGuide];
      v107 = [v108 leadingAnchor];
    }

    if ([v250 count])
    {
      v109 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v252 trailingBarView];
      v110 = [v109 leadingAnchor];
    }

    else
    {
      v109 = [(_UINavigationBarVisualProvider *)v252 navigationBar];
      v111 = [v109 layoutMarginsGuide];
      v110 = [v111 trailingAnchor];
    }

    v222 = v8;

    v112 = [(UILayoutGuide *)v249 leadingAnchor];
    v221 = v107;
    v113 = [v112 constraintEqualToAnchor:v107 constant:0.0];

    v240 = v113;
    LODWORD(v114) = 1148846080;
    [v113 setPriority:v114];
    v115 = [(UILayoutGuide *)v249 trailingAnchor];
    v220 = v110;
    v116 = [v115 constraintEqualToAnchor:v110];

    v239 = v116;
    LODWORD(v117) = 1148846080;
    [v116 setPriority:v117];
    v118 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v119 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v252 titleView];
    v120 = [v119 snapshotViewAfterScreenUpdates:0];

    v247 = v118;
    v219 = v120;
    if (v120)
    {
      [v120 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v246 addSubview:v120];
      v121 = [v120 centerXAnchor];
      v122 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v252 titleView];
      v123 = [v122 centerXAnchor];
      v124 = [v121 constraintEqualToAnchor:v123];

      v238 = v124;
      v267[0] = v124;
      v228 = [v120 heightAnchor];
      v232 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v252 titleView];
      [v232 frame];
      v225 = [v228 constraintEqualToConstant:CGRectGetHeight(v279)];
      v267[1] = v225;
      v223 = [v120 widthAnchor];
      v125 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v252 titleView];
      [v125 frame];
      v126 = [v223 constraintEqualToConstant:CGRectGetWidth(v280)];
      v267[2] = v126;
      v127 = [v120 centerYAnchor];
      v128 = [(UIView *)v246 centerYAnchor];
      v129 = [v127 constraintEqualToAnchor:v128];
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
    v229 = [(UILayoutGuide *)v249 topAnchor];
    v233 = [(_UINavigationBarVisualProvider *)v252 navigationBar];
    v226 = [v233 layoutMarginsGuide];
    v131 = [v226 topAnchor];
    v132 = [v229 constraintEqualToAnchor:v131];
    v266[2] = v132;
    v133 = [(UILayoutGuide *)v249 bottomAnchor];
    v134 = [(_UINavigationBarVisualProvider *)v252 navigationBar];
    v135 = [v134 layoutMarginsGuide];
    v136 = [v135 bottomAnchor];
    v137 = [v133 constraintEqualToAnchor:v136];
    v266[3] = v137;
    v138 = [MEMORY[0x1E695DEC8] arrayWithObjects:v266 count:4];
    [v247 addObjectsFromArray:v138];

    v139 = objc_alloc_init(UIView);
    v140 = v246;
    [(UIView *)v246 addSubview:v139];
    v227 = v139;
    if (v236)
    {
      v237 = 0;
      v224 = 0;
      v141 = v252;
    }

    else
    {
      v142 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v252 backBarButton];
      v143 = [v142 visualProvider];
      v144 = [v143 contentView];
      v145 = [v144 snapshotViewAfterScreenUpdates:0];

      v141 = v252;
      if (v145)
      {
        [v145 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIView *)v246 addSubview:v145];
        v146 = [v145 leadingAnchor];
        v147 = [(UIView *)v139 leadingAnchor];
        v148 = [v146 constraintEqualToAnchor:v147];

        v230 = [v145 heightAnchor];
        v234 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v252 backBarButton];
        [v234 frame];
        v216 = [v230 constraintEqualToConstant:CGRectGetHeight(v281)];
        v265[0] = v216;
        v149 = [v145 widthAnchor];
        v150 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v252 backBarButton];
        [v150 frame];
        v151 = [v149 constraintEqualToConstant:CGRectGetWidth(v282)];
        v265[1] = v151;
        v265[2] = v148;
        v237 = v148;
        v224 = v145;
        v152 = [v145 topAnchor];
        v153 = [(UIView *)v139 topAnchor];
        v154 = [v152 constraintEqualToAnchor:v153];
        v265[3] = v154;
        v155 = [MEMORY[0x1E695DEC8] arrayWithObjects:v265 count:4];
        [v247 addObjectsFromArray:v155];

        v139 = v227;
        v141 = v252;

        v140 = v246;
      }

      else
      {
        v237 = 0;
        v224 = 0;
      }
    }

    [MEMORY[0x1E69977A0] activateConstraints:v247];
    v156 = [(_UINavigationBarVisualProvider *)v141 navigationBar];
    [v156 layoutIfNeeded];

    [(UILayoutGuide *)v249 layoutFrame];
    [(UIView *)v140 setFrame:?];
    v157 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v141 backBarButton];
    [v157 frame];
    v159 = v158;
    v161 = v160;
    v163 = v162;
    v165 = v164;
    v166 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v141 backBarButton];
    [(UIView *)v140 convertRect:v166 fromView:v159, v161, v163, v165];
    [(UIView *)v139 setFrame:?];

    [(_UINavigationBarVisualProviderCarPlaySolarium *)v141 _installGradientLayerMaskForClippingView:v140];
    v167 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v141 titleView];
    v168 = [v167 snapshotViewAfterScreenUpdates:1];

    [v168 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v140 addSubview:v168];
    if (a6 == 1)
    {
      v169 = [v168 leadingAnchor];
    }

    else
    {
      v169 = [v168 leadingAnchor];
      if (v139)
      {
        v170 = [(UIView *)v139 trailingAnchor];
        v171 = [v169 constraintEqualToAnchor:v170 constant:8.0];
        goto LABEL_64;
      }
    }

    v170 = [(UIView *)v140 trailingAnchor];
    v171 = [v169 constraintEqualToAnchor:v170];
LABEL_64:
    v172 = v171;

    v173 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v235 = v172;
    v264[0] = v172;
    v214 = [v168 heightAnchor];
    v217 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v141 titleView];
    [v217 frame];
    v213 = [v214 constraintEqualToConstant:CGRectGetHeight(v283)];
    v264[1] = v213;
    v174 = [v168 widthAnchor];
    [(_UINavigationBarVisualProviderCarPlaySolarium *)v141 titleView];
    v176 = v175 = v168;
    [v176 frame];
    v177 = [v174 constraintEqualToConstant:CGRectGetWidth(v284)];
    v264[2] = v177;
    v231 = v175;
    v178 = [v175 centerYAnchor];
    v179 = [(UIView *)v140 centerYAnchor];
    v180 = [v178 constraintEqualToAnchor:v179];
    v264[3] = v180;
    v181 = [MEMORY[0x1E695DEC8] arrayWithObjects:v264 count:4];
    [v173 addObjectsFromArray:v181];

    v182 = v252;
    v218 = v173;
    [MEMORY[0x1E69977A0] activateConstraints:v173];
    v183 = [(_UINavigationBarVisualProvider *)v252 navigationBar];
    [v183 layoutIfNeeded];

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
      v188 = [v231 centerXAnchor];
      v189 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v252 titleView];
      v190 = [v189 centerXAnchor];
      v191 = [v188 constraintEqualToAnchor:v190];
      [v187 addObject:v191];

      v182 = v252;
    }

    if (a6 == 1)
    {
      if (v219)
      {
        v192 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v182 backBarButton];
        v193 = [v192 isHidden];

        v194 = [v219 trailingAnchor];
        if (v193)
        {
          v195 = [(_UINavigationBarVisualProvider *)v182 navigationBar];
          v196 = [v195 layoutMarginsGuide];
          v197 = [v196 leadingAnchor];
          v198 = [v194 constraintEqualToAnchor:v197];
          [v187 addObject:v198];

          v182 = v252;
        }

        else
        {
          v195 = [(UIView *)v227 leadingAnchor];
          v196 = [v194 constraintEqualToAnchor:v195];
          [v187 addObject:v196];
        }

        v186 = v231;
      }

      v202 = v224;
      if (!v224)
      {
        goto LABEL_85;
      }

      v203 = [v224 trailingAnchor];
      v204 = [(UIView *)v246 leadingAnchor];
      v205 = [v203 constraintEqualToAnchor:v204];
    }

    else
    {
      if (v219)
      {
        v199 = [v219 leadingAnchor];
        v200 = [(UIView *)v246 trailingAnchor];
        v201 = [v199 constraintEqualToAnchor:v200];
        [v187 addObject:v201];

        v182 = v252;
      }

      v202 = v224;
      if (!v224)
      {
        goto LABEL_85;
      }

      v203 = [v224 leadingAnchor];
      v204 = [(UIView *)v227 trailingAnchor];
      v205 = [v203 constraintEqualToAnchor:v204 constant:8.0];
    }

    v206 = v205;
    [v187 addObject:v205];

    v202 = v224;
    v186 = v231;
LABEL_85:
    [MEMORY[0x1E69977A0] activateConstraints:v187];
    [v186 setAlpha:0.0];
    v207 = [(_UINavigationBarVisualProviderCarPlaySolarium *)v182 contentView];
    [v207 setHidden:1];

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

    v8 = v222;
    v43 = v241;
    v37 = v242;
  }
}

- (void)_updateContentAnimated:(BOOL)a3 completion:(id)a4 direction:(unint64_t)a5
{
  v6 = a3;
  v11 = a4;
  if (![(_UINavigationBarVisualProviderCarPlaySolarium *)self havePrepared])
  {
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self prepare];
  }

  v8 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v9 = [(_UINavigationBarItemStack *)self->super._stack backItem];
  [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentForTopItem:v8 backItem:v9 animated:v6 direction:a5];
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
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentForTopItem:v11 backItem:v8 animated:v4 direction:0];
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
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentForTopItem:v11 backItem:v8 animated:v4 direction:0];
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
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentForTopItem:v11 backItem:v8 animated:v4 direction:0];
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
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentForTopItem:v11 backItem:v8 animated:v4 direction:0];
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
    [(_UINavigationBarVisualProviderCarPlaySolarium *)self _updateContentForTopItem:v11 backItem:v8 animated:v4 direction:0];
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
  v2 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self titleView];
  v3 = [v2 traitCollection];
  v4 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleCallout" compatibleWithTraitCollection:v3];

  return v4;
}

- (void)_configureBackground
{
  v3 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backgroundView];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [(_UINavigationBarVisualProviderCarPlaySolarium *)self backgroundView];
  [v5 setBackgroundEffects:MEMORY[0x1E695E0F0]];
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
  v19[0] = &unk_1EFE2F108;
  v14 = 6.0 / v13;
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:6.0 / v13];
  v19[1] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 - v14];
  v19[2] = v16;
  v19[3] = &unk_1EFE2F118;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [v5 setLocations:v17];

  v18 = [v4 layer];

  [v18 setMask:v5];
}

@end