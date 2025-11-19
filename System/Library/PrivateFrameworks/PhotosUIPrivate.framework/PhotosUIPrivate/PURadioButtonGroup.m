@interface PURadioButtonGroup
- (PURadioButtonGroup)initWithImages:(id)a3 delegate:(id)a4;
- (PURadioButtonGroupDelegate)radioButtonDelegate;
- (void)_didSelectButton:(id)a3;
- (void)deselectAllButtons;
- (void)disableButton:(int64_t)a3;
- (void)enableButton:(int64_t)a3;
- (void)selectButton:(int64_t)a3;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PURadioButtonGroup

- (PURadioButtonGroupDelegate)radioButtonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_radioButtonDelegate);

  return WeakRetained;
}

- (void)deselectAllButtons
{
  v3 = [(PURadioButtonGroup *)self buttons];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [(PURadioButtonGroup *)self buttons];
      v7 = [v6 objectAtIndexedSubscript:v5];
      [v7 setSelected:0];

      ++v5;
      v8 = [(PURadioButtonGroup *)self buttons];
      v9 = [v8 count];
    }

    while (v9 > v5);
  }
}

- (void)selectButton:(int64_t)a3
{
  v5 = [(PURadioButtonGroup *)self buttons];
  v6 = [v5 count];

  if (v6 > a3)
  {
    v7 = [(PURadioButtonGroup *)self buttons];
    v8 = [v7 count];

    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = [(PURadioButtonGroup *)self buttons];
        v11 = [v10 objectAtIndexedSubscript:v9];
        [v11 setSelected:0];

        ++v9;
        v12 = [(PURadioButtonGroup *)self buttons];
        v13 = [v12 count];
      }

      while (v13 > v9);
    }

    v15 = [(PURadioButtonGroup *)self buttons];
    v14 = [v15 objectAtIndexedSubscript:a3];
    [v14 setSelected:1];
  }
}

- (void)enableButton:(int64_t)a3
{
  if ([(NSMutableArray *)self->_buttons count]> a3)
  {
    v5 = [(NSMutableArray *)self->_buttons objectAtIndexedSubscript:a3];
    [v5 setEnabled:1];
  }
}

- (void)disableButton:(int64_t)a3
{
  if ([(NSMutableArray *)self->_buttons count]> a3)
  {
    v5 = [(NSMutableArray *)self->_buttons objectAtIndexedSubscript:a3];
    [v5 setEnabled:0];
  }
}

- (void)_didSelectButton:(id)a3
{
  v16 = a3;
  [v16 setSelected:{objc_msgSend(v16, "isSelected") ^ 1}];
  if (![v16 isSelected])
  {
    goto LABEL_9;
  }

  v4 = [(PURadioButtonGroup *)self buttons];
  v5 = [v4 count];

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = 0;
  v7 = -1;
  do
  {
    v8 = [(PURadioButtonGroup *)self buttons];
    v9 = [v8 objectAtIndexedSubscript:v6];

    v10 = v6;
    if (v9 != v16)
    {
      v11 = [(PURadioButtonGroup *)self buttons];
      v12 = [v11 objectAtIndexedSubscript:v6];
      [v12 setSelected:0];

      v10 = v7;
    }

    ++v6;
    v13 = [(PURadioButtonGroup *)self buttons];
    v14 = [v13 count];

    v7 = v10;
  }

  while (v14 > v6);
  if (v10 != -1)
  {
    v15 = [(PURadioButtonGroup *)self radioButtonDelegate];
    [v15 radioGroupButtonSelectedWithIndex:v10];
  }

  else
  {
LABEL_9:
    v15 = [(PURadioButtonGroup *)self radioButtonDelegate];
    [v15 radioButtonGroupNoneSelected];
  }
}

- (void)updateViewConstraints
{
  v3 = MEMORY[0x1E696ACD8];
  v4 = [(PURadioButtonGroup *)self horizontalConstraints];
  [v3 deactivateConstraints:v4];

  v5 = MEMORY[0x1E696ACD8];
  v6 = [(PURadioButtonGroup *)self verticalConstraints];
  [v5 deactivateConstraints:v6];

  v7 = [(PURadioButtonGroup *)self radioButtonDelegate];
  v8 = [v7 layoutDirection];

  v9 = MEMORY[0x1E696ACD8];
  if (v8)
  {
    [(PURadioButtonGroup *)self verticalConstraints];
  }

  else
  {
    [(PURadioButtonGroup *)self horizontalConstraints];
  }
  v10 = ;
  [v9 activateConstraints:v10];

  v11.receiver = self;
  v11.super_class = PURadioButtonGroup;
  [(PURadioButtonGroup *)&v11 updateViewConstraints];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = PURadioButtonGroup;
  v7 = a4;
  [(PURadioButtonGroup *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__PURadioButtonGroup_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7B7DC38;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

void __73__PURadioButtonGroup_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setNeedsUpdateConstraints];
}

- (void)viewDidLoad
{
  v139 = *MEMORY[0x1E69E9840];
  v127.receiver = self;
  v127.super_class = PURadioButtonGroup;
  [(PURadioButtonGroup *)&v127 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
  v4 = [(PURadioButtonGroup *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(PURadioButtonGroup *)self view];
  v6 = [v5 layer];
  [v6 setCornerRadius:8.0];

  v7 = [MEMORY[0x1E69DC888] labelColor];
  v8 = [(PURadioButtonGroup *)self view];
  [v8 setTintColor:v7];

  v9 = [MEMORY[0x1E695DF70] array];
  [(PURadioButtonGroup *)self setButtons:v9];

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v10 = [(PURadioButtonGroup *)self images];
  v11 = [v10 countByEnumeratingWithState:&v123 objects:v138 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v124;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v124 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v123 + 1) + 8 * i);
        v16 = [MEMORY[0x1E69DC738] buttonWithType:1];
        [v16 addTarget:self action:sel__didSelectButton_ forControlEvents:64];
        [v16 setImage:v15 forState:0];
        [v16 setPointerInteractionEnabled:1];
        [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
        v17 = [(PURadioButtonGroup *)self view];
        [v17 addSubview:v16];

        v18 = [(PURadioButtonGroup *)self buttons];
        [v18 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v123 objects:v138 count:16];
    }

    while (v12);
  }

  v19 = [MEMORY[0x1E695DF70] array];
  [(PURadioButtonGroup *)self setVerticalConstraints:v19];

  v20 = [MEMORY[0x1E695DF70] array];
  [(PURadioButtonGroup *)self setHorizontalConstraints:v20];

  v21 = [(PURadioButtonGroup *)self horizontalConstraints];
  v22 = [(PURadioButtonGroup *)self buttons];
  v23 = [v22 count];

  if (v23)
  {
    v24 = 0;
    do
    {
      v121 = v24;
      v25 = [(PURadioButtonGroup *)self buttons];
      v26 = [v25 objectAtIndexedSubscript:v24];

      v117 = [v26 heightAnchor];
      v119 = [(PURadioButtonGroup *)self view];
      v27 = [v119 heightAnchor];
      v28 = [v117 constraintLessThanOrEqualToAnchor:v27 constant:-20.0];
      v137[0] = v28;
      [v26 centerYAnchor];
      v30 = v29 = v21;
      v31 = [(PURadioButtonGroup *)self view];
      v32 = [v31 centerYAnchor];
      v33 = [v30 constraintEqualToAnchor:v32];
      v137[1] = v33;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:2];
      [v29 addObjectsFromArray:v34];

      v21 = v29;
      if (!v121)
      {
        v35 = [v26 leadingAnchor];
        v36 = [(PURadioButtonGroup *)self view];
        v37 = [v36 leadingAnchor];
        v38 = [v35 constraintEqualToAnchor:v37 constant:10.0];
        v136 = v38;
        v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v136 count:1];
        [v21 addObjectsFromArray:v39];

        v40 = [(PURadioButtonGroup *)self buttons];
        v41 = [v40 count];

        if (v41 >= 2)
        {
          v42 = [v26 trailingAnchor];
          v43 = [(PURadioButtonGroup *)self buttons];
          v44 = [v43 objectAtIndexedSubscript:1];
          v45 = [v44 leadingAnchor];
          v46 = [v42 constraintEqualToAnchor:v45 constant:-24.0];
          v135 = v46;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v135 count:1];
          v48 = v47 = v26;
          [v21 addObjectsFromArray:v48];

          v26 = v47;
        }
      }

      v49 = [(PURadioButtonGroup *)self buttons];
      v50 = [v49 count] - 1;

      if (v121 == v50)
      {
        v51 = [v26 trailingAnchor];
        v52 = [(PURadioButtonGroup *)self view];
        v53 = [v52 trailingAnchor];
        v54 = [v51 constraintEqualToAnchor:v53 constant:-10.0];
        v134 = v54;
        v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v134 count:1];
        [v21 addObjectsFromArray:v55];
      }

      if (v121)
      {
        v56 = [(PURadioButtonGroup *)self buttons];
        v57 = [v56 count] - 1;

        if (v121 != v57)
        {
          v58 = [v26 trailingAnchor];
          v59 = [(PURadioButtonGroup *)self buttons];
          v60 = [v59 objectAtIndexedSubscript:v121 + 1];
          v61 = [v60 leadingAnchor];
          v62 = [v58 constraintEqualToAnchor:v61 constant:-24.0];
          v133 = v62;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v133 count:1];
          v64 = v63 = v26;
          [v21 addObjectsFromArray:v64];

          v26 = v63;
        }
      }

      v24 = v121 + 1;
      v65 = [(PURadioButtonGroup *)self buttons];
      v66 = [v65 count];
    }

    while (v66 > v121 + 1);
  }

  v67 = [(PURadioButtonGroup *)self verticalConstraints];
  v68 = [(PURadioButtonGroup *)self buttons];
  v69 = [v68 count];

  if (v69)
  {
    v70 = 0;
    do
    {
      v122 = v70;
      v71 = [(PURadioButtonGroup *)self buttons];
      v72 = [v71 objectAtIndexedSubscript:v70];

      v118 = [v72 widthAnchor];
      v120 = [(PURadioButtonGroup *)self view];
      v73 = [v120 widthAnchor];
      v74 = [v118 constraintLessThanOrEqualToAnchor:v73 constant:-20.0];
      v132[0] = v74;
      [v72 centerXAnchor];
      v76 = v75 = v67;
      v77 = [(PURadioButtonGroup *)self view];
      v78 = [v77 centerXAnchor];
      v79 = [v76 constraintEqualToAnchor:v78];
      v132[1] = v79;
      v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:2];
      [v75 addObjectsFromArray:v80];

      v67 = v75;
      if (!v122)
      {
        v81 = [v72 topAnchor];
        v82 = [(PURadioButtonGroup *)self view];
        v83 = [v82 topAnchor];
        v84 = [v81 constraintEqualToAnchor:v83 constant:14.0];
        v131 = v84;
        v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:1];
        [v67 addObjectsFromArray:v85];

        v86 = [(PURadioButtonGroup *)self buttons];
        v87 = [v86 count];

        if (v87 >= 2)
        {
          v88 = [v72 bottomAnchor];
          v89 = [(PURadioButtonGroup *)self buttons];
          v90 = [v89 objectAtIndexedSubscript:1];
          v91 = [v90 topAnchor];
          v92 = [v88 constraintEqualToAnchor:v91 constant:-24.0];
          v130 = v92;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1];
          v94 = v93 = v72;
          [v67 addObjectsFromArray:v94];

          v72 = v93;
        }
      }

      v95 = [(PURadioButtonGroup *)self buttons];
      v96 = [v95 count] - 1;

      if (v122 == v96)
      {
        v97 = [v72 bottomAnchor];
        v98 = [(PURadioButtonGroup *)self view];
        v99 = [v98 bottomAnchor];
        v100 = [v97 constraintEqualToAnchor:v99 constant:-14.0];
        v129 = v100;
        v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v129 count:1];
        [v67 addObjectsFromArray:v101];
      }

      if (v122)
      {
        v102 = [(PURadioButtonGroup *)self buttons];
        v103 = [v102 count] - 1;

        if (v122 != v103)
        {
          v104 = [v72 bottomAnchor];
          v105 = [(PURadioButtonGroup *)self buttons];
          v106 = [v105 objectAtIndexedSubscript:v122 + 1];
          v107 = [v106 topAnchor];
          v108 = [v104 constraintEqualToAnchor:v107 constant:-24.0];
          v128 = v108;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v128 count:1];
          v110 = v109 = v72;
          [v67 addObjectsFromArray:v110];

          v72 = v109;
        }
      }

      v70 = v122 + 1;
      v111 = [(PURadioButtonGroup *)self buttons];
      v112 = [v111 count];
    }

    while (v112 > v122 + 1);
  }

  v113 = [(PURadioButtonGroup *)self radioButtonDelegate];
  v114 = [v113 layoutDirection];

  v115 = MEMORY[0x1E696ACD8];
  if (v114)
  {
    [(PURadioButtonGroup *)self verticalConstraints];
  }

  else
  {
    [(PURadioButtonGroup *)self horizontalConstraints];
  }
  v116 = ;
  [v115 activateConstraints:v116];
}

- (PURadioButtonGroup)initWithImages:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PURadioButtonGroup;
  v8 = [(PURadioButtonGroup *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_radioButtonDelegate, v7);
    v10 = [v6 copy];
    images = v9->_images;
    v9->_images = v10;
  }

  return v9;
}

@end