@interface PURadioButtonGroup
- (PURadioButtonGroup)initWithImages:(id)images delegate:(id)delegate;
- (PURadioButtonGroupDelegate)radioButtonDelegate;
- (void)_didSelectButton:(id)button;
- (void)deselectAllButtons;
- (void)disableButton:(int64_t)button;
- (void)enableButton:(int64_t)button;
- (void)selectButton:(int64_t)button;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PURadioButtonGroup

- (PURadioButtonGroupDelegate)radioButtonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_radioButtonDelegate);

  return WeakRetained;
}

- (void)deselectAllButtons
{
  buttons = [(PURadioButtonGroup *)self buttons];
  v4 = [buttons count];

  if (v4)
  {
    v5 = 0;
    do
    {
      buttons2 = [(PURadioButtonGroup *)self buttons];
      v7 = [buttons2 objectAtIndexedSubscript:v5];
      [v7 setSelected:0];

      ++v5;
      buttons3 = [(PURadioButtonGroup *)self buttons];
      v9 = [buttons3 count];
    }

    while (v9 > v5);
  }
}

- (void)selectButton:(int64_t)button
{
  buttons = [(PURadioButtonGroup *)self buttons];
  v6 = [buttons count];

  if (v6 > button)
  {
    buttons2 = [(PURadioButtonGroup *)self buttons];
    v8 = [buttons2 count];

    if (v8)
    {
      v9 = 0;
      do
      {
        buttons3 = [(PURadioButtonGroup *)self buttons];
        v11 = [buttons3 objectAtIndexedSubscript:v9];
        [v11 setSelected:0];

        ++v9;
        buttons4 = [(PURadioButtonGroup *)self buttons];
        v13 = [buttons4 count];
      }

      while (v13 > v9);
    }

    buttons5 = [(PURadioButtonGroup *)self buttons];
    v14 = [buttons5 objectAtIndexedSubscript:button];
    [v14 setSelected:1];
  }
}

- (void)enableButton:(int64_t)button
{
  if ([(NSMutableArray *)self->_buttons count]> button)
  {
    v5 = [(NSMutableArray *)self->_buttons objectAtIndexedSubscript:button];
    [v5 setEnabled:1];
  }
}

- (void)disableButton:(int64_t)button
{
  if ([(NSMutableArray *)self->_buttons count]> button)
  {
    v5 = [(NSMutableArray *)self->_buttons objectAtIndexedSubscript:button];
    [v5 setEnabled:0];
  }
}

- (void)_didSelectButton:(id)button
{
  buttonCopy = button;
  [buttonCopy setSelected:{objc_msgSend(buttonCopy, "isSelected") ^ 1}];
  if (![buttonCopy isSelected])
  {
    goto LABEL_9;
  }

  buttons = [(PURadioButtonGroup *)self buttons];
  v5 = [buttons count];

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = 0;
  v7 = -1;
  do
  {
    buttons2 = [(PURadioButtonGroup *)self buttons];
    v9 = [buttons2 objectAtIndexedSubscript:v6];

    v10 = v6;
    if (v9 != buttonCopy)
    {
      buttons3 = [(PURadioButtonGroup *)self buttons];
      v12 = [buttons3 objectAtIndexedSubscript:v6];
      [v12 setSelected:0];

      v10 = v7;
    }

    ++v6;
    buttons4 = [(PURadioButtonGroup *)self buttons];
    v14 = [buttons4 count];

    v7 = v10;
  }

  while (v14 > v6);
  if (v10 != -1)
  {
    radioButtonDelegate = [(PURadioButtonGroup *)self radioButtonDelegate];
    [radioButtonDelegate radioGroupButtonSelectedWithIndex:v10];
  }

  else
  {
LABEL_9:
    radioButtonDelegate = [(PURadioButtonGroup *)self radioButtonDelegate];
    [radioButtonDelegate radioButtonGroupNoneSelected];
  }
}

- (void)updateViewConstraints
{
  v3 = MEMORY[0x1E696ACD8];
  horizontalConstraints = [(PURadioButtonGroup *)self horizontalConstraints];
  [v3 deactivateConstraints:horizontalConstraints];

  v5 = MEMORY[0x1E696ACD8];
  verticalConstraints = [(PURadioButtonGroup *)self verticalConstraints];
  [v5 deactivateConstraints:verticalConstraints];

  radioButtonDelegate = [(PURadioButtonGroup *)self radioButtonDelegate];
  layoutDirection = [radioButtonDelegate layoutDirection];

  v9 = MEMORY[0x1E696ACD8];
  if (layoutDirection)
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = PURadioButtonGroup;
  coordinatorCopy = coordinator;
  [(PURadioButtonGroup *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__PURadioButtonGroup_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7B7DC38;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
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
  tertiarySystemBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
  view = [(PURadioButtonGroup *)self view];
  [view setBackgroundColor:tertiarySystemBackgroundColor];

  view2 = [(PURadioButtonGroup *)self view];
  layer = [view2 layer];
  [layer setCornerRadius:8.0];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  view3 = [(PURadioButtonGroup *)self view];
  [view3 setTintColor:labelColor];

  array = [MEMORY[0x1E695DF70] array];
  [(PURadioButtonGroup *)self setButtons:array];

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  images = [(PURadioButtonGroup *)self images];
  v11 = [images countByEnumeratingWithState:&v123 objects:v138 count:16];
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
          objc_enumerationMutation(images);
        }

        v15 = *(*(&v123 + 1) + 8 * i);
        v16 = [MEMORY[0x1E69DC738] buttonWithType:1];
        [v16 addTarget:self action:sel__didSelectButton_ forControlEvents:64];
        [v16 setImage:v15 forState:0];
        [v16 setPointerInteractionEnabled:1];
        [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
        view4 = [(PURadioButtonGroup *)self view];
        [view4 addSubview:v16];

        buttons = [(PURadioButtonGroup *)self buttons];
        [buttons addObject:v16];
      }

      v12 = [images countByEnumeratingWithState:&v123 objects:v138 count:16];
    }

    while (v12);
  }

  array2 = [MEMORY[0x1E695DF70] array];
  [(PURadioButtonGroup *)self setVerticalConstraints:array2];

  array3 = [MEMORY[0x1E695DF70] array];
  [(PURadioButtonGroup *)self setHorizontalConstraints:array3];

  horizontalConstraints = [(PURadioButtonGroup *)self horizontalConstraints];
  buttons2 = [(PURadioButtonGroup *)self buttons];
  v23 = [buttons2 count];

  if (v23)
  {
    v24 = 0;
    do
    {
      v121 = v24;
      buttons3 = [(PURadioButtonGroup *)self buttons];
      v26 = [buttons3 objectAtIndexedSubscript:v24];

      heightAnchor = [v26 heightAnchor];
      view5 = [(PURadioButtonGroup *)self view];
      heightAnchor2 = [view5 heightAnchor];
      v28 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2 constant:-20.0];
      v137[0] = v28;
      [v26 centerYAnchor];
      v30 = v29 = horizontalConstraints;
      view6 = [(PURadioButtonGroup *)self view];
      centerYAnchor = [view6 centerYAnchor];
      v33 = [v30 constraintEqualToAnchor:centerYAnchor];
      v137[1] = v33;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:2];
      [v29 addObjectsFromArray:v34];

      horizontalConstraints = v29;
      if (!v121)
      {
        leadingAnchor = [v26 leadingAnchor];
        view7 = [(PURadioButtonGroup *)self view];
        leadingAnchor2 = [view7 leadingAnchor];
        v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
        v136 = v38;
        v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v136 count:1];
        [horizontalConstraints addObjectsFromArray:v39];

        buttons4 = [(PURadioButtonGroup *)self buttons];
        v41 = [buttons4 count];

        if (v41 >= 2)
        {
          trailingAnchor = [v26 trailingAnchor];
          buttons5 = [(PURadioButtonGroup *)self buttons];
          v44 = [buttons5 objectAtIndexedSubscript:1];
          leadingAnchor3 = [v44 leadingAnchor];
          v46 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-24.0];
          v135 = v46;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v135 count:1];
          v48 = v47 = v26;
          [horizontalConstraints addObjectsFromArray:v48];

          v26 = v47;
        }
      }

      buttons6 = [(PURadioButtonGroup *)self buttons];
      v50 = [buttons6 count] - 1;

      if (v121 == v50)
      {
        trailingAnchor2 = [v26 trailingAnchor];
        view8 = [(PURadioButtonGroup *)self view];
        trailingAnchor3 = [view8 trailingAnchor];
        v54 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-10.0];
        v134 = v54;
        v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v134 count:1];
        [horizontalConstraints addObjectsFromArray:v55];
      }

      if (v121)
      {
        buttons7 = [(PURadioButtonGroup *)self buttons];
        v57 = [buttons7 count] - 1;

        if (v121 != v57)
        {
          trailingAnchor4 = [v26 trailingAnchor];
          buttons8 = [(PURadioButtonGroup *)self buttons];
          v60 = [buttons8 objectAtIndexedSubscript:v121 + 1];
          leadingAnchor4 = [v60 leadingAnchor];
          v62 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor4 constant:-24.0];
          v133 = v62;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v133 count:1];
          v64 = v63 = v26;
          [horizontalConstraints addObjectsFromArray:v64];

          v26 = v63;
        }
      }

      v24 = v121 + 1;
      buttons9 = [(PURadioButtonGroup *)self buttons];
      v66 = [buttons9 count];
    }

    while (v66 > v121 + 1);
  }

  verticalConstraints = [(PURadioButtonGroup *)self verticalConstraints];
  buttons10 = [(PURadioButtonGroup *)self buttons];
  v69 = [buttons10 count];

  if (v69)
  {
    v70 = 0;
    do
    {
      v122 = v70;
      buttons11 = [(PURadioButtonGroup *)self buttons];
      v72 = [buttons11 objectAtIndexedSubscript:v70];

      widthAnchor = [v72 widthAnchor];
      view9 = [(PURadioButtonGroup *)self view];
      widthAnchor2 = [view9 widthAnchor];
      v74 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 constant:-20.0];
      v132[0] = v74;
      [v72 centerXAnchor];
      v76 = v75 = verticalConstraints;
      view10 = [(PURadioButtonGroup *)self view];
      centerXAnchor = [view10 centerXAnchor];
      v79 = [v76 constraintEqualToAnchor:centerXAnchor];
      v132[1] = v79;
      v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:2];
      [v75 addObjectsFromArray:v80];

      verticalConstraints = v75;
      if (!v122)
      {
        topAnchor = [v72 topAnchor];
        view11 = [(PURadioButtonGroup *)self view];
        topAnchor2 = [view11 topAnchor];
        v84 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:14.0];
        v131 = v84;
        v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:1];
        [verticalConstraints addObjectsFromArray:v85];

        buttons12 = [(PURadioButtonGroup *)self buttons];
        v87 = [buttons12 count];

        if (v87 >= 2)
        {
          bottomAnchor = [v72 bottomAnchor];
          buttons13 = [(PURadioButtonGroup *)self buttons];
          v90 = [buttons13 objectAtIndexedSubscript:1];
          topAnchor3 = [v90 topAnchor];
          v92 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-24.0];
          v130 = v92;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1];
          v94 = v93 = v72;
          [verticalConstraints addObjectsFromArray:v94];

          v72 = v93;
        }
      }

      buttons14 = [(PURadioButtonGroup *)self buttons];
      v96 = [buttons14 count] - 1;

      if (v122 == v96)
      {
        bottomAnchor2 = [v72 bottomAnchor];
        view12 = [(PURadioButtonGroup *)self view];
        bottomAnchor3 = [view12 bottomAnchor];
        v100 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-14.0];
        v129 = v100;
        v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v129 count:1];
        [verticalConstraints addObjectsFromArray:v101];
      }

      if (v122)
      {
        buttons15 = [(PURadioButtonGroup *)self buttons];
        v103 = [buttons15 count] - 1;

        if (v122 != v103)
        {
          bottomAnchor4 = [v72 bottomAnchor];
          buttons16 = [(PURadioButtonGroup *)self buttons];
          v106 = [buttons16 objectAtIndexedSubscript:v122 + 1];
          topAnchor4 = [v106 topAnchor];
          v108 = [bottomAnchor4 constraintEqualToAnchor:topAnchor4 constant:-24.0];
          v128 = v108;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v128 count:1];
          v110 = v109 = v72;
          [verticalConstraints addObjectsFromArray:v110];

          v72 = v109;
        }
      }

      v70 = v122 + 1;
      buttons17 = [(PURadioButtonGroup *)self buttons];
      v112 = [buttons17 count];
    }

    while (v112 > v122 + 1);
  }

  radioButtonDelegate = [(PURadioButtonGroup *)self radioButtonDelegate];
  layoutDirection = [radioButtonDelegate layoutDirection];

  v115 = MEMORY[0x1E696ACD8];
  if (layoutDirection)
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

- (PURadioButtonGroup)initWithImages:(id)images delegate:(id)delegate
{
  imagesCopy = images;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = PURadioButtonGroup;
  v8 = [(PURadioButtonGroup *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_radioButtonDelegate, delegateCopy);
    v10 = [imagesCopy copy];
    images = v9->_images;
    v9->_images = v10;
  }

  return v9;
}

@end