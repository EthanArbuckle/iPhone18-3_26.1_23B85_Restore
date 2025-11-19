@interface PUPhotoEditToolPickerController
- (PUPhotoEditToolPickerController)initWithLayoutDirection:(int64_t)a3 style:(int64_t)a4 blurredBackground:(BOOL)a5;
- (UIView)contentView;
- (void)_updateBackgroundColor;
- (void)loadView;
- (void)setBackgroundColor:(id)a3;
- (void)setLayoutDirection:(int64_t)a3;
- (void)setParentSpec:(id)a3;
- (void)setSelectedToolTag:(int64_t)a3;
- (void)setStyle:(int64_t)a3;
- (void)setToolButtons:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PUPhotoEditToolPickerController

- (void)setParentSpec:(id)a3
{
  objc_storeStrong(&self->_parentSpec, a3);
  v5 = a3;
  v6 = [(PUPhotoEditToolPickerController *)self toolPickerSpec];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PUPhotoEditToolPickerController_setParentSpec___block_invoke;
  v7[3] = &unk_1E7B80DD0;
  v7[4] = self;
  [v6 performChanges:v7];

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

- (void)setSelectedToolTag:(int64_t)a3
{
  if ([(PUPhotoEditToolPickerController *)self selectedToolTag]!= a3)
  {
    self->_selectedToolTag = a3;
  }
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = PUPhotoEditToolPickerController;
  [(PUPhotoEditToolPickerController *)&v15 viewDidLayoutSubviews];
  v3 = [(PUPhotoEditToolPickerController *)self toolPickerSpec];
  v4 = [v3 currentLayoutStyle];

  if (v4 == 4)
  {
    v5 = [(PUPhotoEditToolPickerController *)self view];
    v6 = [v5 layer];
    [v6 setCornerRadius:20.0];

    v7 = *MEMORY[0x1E69796E8];
    v8 = [(PUPhotoEditToolPickerController *)self view];
    v9 = [v8 layer];
    [v9 setCornerCurve:v7];

    v10 = [(PUPhotoEditToolPickerController *)self blurEffectView];

    if (v10)
    {
      v11 = [(PUPhotoEditToolPickerController *)self blurEffectView];
      v12 = [v11 layer];
      [v12 setCornerRadius:20.0];

      v13 = [(PUPhotoEditToolPickerController *)self blurEffectView];
      v14 = [v13 layer];
      [v14 setCornerCurve:v7];
    }
  }
}

- (void)updateViewConstraints
{
  v2 = self;
  v66 = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditToolPickerController *)self view];
  v4 = [(PUPhotoEditToolPickerController *)v2 toolButtonConstraints];

  if (v4)
  {
    v5 = [(PUPhotoEditToolPickerController *)v2 toolButtonConstraints];
    [v3 removeConstraints:v5];

    [(PUPhotoEditToolPickerController *)v2 setToolButtonConstraints:0];
  }

  v6 = objc_opt_new();
  v7 = [(PUPhotoEditToolPickerController *)v2 toolButtons];
  v57 = [v7 lastObject];

  v58 = [(PUPhotoEditToolPickerController *)v2 toolPickerSpec];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [(PUPhotoEditToolPickerController *)v2 toolButtons];
  v8 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_24;
  }

  v9 = v8;
  v10 = 0;
  v53 = v2;
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
      if ([(PUPhotoEditToolPickerController *)v2 layoutDirection])
      {
        v14 = [v13 topAnchor];
        if (v12)
        {
          v15 = [v12 bottomAnchor];
          v16 = [(PUPhotoEditToolPickerController *)v2 toolButtons];
          [v58 interToolVerticalSpacingForToolCount:{objc_msgSend(v16, "count")}];
          v17 = [v14 constraintEqualToAnchor:v15 constant:?];
          [v6 addObject:v17];
        }

        else
        {
          v15 = [v3 topAnchor];
          [v58 toolParentViewEdgeSpacing];
          v16 = [v14 constraintEqualToAnchor:v15 constant:?];
          [v6 addObject:v16];
        }

        v20 = [v13 leftAnchor];
        v21 = [v3 leftAnchor];
        v22 = [v20 constraintEqualToAnchor:v21 constant:23.0];
        [v6 addObject:v22];

        v23 = [v13 rightAnchor];
        v24 = [v3 rightAnchor];
        v25 = [v23 constraintEqualToAnchor:v24 constant:-23.0];
        [v6 addObject:v25];

        v2 = v53;
        if (v13 == v57)
        {
          v26 = [v13 bottomAnchor];
          v27 = [v3 bottomAnchor];
LABEL_19:
          v32 = v27;
          [v58 toolParentViewEdgeSpacing];
          v34 = [v26 constraintEqualToAnchor:v32 constant:-v33];
          [v6 addObject:v34];
        }
      }

      else
      {
        v18 = [v13 leftAnchor];
        if (v12)
        {
          v19 = [v12 rightAnchor];
          [v58 interToolSpacing];
        }

        else
        {
          v19 = [v3 leftAnchor];
          [v58 toolParentViewEdgeSpacing];
        }

        v28 = [v18 constraintEqualToAnchor:v19 constant:?];
        [v6 addObject:v28];

        v29 = [v13 centerYAnchor];
        v30 = [v3 centerYAnchor];
        v31 = [v29 constraintEqualToAnchor:v30];
        [v6 addObject:v31];

        if (v13 == v57)
        {
          v26 = [v13 rightAnchor];
          v27 = [v3 rightAnchor];
          goto LABEL_19;
        }
      }

      v10 = v13;
    }

    v9 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
  }

  while (v9);
LABEL_24:

  [(PUPhotoEditToolPickerController *)v2 blurEffectView];
  v36 = v35 = v2;

  if (v36)
  {
    v56 = [(PUPhotoEditToolPickerController *)v35 blurEffectView];
    v54 = [v56 leftAnchor];
    obja = [v3 leftAnchor];
    v50 = [v54 constraintEqualToAnchor:obja];
    v64[0] = v50;
    v49 = [(PUPhotoEditToolPickerController *)v35 blurEffectView];
    v48 = [v49 rightAnchor];
    v47 = [v3 rightAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v64[1] = v46;
    v45 = [(PUPhotoEditToolPickerController *)v35 blurEffectView];
    v44 = [v45 topAnchor];
    v43 = [v3 topAnchor];
    v37 = [v44 constraintEqualToAnchor:v43];
    v64[2] = v37;
    v38 = [(PUPhotoEditToolPickerController *)v35 blurEffectView];
    v39 = [v38 bottomAnchor];
    v40 = [v3 bottomAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    v64[3] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
    [v6 addObjectsFromArray:v42];
  }

  [(PUPhotoEditToolPickerController *)v35 setToolButtonConstraints:v6];
  [v3 addConstraints:v6];
  v59.receiver = v35;
  v59.super_class = PUPhotoEditToolPickerController;
  [(PUPhotoEditToolPickerController *)&v59 updateViewConstraints];
}

- (UIView)contentView
{
  v3 = [(PUPhotoEditToolPickerController *)self view];
  v4 = [(PUPhotoEditToolPickerController *)self blurEffectView];
  v5 = [v4 contentView];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(PUPhotoEditToolPickerController *)self view];
  }

  v8 = v7;

  return v8;
}

- (void)_updateBackgroundColor
{
  v3 = [(PUPhotoEditToolPickerController *)self blurredBackground];
  v6 = [(PUPhotoEditToolPickerController *)self backgroundColor];
  if (v3)
  {
    v4 = [(PUPhotoEditToolPickerController *)self blurEffectView];
    [v4 setBackgroundColor:v6];

    v6 = [(PUPhotoEditToolPickerController *)self view];
    [v6 setBackgroundColor:0];
  }

  else
  {
    v5 = [(PUPhotoEditToolPickerController *)self view];
    [v5 setBackgroundColor:v6];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_backgroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_backgroundColor, a3);
    [(PUPhotoEditToolPickerController *)self _updateBackgroundColor];
    v5 = v6;
  }
}

- (void)setToolButtons:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v27 = a3;
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

  v8 = [v27 copy];
  toolButtons = val->_toolButtons;
  val->_toolButtons = v8;

  v10 = [(PUPhotoEditToolPickerController *)val toolPickerSpec];
  [v10 toolButtonPointerInteractionHighlightPadding];

  PXEdgeInsetsMake();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(PUPhotoEditToolPickerController *)val contentView];
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
        [v19 addSubview:{v24, v27}];
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

  v26 = [(PUPhotoEditToolPickerController *)val view];
  [v26 setNeedsUpdateConstraints];
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

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    v4 = [(PUPhotoEditToolPickerController *)self view];
    [v4 setNeedsUpdateConstraints];
  }
}

- (void)setLayoutDirection:(int64_t)a3
{
  self->_layoutDirection = a3;
  v3 = [(PUPhotoEditToolPickerController *)self view];
  [v3 setNeedsUpdateConstraints];
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

- (PUPhotoEditToolPickerController)initWithLayoutDirection:(int64_t)a3 style:(int64_t)a4 blurredBackground:(BOOL)a5
{
  v14.receiver = self;
  v14.super_class = PUPhotoEditToolPickerController;
  v8 = [(PUPhotoEditToolPickerController *)&v14 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v8->_layoutDirection = a3;
    v8->_style = a4;
    v10 = objc_alloc_init(PUPhotoEditToolPickerSpec);
    toolPickerSpec = v9->_toolPickerSpec;
    v9->_toolPickerSpec = v10;

    v9->_blurredBackground = a5;
    v12 = v9;
  }

  return v9;
}

@end