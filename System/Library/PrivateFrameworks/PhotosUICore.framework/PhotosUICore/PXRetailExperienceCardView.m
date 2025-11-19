@interface PXRetailExperienceCardView
- (void)_didMoveToWindow;
- (void)addActionWithTitle:(id)a3 action:(id)a4;
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
    v3 = [(PXRetailExperienceCardView *)self window];
    v4 = [v3 screen];
    [v4 bounds];
    v6 = v5;
    v8 = v7;

    v9 = self;
    v10 = [(PXRetailExperienceCardView *)v9 layer];
    [v10 setCornerRadius:45.0];
    LODWORD(v11) = 1050253722;
    [v10 setShadowOpacity:v11];
    [v10 setShadowRadius:10.0];
    v106 = v10;
    [v10 setShadowOffset:{3.0, 3.0}];
    v12 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    [(PXRetailExperienceCardView *)v9 setBackgroundColor:v12];

    [(PXRetailExperienceCardView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PXRetailExperienceCardView *)v9 setClipsToBounds:1];
    v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v14 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithContentsOfFile:@"/System/Library/Photos/Resources/Media/RetailExperienceCard.jpg"];
    [v13 setImage:v14];
    [v13 setContentMode:2];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v110 = v13;
    [(PXRetailExperienceCardView *)v9 addSubview:v13];
    v15 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v105 = v14;
    v104 = [MEMORY[0x1E69DCAB8] imageWithCGImage:objc_msgSend(v14 scale:"CGImage") orientation:{5, 1.0}];
    [v15 setImage:?];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setClipsToBounds:1];
    v109 = v15;
    [(PXRetailExperienceCardView *)v9 addSubview:v15];
    v16 = objc_alloc(MEMORY[0x1E69DD298]);
    v17 = [MEMORY[0x1E69DC730] effectWithStyle:7];
    v18 = [v16 initWithEffect:v17];

    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PXRetailExperienceCardView *)v9 addSubview:v18];
    v19 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [v18 contentView];
    [v20 addSubview:v19];

    v21 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v22 = [MEMORY[0x1E69DC888] separatorColor];
    [v21 setBackgroundColor:v22];

    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v128 = v18;
    v23 = [v18 contentView];
    v108 = v21;
    [v23 addSubview:v21];

    v24 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v25 = [(PXRetailExperienceCardView *)v9 title];
    [v24 setText:v25];

    v26 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] weight:*MEMORY[0x1E69DB958]];
    [v24 setFont:v26];

    [v24 setNumberOfLines:0];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v19 addSubview:v24];
    v27 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v107 = v9;
    v28 = [(PXRetailExperienceCardView *)v9 message];
    [v27 setText:v28];

    v29 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [v27 setFont:v29];

    [v27 setNumberOfLines:0];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v19 addSubview:v27];
    v123 = MEMORY[0x1E696ACD8];
    v161 = [v24 topAnchor];
    v157 = [v19 topAnchor];
    v153 = [v161 constraintEqualToAnchor:v157];
    v179[0] = v153;
    v149 = [v24 leadingAnchor];
    v145 = [v19 leadingAnchor];
    v141 = [v149 constraintEqualToAnchor:v145];
    v179[1] = v141;
    v137 = [v24 trailingAnchor];
    v133 = [v19 trailingAnchor];
    v129 = [v137 constraintEqualToAnchor:v133];
    v179[2] = v129;
    v119 = [v27 topAnchor];
    v103 = v24;
    v115 = [v24 bottomAnchor];
    v113 = [v119 constraintEqualToAnchor:v115 constant:8.0];
    v179[3] = v113;
    obja = [v27 leadingAnchor];
    v30 = [v19 leadingAnchor];
    v31 = [obja constraintEqualToAnchor:v30];
    v179[4] = v31;
    v32 = [v27 trailingAnchor];
    v33 = [v19 trailingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    v179[5] = v34;
    v102 = v27;
    v35 = [v27 bottomAnchor];
    v127 = v19;
    v36 = [v19 bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
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
          v44 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
          [v44 setButtonSize:3];
          [v44 setCornerStyle:4];
          v158 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v120 weight:v40];
          v45 = objc_alloc(MEMORY[0x1E696AAB0]);
          v46 = [v43 title];
          v176 = v116;
          v177 = v158;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v177 forKeys:&v176 count:1];
          v154 = [v45 initWithString:v46 attributes:v47];

          v150 = v44;
          [v44 setAttributedTitle:v154];
          v48 = MEMORY[0x1E69DC738];
          v168[0] = MEMORY[0x1E69E9820];
          v168[1] = 3221225472;
          v168[2] = __46__PXRetailExperienceCardView__didMoveToWindow__block_invoke;
          v168[3] = &unk_1E7743BF8;
          v168[4] = v43;
          v49 = [MEMORY[0x1E69DC628] actionWithTitle:&stru_1F1741150 image:0 identifier:0 handler:v168];
          v39 = [v48 buttonWithConfiguration:v44 primaryAction:v49];

          [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
          v50 = [v128 contentView];
          [v50 addSubview:v39];

          v134 = MEMORY[0x1E696ACD8];
          v146 = [v39 trailingAnchor];
          v142 = [v128 trailingAnchor];
          v138 = [v146 constraintEqualToAnchor:v142 constant:-24.0];
          v175[0] = v138;
          v51 = [v39 centerYAnchor];
          v52 = [v127 centerYAnchor];
          v53 = [v51 constraintEqualToAnchor:v52];
          v175[1] = v53;
          v54 = [v39 widthAnchor];
          [v39 intrinsicContentSize];
          v56 = [v54 constraintGreaterThanOrEqualToConstant:v55 + 12.0];
          v175[2] = v56;
          v57 = [v39 heightAnchor];
          v58 = [v128 heightAnchor];
          v59 = [v57 constraintLessThanOrEqualToAnchor:v58 constant:-48.0];
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
    v163 = [v108 centerYAnchor];
    v159 = [v128 bottomAnchor];
    v155 = [v163 constraintEqualToAnchor:v159 constant:-24.0];
    v174[0] = v155;
    v151 = [v108 leadingAnchor];
    v147 = [v128 leadingAnchor];
    v143 = [v151 constraintEqualToAnchor:v147 constant:24.0];
    v174[1] = v143;
    v139 = [v108 trailingAnchor];
    v135 = [v128 trailingAnchor];
    v125 = [v139 constraintEqualToAnchor:v135 constant:-24.0];
    v174[2] = v125;
    v121 = [v108 heightAnchor];
    v117 = [v121 constraintEqualToConstant:0.5];
    v174[3] = v117;
    v64 = [v127 bottomAnchor];
    v65 = [v108 centerYAnchor];
    v66 = [v64 constraintEqualToAnchor:v65 constant:-24.0];
    v174[4] = v66;
    v67 = [v127 leadingAnchor];
    v68 = [v128 leadingAnchor];
    v69 = [v67 constraintEqualToAnchor:v68 constant:24.0];
    v174[5] = v69;
    v70 = [v127 trailingAnchor];
    v71 = [v39 leadingAnchor];
    v72 = [v70 constraintEqualToAnchor:v71 constant:-24.0];
    v174[6] = v72;
    v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:7];
    [v131 activateConstraints:v73];

    v99 = MEMORY[0x1E696ACD8];
    v164 = [(PXRetailExperienceCardView *)v107 heightAnchor];
    v160 = [v164 constraintEqualToConstant:v63];
    v173[0] = v160;
    v156 = [(PXRetailExperienceCardView *)v107 widthAnchor];
    v152 = [v156 constraintEqualToConstant:v62];
    v173[1] = v152;
    v148 = [v110 topAnchor];
    v144 = [(PXRetailExperienceCardView *)v107 topAnchor];
    v140 = [v148 constraintEqualToAnchor:v144];
    v173[2] = v140;
    v136 = [v110 leadingAnchor];
    v132 = [(PXRetailExperienceCardView *)v107 leadingAnchor];
    v126 = [v136 constraintEqualToAnchor:v132];
    v173[3] = v126;
    v122 = [v110 trailingAnchor];
    v118 = [(PXRetailExperienceCardView *)v107 trailingAnchor];
    v114 = [v122 constraintEqualToAnchor:v118];
    v173[4] = v114;
    v101 = [v110 heightAnchor];
    v100 = [v101 constraintEqualToConstant:v63 * 0.6];
    v173[5] = v100;
    v98 = [v128 topAnchor];
    v97 = [v110 bottomAnchor];
    v96 = [v98 constraintEqualToAnchor:v97];
    v173[6] = v96;
    v95 = [v128 bottomAnchor];
    v94 = [(PXRetailExperienceCardView *)v107 bottomAnchor];
    v93 = [v95 constraintEqualToAnchor:v94];
    v173[7] = v93;
    v92 = [v128 leadingAnchor];
    v91 = [(PXRetailExperienceCardView *)v107 leadingAnchor];
    v90 = [v92 constraintEqualToAnchor:v91];
    v173[8] = v90;
    v89 = [v128 trailingAnchor];
    v88 = [(PXRetailExperienceCardView *)v107 trailingAnchor];
    v87 = [v89 constraintEqualToAnchor:v88];
    v173[9] = v87;
    v86 = [v109 topAnchor];
    v85 = [v110 bottomAnchor];
    v84 = [v86 constraintEqualToAnchor:v85];
    v173[10] = v84;
    v83 = [v109 leadingAnchor];
    v74 = [(PXRetailExperienceCardView *)v107 leadingAnchor];
    v75 = [v83 constraintEqualToAnchor:v74];
    v173[11] = v75;
    v76 = [v109 trailingAnchor];
    v77 = [(PXRetailExperienceCardView *)v107 trailingAnchor];
    v78 = [v76 constraintEqualToAnchor:v77];
    v173[12] = v78;
    v79 = [v109 heightAnchor];
    v80 = [v110 heightAnchor];
    v81 = [v79 constraintEqualToAnchor:v80];
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

- (void)addActionWithTitle:(id)a3 action:(id)a4
{
  v11 = a3;
  v6 = a4;
  actions = self->_actions;
  if (!actions)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = self->_actions;
    self->_actions = v8;

    actions = self->_actions;
  }

  v10 = [[_PXCardAction alloc] initWithTitle:v11 action:v6];
  [(NSMutableArray *)actions addObject:v10];
}

@end