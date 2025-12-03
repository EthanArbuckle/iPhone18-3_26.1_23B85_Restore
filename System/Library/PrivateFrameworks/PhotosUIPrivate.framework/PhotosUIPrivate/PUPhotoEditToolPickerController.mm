@interface PUPhotoEditToolPickerController
- (PUPhotoEditToolPickerController)initWithLayoutDirection:(int64_t)direction style:(int64_t)style blurredBackground:(BOOL)background;
- (UIView)contentView;
- (void)_updateBackgroundColor;
- (void)loadView;
- (void)setBackgroundColor:(id)color;
- (void)setLayoutDirection:(int64_t)direction;
- (void)setParentSpec:(id)spec;
- (void)setSelectedToolTag:(int64_t)tag;
- (void)setStyle:(int64_t)style;
- (void)setToolButtons:(id)buttons;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PUPhotoEditToolPickerController

- (void)setParentSpec:(id)spec
{
  objc_storeStrong(&self->_parentSpec, spec);
  specCopy = spec;
  toolPickerSpec = [(PUPhotoEditToolPickerController *)self toolPickerSpec];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PUPhotoEditToolPickerController_setParentSpec___block_invoke;
  v7[3] = &unk_1E7B80DD0;
  v7[4] = self;
  [toolPickerSpec performChanges:v7];

  [(PUPhotoEditToolPickerController *)self updateViewConstraints];
}

void __49__PUPhotoEditToolPickerController_setParentSpec___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) toolPickerSpec];
  v3 = [*(*(a1 + 32) + 1032) traitCollection];
  [v2 setTraitCollection:v3];

  v4 = [*(a1 + 32) toolPickerSpec];
  [*(*(a1 + 32) + 1032) layoutReferenceSize];
  [v4 setLayoutReferenceSize:?];
}

- (void)setSelectedToolTag:(int64_t)tag
{
  if ([(PUPhotoEditToolPickerController *)self selectedToolTag]!= tag)
  {
    self->_selectedToolTag = tag;
  }
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = PUPhotoEditToolPickerController;
  [(PUPhotoEditToolPickerController *)&v15 viewDidLayoutSubviews];
  toolPickerSpec = [(PUPhotoEditToolPickerController *)self toolPickerSpec];
  currentLayoutStyle = [toolPickerSpec currentLayoutStyle];

  if (currentLayoutStyle == 4)
  {
    view = [(PUPhotoEditToolPickerController *)self view];
    layer = [view layer];
    [layer setCornerRadius:20.0];

    v7 = *MEMORY[0x1E69796E8];
    view2 = [(PUPhotoEditToolPickerController *)self view];
    layer2 = [view2 layer];
    [layer2 setCornerCurve:v7];

    blurEffectView = [(PUPhotoEditToolPickerController *)self blurEffectView];

    if (blurEffectView)
    {
      blurEffectView2 = [(PUPhotoEditToolPickerController *)self blurEffectView];
      layer3 = [blurEffectView2 layer];
      [layer3 setCornerRadius:20.0];

      blurEffectView3 = [(PUPhotoEditToolPickerController *)self blurEffectView];
      layer4 = [blurEffectView3 layer];
      [layer4 setCornerCurve:v7];
    }
  }
}

- (void)updateViewConstraints
{
  selfCopy = self;
  v66 = *MEMORY[0x1E69E9840];
  view = [(PUPhotoEditToolPickerController *)self view];
  toolButtonConstraints = [(PUPhotoEditToolPickerController *)selfCopy toolButtonConstraints];

  if (toolButtonConstraints)
  {
    toolButtonConstraints2 = [(PUPhotoEditToolPickerController *)selfCopy toolButtonConstraints];
    [view removeConstraints:toolButtonConstraints2];

    [(PUPhotoEditToolPickerController *)selfCopy setToolButtonConstraints:0];
  }

  v6 = objc_opt_new();
  toolButtons = [(PUPhotoEditToolPickerController *)selfCopy toolButtons];
  lastObject = [toolButtons lastObject];

  toolPickerSpec = [(PUPhotoEditToolPickerController *)selfCopy toolPickerSpec];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [(PUPhotoEditToolPickerController *)selfCopy toolButtons];
  v8 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_24;
  }

  v9 = v8;
  v10 = 0;
  v53 = selfCopy;
  v55 = *v61;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      v12 = v10;
      if (*v61 != v55)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v60 + 1) + 8 * i);
      [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
      if ([(PUPhotoEditToolPickerController *)selfCopy layoutDirection])
      {
        topAnchor = [v13 topAnchor];
        if (v12)
        {
          bottomAnchor = [v12 bottomAnchor];
          toolButtons2 = [(PUPhotoEditToolPickerController *)selfCopy toolButtons];
          [toolPickerSpec interToolVerticalSpacingForToolCount:{objc_msgSend(toolButtons2, "count")}];
          v17 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];
          [v6 addObject:v17];
        }

        else
        {
          bottomAnchor = [view topAnchor];
          [toolPickerSpec toolParentViewEdgeSpacing];
          toolButtons2 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];
          [v6 addObject:toolButtons2];
        }

        leftAnchor = [v13 leftAnchor];
        leftAnchor2 = [view leftAnchor];
        v22 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:23.0];
        [v6 addObject:v22];

        rightAnchor = [v13 rightAnchor];
        rightAnchor2 = [view rightAnchor];
        v25 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-23.0];
        [v6 addObject:v25];

        selfCopy = v53;
        if (v13 == lastObject)
        {
          bottomAnchor2 = [v13 bottomAnchor];
          bottomAnchor3 = [view bottomAnchor];
LABEL_19:
          v32 = bottomAnchor3;
          [toolPickerSpec toolParentViewEdgeSpacing];
          v34 = [bottomAnchor2 constraintEqualToAnchor:v32 constant:-v33];
          [v6 addObject:v34];
        }
      }

      else
      {
        leftAnchor3 = [v13 leftAnchor];
        if (v12)
        {
          rightAnchor3 = [v12 rightAnchor];
          [toolPickerSpec interToolSpacing];
        }

        else
        {
          rightAnchor3 = [view leftAnchor];
          [toolPickerSpec toolParentViewEdgeSpacing];
        }

        v28 = [leftAnchor3 constraintEqualToAnchor:rightAnchor3 constant:?];
        [v6 addObject:v28];

        centerYAnchor = [v13 centerYAnchor];
        centerYAnchor2 = [view centerYAnchor];
        v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        [v6 addObject:v31];

        if (v13 == lastObject)
        {
          bottomAnchor2 = [v13 rightAnchor];
          bottomAnchor3 = [view rightAnchor];
          goto LABEL_19;
        }
      }

      v10 = v13;
    }

    v9 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
  }

  while (v9);
LABEL_24:

  [(PUPhotoEditToolPickerController *)selfCopy blurEffectView];
  v36 = v35 = selfCopy;

  if (v36)
  {
    blurEffectView = [(PUPhotoEditToolPickerController *)v35 blurEffectView];
    leftAnchor4 = [blurEffectView leftAnchor];
    obja = [view leftAnchor];
    v50 = [leftAnchor4 constraintEqualToAnchor:obja];
    v64[0] = v50;
    blurEffectView2 = [(PUPhotoEditToolPickerController *)v35 blurEffectView];
    rightAnchor4 = [blurEffectView2 rightAnchor];
    rightAnchor5 = [view rightAnchor];
    v46 = [rightAnchor4 constraintEqualToAnchor:rightAnchor5];
    v64[1] = v46;
    blurEffectView3 = [(PUPhotoEditToolPickerController *)v35 blurEffectView];
    topAnchor2 = [blurEffectView3 topAnchor];
    topAnchor3 = [view topAnchor];
    v37 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v64[2] = v37;
    blurEffectView4 = [(PUPhotoEditToolPickerController *)v35 blurEffectView];
    bottomAnchor4 = [blurEffectView4 bottomAnchor];
    bottomAnchor5 = [view bottomAnchor];
    v41 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v64[3] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
    [v6 addObjectsFromArray:v42];
  }

  [(PUPhotoEditToolPickerController *)v35 setToolButtonConstraints:v6];
  [view addConstraints:v6];
  v59.receiver = v35;
  v59.super_class = PUPhotoEditToolPickerController;
  [(PUPhotoEditToolPickerController *)&v59 updateViewConstraints];
}

- (UIView)contentView
{
  view = [(PUPhotoEditToolPickerController *)self view];
  blurEffectView = [(PUPhotoEditToolPickerController *)self blurEffectView];
  contentView = [blurEffectView contentView];
  v6 = contentView;
  if (contentView)
  {
    view2 = contentView;
  }

  else
  {
    view2 = [(PUPhotoEditToolPickerController *)self view];
  }

  v8 = view2;

  return v8;
}

- (void)_updateBackgroundColor
{
  blurredBackground = [(PUPhotoEditToolPickerController *)self blurredBackground];
  backgroundColor = [(PUPhotoEditToolPickerController *)self backgroundColor];
  if (blurredBackground)
  {
    blurEffectView = [(PUPhotoEditToolPickerController *)self blurEffectView];
    [blurEffectView setBackgroundColor:backgroundColor];

    backgroundColor = [(PUPhotoEditToolPickerController *)self view];
    [backgroundColor setBackgroundColor:0];
  }

  else
  {
    view = [(PUPhotoEditToolPickerController *)self view];
    [view setBackgroundColor:backgroundColor];
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_backgroundColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_backgroundColor, color);
    [(PUPhotoEditToolPickerController *)self _updateBackgroundColor];
    colorCopy = v6;
  }
}

- (void)setToolButtons:(id)buttons
{
  v42 = *MEMORY[0x1E69E9840];
  buttonsCopy = buttons;
  val = self;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = self->_toolButtons;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v5)
  {
    v6 = *v37;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v36 + 1) + 8 * i) removeFromSuperview];
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v5);
  }

  v8 = [buttonsCopy copy];
  toolButtons = val->_toolButtons;
  val->_toolButtons = v8;

  toolPickerSpec = [(PUPhotoEditToolPickerController *)val toolPickerSpec];
  [toolPickerSpec toolButtonPointerInteractionHighlightPadding];

  PXEdgeInsetsMake();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  contentView = [(PUPhotoEditToolPickerController *)val contentView];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = val->_toolButtons;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v21)
  {
    v22 = *v33;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v32 + 1) + 8 * j);
        [contentView addSubview:{v24, buttonsCopy}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
          objc_initWeak(&location, val);
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __50__PUPhotoEditToolPickerController_setToolButtons___block_invoke;
          v29[3] = &unk_1E7B78EE8;
          v30[1] = v12;
          v30[2] = v14;
          v30[3] = v16;
          v30[4] = v18;
          objc_copyWeak(v30, &location);
          [v25 setPointerStyleProvider:v29];
          objc_destroyWeak(v30);
          objc_destroyWeak(&location);
        }
      }

      v21 = [(NSArray *)v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v21);
  }

  view = [(PUPhotoEditToolPickerController *)val view];
  [view setNeedsUpdateConstraints];
}

id __50__PUPhotoEditToolPickerController_setToolButtons___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 frame];
  PXEdgeInsetsInsetRect();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = MEMORY[0x1E69DCDC8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = [WeakRetained view];
  v17 = [v16 layer];
  [v17 cornerRadius];
  v19 = [v14 shapeWithRoundedRect:v7 cornerRadius:{v9, v11, v13, v18}];

  v20 = [MEMORY[0x1E69DCDD0] styleWithEffect:v5 shape:v19];

  return v20;
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    view = [(PUPhotoEditToolPickerController *)self view];
    [view setNeedsUpdateConstraints];
  }
}

- (void)setLayoutDirection:(int64_t)direction
{
  self->_layoutDirection = direction;
  view = [(PUPhotoEditToolPickerController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditToolPickerController;
  [(PUPhotoEditToolPickerController *)&v3 viewDidLoad];
  [(PUPhotoEditToolPickerController *)self setLayoutDirection:self->_layoutDirection];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v6 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PUPhotoEditToolPickerController *)self setView:v6];
  if ([(PUPhotoEditToolPickerController *)self blurredBackground])
  {
    v4 = [MEMORY[0x1E69DC730] effectWithBlurRadius:12.0];
    v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v4];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setClipsToBounds:1];
    [v6 addSubview:v5];
    [(PUPhotoEditToolPickerController *)self setBlurEffectView:v5];
  }
}

- (PUPhotoEditToolPickerController)initWithLayoutDirection:(int64_t)direction style:(int64_t)style blurredBackground:(BOOL)background
{
  v14.receiver = self;
  v14.super_class = PUPhotoEditToolPickerController;
  v8 = [(PUPhotoEditToolPickerController *)&v14 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v8->_layoutDirection = direction;
    v8->_style = style;
    v10 = objc_alloc_init(PUPhotoEditToolPickerSpec);
    toolPickerSpec = v9->_toolPickerSpec;
    v9->_toolPickerSpec = v10;

    v9->_blurredBackground = background;
    v12 = v9;
  }

  return v9;
}

@end