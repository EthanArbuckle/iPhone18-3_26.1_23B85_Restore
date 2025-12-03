@interface PXRetailExperienceCardView
- (void)_didMoveToWindow;
- (void)addActionWithTitle:(id)title action:(id)action;
- (void)didMoveToWindow;
@end

@implementation PXRetailExperienceCardView

- (void)_didMoveToWindow
{
  v179[7] = *MEMORY[0x1E69E9840];
  if (!self->_didLoad)
  {
    self->_didLoad = 1;
    v165 = self->_actions;
    window = [(PXRetailExperienceCardView *)self window];
    screen = [window screen];
    [screen bounds];
    v6 = v5;
    v8 = v7;

    selfCopy = self;
    layer = [(PXRetailExperienceCardView *)selfCopy layer];
    [layer setCornerRadius:45.0];
    LODWORD(v11) = 1050253722;
    [layer setShadowOpacity:v11];
    [layer setShadowRadius:10.0];
    v106 = layer;
    [layer setShadowOffset:{3.0, 3.0}];
    tertiarySystemBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    [(PXRetailExperienceCardView *)selfCopy setBackgroundColor:tertiarySystemBackgroundColor];

    [(PXRetailExperienceCardView *)selfCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PXRetailExperienceCardView *)selfCopy setClipsToBounds:1];
    v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v14 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithContentsOfFile:@"/System/Library/Photos/Resources/Media/RetailExperienceCard.jpg"];
    [v13 setImage:v14];
    [v13 setContentMode:2];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v110 = v13;
    [(PXRetailExperienceCardView *)selfCopy addSubview:v13];
    v15 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v105 = v14;
    v104 = [MEMORY[0x1E69DCAB8] imageWithCGImage:objc_msgSend(v14 scale:"CGImage") orientation:{5, 1.0}];
    [v15 setImage:?];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setClipsToBounds:1];
    v109 = v15;
    [(PXRetailExperienceCardView *)selfCopy addSubview:v15];
    v16 = objc_alloc(MEMORY[0x1E69DD298]);
    v17 = [MEMORY[0x1E69DC730] effectWithStyle:7];
    v18 = [v16 initWithEffect:v17];

    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PXRetailExperienceCardView *)selfCopy addSubview:v18];
    v19 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [v18 contentView];
    [contentView addSubview:v19];

    v21 = objc_alloc_init(MEMORY[0x1E69DD250]);
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [v21 setBackgroundColor:separatorColor];

    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v128 = v18;
    contentView2 = [v18 contentView];
    v108 = v21;
    [contentView2 addSubview:v21];

    v24 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    title = [(PXRetailExperienceCardView *)selfCopy title];
    [v24 setText:title];

    v26 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] weight:*MEMORY[0x1E69DB958]];
    [v24 setFont:v26];

    [v24 setNumberOfLines:0];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v19 addSubview:v24];
    v27 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v107 = selfCopy;
    message = [(PXRetailExperienceCardView *)selfCopy message];
    [v27 setText:message];

    v29 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [v27 setFont:v29];

    [v27 setNumberOfLines:0];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v19 addSubview:v27];
    v123 = MEMORY[0x1E696ACD8];
    topAnchor = [v24 topAnchor];
    topAnchor2 = [v19 topAnchor];
    v153 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v179[0] = v153;
    leadingAnchor = [v24 leadingAnchor];
    leadingAnchor2 = [v19 leadingAnchor];
    v141 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v179[1] = v141;
    trailingAnchor = [v24 trailingAnchor];
    trailingAnchor2 = [v19 trailingAnchor];
    v129 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v179[2] = v129;
    topAnchor3 = [v27 topAnchor];
    v103 = v24;
    bottomAnchor = [v24 bottomAnchor];
    v113 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:8.0];
    v179[3] = v113;
    obja = [v27 leadingAnchor];
    leadingAnchor3 = [v19 leadingAnchor];
    v31 = [obja constraintEqualToAnchor:leadingAnchor3];
    v179[4] = v31;
    trailingAnchor3 = [v27 trailingAnchor];
    trailingAnchor4 = [v19 trailingAnchor];
    v34 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v179[5] = v34;
    v102 = v27;
    bottomAnchor2 = [v27 bottomAnchor];
    v127 = v19;
    bottomAnchor3 = [v19 bottomAnchor];
    v37 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v179[6] = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v179 count:7];
    [v123 activateConstraints:v38];

    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    obj = v165;
    v130 = [(NSMutableArray *)obj countByEnumeratingWithState:&v169 objects:v178 count:16];
    v39 = 0;
    if (v130)
    {
      v120 = *MEMORY[0x1E69DDCF8];
      v124 = *v170;
      v40 = *MEMORY[0x1E69DB980];
      v116 = *MEMORY[0x1E69DB648];
      do
      {
        v41 = 0;
        v42 = v39;
        do
        {
          v162 = v42;
          if (*v170 != v124)
          {
            objc_enumerationMutation(obj);
          }

          v166 = v41;
          v43 = *(*(&v169 + 1) + 8 * v41);
          filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
          [filledButtonConfiguration setButtonSize:3];
          [filledButtonConfiguration setCornerStyle:4];
          v158 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v120 weight:v40];
          v45 = objc_alloc(MEMORY[0x1E696AAB0]);
          title2 = [v43 title];
          v176 = v116;
          v177 = v158;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v177 forKeys:&v176 count:1];
          v154 = [v45 initWithString:title2 attributes:v47];

          v150 = filledButtonConfiguration;
          [filledButtonConfiguration setAttributedTitle:v154];
          v48 = MEMORY[0x1E69DC738];
          v168[0] = MEMORY[0x1E69E9820];
          v168[1] = 3221225472;
          v168[2] = __46__PXRetailExperienceCardView__didMoveToWindow__block_invoke;
          v168[3] = &unk_1E7743BF8;
          v168[4] = v43;
          v49 = [MEMORY[0x1E69DC628] actionWithTitle:&stru_1F1741150 image:0 identifier:0 handler:v168];
          v39 = [v48 buttonWithConfiguration:filledButtonConfiguration primaryAction:v49];

          [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
          contentView3 = [v128 contentView];
          [contentView3 addSubview:v39];

          v134 = MEMORY[0x1E696ACD8];
          trailingAnchor5 = [v39 trailingAnchor];
          trailingAnchor6 = [v128 trailingAnchor];
          v138 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-24.0];
          v175[0] = v138;
          centerYAnchor = [v39 centerYAnchor];
          centerYAnchor2 = [v127 centerYAnchor];
          v53 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
          v175[1] = v53;
          widthAnchor = [v39 widthAnchor];
          [v39 intrinsicContentSize];
          v56 = [widthAnchor constraintGreaterThanOrEqualToConstant:v55 + 12.0];
          v175[2] = v56;
          heightAnchor = [v39 heightAnchor];
          heightAnchor2 = [v128 heightAnchor];
          v59 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2 constant:-48.0];
          v175[3] = v59;
          v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:4];
          [v134 activateConstraints:v60];

          v41 = v166 + 1;
          v42 = v39;
        }

        while (v130 != v166 + 1);
        v130 = [(NSMutableArray *)obj countByEnumeratingWithState:&v169 objects:v178 count:16];
      }

      while (v130);
    }

    v167 = v39;

    if (v6 >= v8)
    {
      v61 = v8;
    }

    else
    {
      v61 = v6;
    }

    v62 = v61 + -10.0;
    v63 = v8 * 0.5;
    v131 = MEMORY[0x1E696ACD8];
    centerYAnchor3 = [v108 centerYAnchor];
    bottomAnchor4 = [v128 bottomAnchor];
    v155 = [centerYAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-24.0];
    v174[0] = v155;
    leadingAnchor4 = [v108 leadingAnchor];
    leadingAnchor5 = [v128 leadingAnchor];
    v143 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:24.0];
    v174[1] = v143;
    trailingAnchor7 = [v108 trailingAnchor];
    trailingAnchor8 = [v128 trailingAnchor];
    v125 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-24.0];
    v174[2] = v125;
    heightAnchor3 = [v108 heightAnchor];
    v117 = [heightAnchor3 constraintEqualToConstant:0.5];
    v174[3] = v117;
    bottomAnchor5 = [v127 bottomAnchor];
    centerYAnchor4 = [v108 centerYAnchor];
    v66 = [bottomAnchor5 constraintEqualToAnchor:centerYAnchor4 constant:-24.0];
    v174[4] = v66;
    leadingAnchor6 = [v127 leadingAnchor];
    leadingAnchor7 = [v128 leadingAnchor];
    v69 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:24.0];
    v174[5] = v69;
    trailingAnchor9 = [v127 trailingAnchor];
    leadingAnchor8 = [v39 leadingAnchor];
    v72 = [trailingAnchor9 constraintEqualToAnchor:leadingAnchor8 constant:-24.0];
    v174[6] = v72;
    v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:7];
    [v131 activateConstraints:v73];

    v99 = MEMORY[0x1E696ACD8];
    heightAnchor4 = [(PXRetailExperienceCardView *)v107 heightAnchor];
    v160 = [heightAnchor4 constraintEqualToConstant:v63];
    v173[0] = v160;
    widthAnchor2 = [(PXRetailExperienceCardView *)v107 widthAnchor];
    v152 = [widthAnchor2 constraintEqualToConstant:v62];
    v173[1] = v152;
    topAnchor4 = [v110 topAnchor];
    topAnchor5 = [(PXRetailExperienceCardView *)v107 topAnchor];
    v140 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v173[2] = v140;
    leadingAnchor9 = [v110 leadingAnchor];
    leadingAnchor10 = [(PXRetailExperienceCardView *)v107 leadingAnchor];
    v126 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v173[3] = v126;
    trailingAnchor10 = [v110 trailingAnchor];
    trailingAnchor11 = [(PXRetailExperienceCardView *)v107 trailingAnchor];
    v114 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
    v173[4] = v114;
    heightAnchor5 = [v110 heightAnchor];
    v100 = [heightAnchor5 constraintEqualToConstant:v63 * 0.6];
    v173[5] = v100;
    topAnchor6 = [v128 topAnchor];
    bottomAnchor6 = [v110 bottomAnchor];
    v96 = [topAnchor6 constraintEqualToAnchor:bottomAnchor6];
    v173[6] = v96;
    bottomAnchor7 = [v128 bottomAnchor];
    bottomAnchor8 = [(PXRetailExperienceCardView *)v107 bottomAnchor];
    v93 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    v173[7] = v93;
    leadingAnchor11 = [v128 leadingAnchor];
    leadingAnchor12 = [(PXRetailExperienceCardView *)v107 leadingAnchor];
    v90 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v173[8] = v90;
    trailingAnchor12 = [v128 trailingAnchor];
    trailingAnchor13 = [(PXRetailExperienceCardView *)v107 trailingAnchor];
    v87 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
    v173[9] = v87;
    topAnchor7 = [v109 topAnchor];
    bottomAnchor9 = [v110 bottomAnchor];
    v84 = [topAnchor7 constraintEqualToAnchor:bottomAnchor9];
    v173[10] = v84;
    leadingAnchor13 = [v109 leadingAnchor];
    leadingAnchor14 = [(PXRetailExperienceCardView *)v107 leadingAnchor];
    v75 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
    v173[11] = v75;
    trailingAnchor14 = [v109 trailingAnchor];
    trailingAnchor15 = [(PXRetailExperienceCardView *)v107 trailingAnchor];
    v78 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15];
    v173[12] = v78;
    heightAnchor6 = [v109 heightAnchor];
    heightAnchor7 = [v110 heightAnchor];
    v81 = [heightAnchor6 constraintEqualToAnchor:heightAnchor7];
    v173[13] = v81;
    v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:v173 count:14];
    [v99 activateConstraints:v82];
  }
}

void __46__PXRetailExperienceCardView__didMoveToWindow__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) action];

  if (v2)
  {
    v3 = [*(a1 + 32) action];
    v3[2]();
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PXRetailExperienceCardView;
  [(PXRetailExperienceCardView *)&v3 didMoveToWindow];
  [(PXRetailExperienceCardView *)self _didMoveToWindow];
}

- (void)addActionWithTitle:(id)title action:(id)action
{
  titleCopy = title;
  actionCopy = action;
  actions = self->_actions;
  if (!actions)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = self->_actions;
    self->_actions = v8;

    actions = self->_actions;
  }

  v10 = [[_PXCardAction alloc] initWithTitle:titleCopy action:actionCopy];
  [(NSMutableArray *)actions addObject:v10];
}

@end