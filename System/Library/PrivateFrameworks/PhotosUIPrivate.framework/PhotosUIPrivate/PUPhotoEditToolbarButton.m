@interface PUPhotoEditToolbarButton
+ (id)buttonForTool:(id)a3 showingLabel:(BOOL)a4 selectionIndicatorType:(int64_t)a5 spec:(id)a6;
+ (id)buttonWithImageNamed:(id)a3 selectedImageNamed:(id)a4 accessibilityLabel:(id)a5 spec:(id)a6;
+ (id)constraintsForSelectionIndicatorType:(int64_t)a3 buttonImageView:(id)a4 selectionIndicator:(id)a5;
+ (id)selectionIndicatorImageForType:(int64_t)a3;
- (id)baseConfiguration;
- (id)imageConfigurationForSelectedState:(BOOL)a3;
- (id)imageForState:(unint64_t)a3;
- (id)largeContentImage;
- (id)selectedConfiguration;
- (id)unselectedConfiguration;
- (void)buttonTouchUpAction:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateConfiguration;
@end

@implementation PUPhotoEditToolbarButton

- (id)largeContentImage
{
  v3 = [(PUPhotoEditToolbarButton *)self imageConfigurationForSelectedState:0];
  v4 = MEMORY[0x1E69DCAB8];
  v5 = [(PUPhotoEditToolbarButton *)self unselectedGlyphName];
  v6 = [v4 _systemImageNamed:v5 withConfiguration:v3];

  return v6;
}

- (id)imageForState:(unint64_t)a3
{
  v3 = [(PUPhotoEditToolbarButton *)self imageView];
  v4 = [v3 image];

  return v4;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = PUPhotoEditToolbarButton;
  [(PUPhotoEditToolbarButton *)&v7 setSelected:?];
  v5 = v3;
  v6 = [(PUPhotoEditToolbarButton *)self selectionIndicator];
  [v6 setAlpha:v5];
}

- (void)buttonTouchUpAction:(id)a3
{
  v4 = [(PUPhotoEditToolbarButton *)self actionBlock];

  if (v4)
  {
    v5 = [(PUPhotoEditToolbarButton *)self actionBlock];
    v5[2](v5, self);
  }
}

- (void)updateConfiguration
{
  if (([(PUPhotoEditToolbarButton *)self isSelected]& 1) != 0)
  {
    [(PUPhotoEditToolbarButton *)self selectedConfiguration];
  }

  else
  {
    [(PUPhotoEditToolbarButton *)self unselectedConfiguration];
  }
  v9 = ;
  v3 = [(PUPhotoEditToolbarButton *)self toolLabel];

  if (v3)
  {
    if ([(PUPhotoEditToolbarButton *)self isEnabled]&& [(PUPhotoEditToolbarButton *)self available])
    {
      if ([(PUPhotoEditToolbarButton *)self isSelected])
      {
        v4 = [MEMORY[0x1E69DC888] labelColor];
        v5 = 0;
        v6 = 0;
        v7 = 1;
      }

      else
      {
        v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        v7 = 0;
        v6 = 0;
        v5 = 1;
      }
    }

    else
    {
      v4 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      v7 = 0;
      v5 = 0;
      v6 = 1;
    }

    v8 = [(PUPhotoEditToolbarButton *)self toolLabel];
    [v8 setTextColor:v4];

    if (v6)
    {

      if (!v5)
      {
LABEL_12:
        if (!v7)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else if (!v5)
    {
      goto LABEL_12;
    }

    if (v7)
    {
LABEL_13:
    }
  }

LABEL_14:
  [(PUPhotoEditToolbarButton *)self setConfiguration:v9];
}

- (id)unselectedConfiguration
{
  v3 = [(PUPhotoEditToolbarButton *)self baseConfiguration];
  v4 = [(PUPhotoEditToolbarButton *)self unselectedGlyphName];

  if (v4)
  {
    v5 = [(PUPhotoEditToolbarButton *)self imageConfigurationForSelectedState:0];
    v6 = MEMORY[0x1E69DCAB8];
    v7 = [(PUPhotoEditToolbarButton *)self unselectedGlyphName];
    v8 = [v6 _systemImageNamed:v7 withConfiguration:v5];
    [v3 setImage:v8];
  }

  return v3;
}

- (id)selectedConfiguration
{
  v3 = [(PUPhotoEditToolbarButton *)self baseConfiguration];
  v4 = [(PUPhotoEditToolbarButton *)self imageConfigurationForSelectedState:1];
  v5 = MEMORY[0x1E69DCAB8];
  v6 = [(PUPhotoEditToolbarButton *)self selectedGlyphName];
  v7 = v6;
  if (!v6)
  {
    v7 = [(PUPhotoEditToolbarButton *)self unselectedGlyphName];
  }

  v8 = [v5 _systemImageNamed:v7 withConfiguration:v4];
  [v3 setImage:v8];

  if (!v6)
  {
  }

  return v3;
}

- (id)imageConfigurationForSelectedState:(BOOL)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = +[PUInterfaceManager currentTheme];
  v6 = MEMORY[0x1E69DCAD8];
  if ([(PUPhotoEditToolbarButton *)self isTopToolbarButton])
  {
    [v5 topToolbarToolButtonGlyphSize];
  }

  else
  {
    [v5 editToolbarButtonSize];
  }

  v7 = [v6 configurationWithPointSize:?];
  v8 = [MEMORY[0x1E69DCAD8] configurationWithWeight:4];
  v9 = [(PUPhotoEditToolbarButton *)self selectedColor];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    if ([(PUPhotoEditToolbarButton *)self selectedGlyphHasHighlightColor])
    {
      [v5 photoEditingToolbarMainButtonColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v11 = ;
  }

  v12 = v11;

  v13 = MEMORY[0x1B8C6D660]();
  v14 = [(PUPhotoEditToolbarButton *)self isEnabled];
  if (v13)
  {
    if (v14 && [(PUPhotoEditToolbarButton *)self available])
    {
      if (!a3)
      {
        v15 = [MEMORY[0x1E69DC888] labelColor];
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (!v14 || ![(PUPhotoEditToolbarButton *)self available])
  {
LABEL_19:
    v15 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    goto LABEL_20;
  }

  if (a3)
  {
LABEL_18:
    v15 = v12;
    goto LABEL_20;
  }

  v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
LABEL_20:
  v16 = v15;
  v17 = [(PUPhotoEditToolbarButton *)self usesHierarchicalColor];
  v18 = MEMORY[0x1E69DCAD8];
  if (v17)
  {
    v19 = [MEMORY[0x1E69DCAD8] configurationWithHierarchicalColor:v16];
  }

  else
  {
    v24[0] = v16;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v19 = [v18 configurationWithPaletteColors:v20];
  }

  v21 = [v7 configurationByApplyingConfiguration:v19];
  v22 = [v21 configurationByApplyingConfiguration:v8];

  return v22;
}

- (id)baseConfiguration
{
  v3 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [v3 setButtonSize:2];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBaseBackgroundColor:v4];

  [v3 setTitleLineBreakMode:4];
  v5 = [v3 contentInsets];
  v7 = v6;
  v9 = v8;
  v10 = 0.0;
  if ((MEMORY[0x1B8C6D660](v5) & 1) == 0)
  {
    v11 = [(PUPhotoEditToolbarButton *)self photoEditSpec];
    if ([v11 shouldUseCompactToolbarSpacing])
    {
      v10 = 3.0;
    }

    else
    {
      v10 = 9.0;
    }
  }

  [v3 setContentInsets:{v7, v10, v9, v10}];
  v12 = [(PUPhotoEditToolbarButton *)self toolLabel];

  if (v12)
  {
    [v3 contentInsets];
    [v3 setContentInsets:?];
  }

  return v3;
}

+ (id)constraintsForSelectionIndicatorType:(int64_t)a3 buttonImageView:(id)a4 selectionIndicator:(id)a5
{
  v21[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = v8;
  switch(a3)
  {
    case 3:
      v10 = [v8 centerYAnchor];
      v11 = [v7 centerYAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      v19[0] = v12;
      v13 = [v9 rightAnchor];
      v14 = [v7 leftAnchor];
      v15 = [v13 constraintEqualToAnchor:v14 constant:-4.0];
      v19[1] = v15;
      v16 = v19;
      goto LABEL_7;
    case 2:
      v10 = [v8 centerYAnchor];
      v11 = [v7 centerYAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      v20[0] = v12;
      v13 = [v9 rightAnchor];
      v14 = [v7 leftAnchor];
      v15 = [v13 constraintEqualToAnchor:v14 constant:-4.0];
      v20[1] = v15;
      v16 = v20;
      goto LABEL_7;
    case 1:
      v10 = [v8 centerXAnchor];
      v11 = [v7 centerXAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      v21[0] = v12;
      v13 = [v9 bottomAnchor];
      v14 = [v7 topAnchor];
      v15 = [v13 constraintEqualToAnchor:v14 constant:-5.0];
      v21[1] = v15;
      v16 = v21;
LABEL_7:
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

      goto LABEL_9;
  }

  v17 = 0;
LABEL_9:

  return v17;
}

+ (id)selectionIndicatorImageForType:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:{off_1E7B751A8[a3 - 1], v3}];
  }

  return v5;
}

+ (id)buttonWithImageNamed:(id)a3 selectedImageNamed:(id)a4 accessibilityLabel:(id)a5 spec:(id)a6
{
  v9 = a5;
  v10 = MEMORY[0x1E69DC740];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v10 plainButtonConfiguration];
  v15 = [PUPhotoEditToolbarButton buttonWithConfiguration:v14 primaryAction:0];
  [v15 setPhotoEditSpec:v11];

  [v15 setIsTopToolbarButton:1];
  v16 = [MEMORY[0x1E69C3BF0] configurationWithCursorEffect:1];
  [v15 setPx_configuration:v16];

  [v15 setAutomaticallyUpdatesConfiguration:0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setAvailable:1];
  [v15 setUnselectedGlyphName:v13];

  [v15 setSelectedGlyphName:v12];
  [v15 setUsesHierarchicalColor:0];
  [v15 setPointerInteractionEnabled:1];
  if ([v9 length])
  {
    [v15 setAccessibilityLabel:v9];
  }

  [v15 updateConfiguration];
  [v15 addTarget:v15 action:sel_buttonTouchUpAction_ forControlEvents:64];

  return v15;
}

+ (id)buttonForTool:(id)a3 showingLabel:(BOOL)a4 selectionIndicatorType:(int64_t)a5 spec:(id)a6
{
  v8 = a4;
  v42[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v11 = +[PUInterfaceManager currentTheme];
  v41 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v12 = [PUPhotoEditToolbarButton buttonWithConfiguration:"buttonWithConfiguration:primaryAction:" primaryAction:?];
  [v12 setPhotoEditSpec:v10];

  v13 = [MEMORY[0x1E69C3BF0] configurationWithCursorEffect:1];
  [v12 setPx_configuration:v13];

  [v12 setAutomaticallyUpdatesConfiguration:0];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v9 localizedName];
  [v12 setTitle:v14];

  [v12 setAvailable:{objc_msgSend(v9, "enabled")}];
  v15 = [v9 toolbarIconGlyphName];
  [v12 setUnselectedGlyphName:v15];

  v16 = [v9 selectedToolbarIconGlyphName];
  [v12 setSelectedGlyphName:v16];

  [v12 setUsesHierarchicalColor:{objc_msgSend(v9, "toolbarGlyphUsesHierarchicalColor")}];
  [v12 setSelectionIndicatorType:a5];
  v17 = [v9 localizedName];
  [v12 setAccessibilityIdentifier:v17];

  [v12 setPointerInteractionEnabled:1];
  v18 = [v9 toolbarIconAccessibilityLabel];
  if (v18)
  {
    v19 = v18;
    v20 = [v9 toolbarIconAccessibilityLabel];
    v21 = [v20 length];

    if (v21)
    {
      v22 = [v9 toolbarIconAccessibilityLabel];
      [v12 setAccessibilityLabel:v22];
    }
  }

  [v12 setTag:{objc_msgSend(v9, "toolControllerTag")}];
  if (v8)
  {
    [v12 setShowsLargeContentViewer:1];
    v23 = objc_alloc_init(MEMORY[0x1E69DCC18]);
    [v12 addInteraction:v23];
  }

  [v12 updateConfiguration];
  if (a5)
  {
    v24 = [PUPhotoEditToolbarButton selectionIndicatorImageForType:a5];
    v25 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v24];
    [v12 setSelectionIndicator:v25];
    [v25 setAlpha:0.0];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 addSubview:v25];
    v26 = [v12 imageView];
    v27 = [PUPhotoEditToolbarButton constraintsForSelectionIndicatorType:a5 buttonImageView:v26 selectionIndicator:v25];
    [v12 addConstraints:v27];
  }

  [v12 addTarget:v12 action:sel_buttonTouchUpAction_ forControlEvents:64];
  if (v8)
  {
    v28 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v29 = [v11 photoEditingToolbarButtonCompactFont];
    [v28 setFont:v29];

    v30 = [v9 localizedName];
    [v28 setText:v30];

    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 setToolLabel:v28];
    [v12 addSubview:v28];
    v39 = [v28 firstBaselineAnchor];
    v40 = [v12 imageView];
    v31 = [v40 bottomAnchor];
    v32 = [v39 constraintEqualToAnchor:v31 constant:12.0];
    v42[0] = v32;
    v33 = [v28 centerXAnchor];
    v34 = [v12 centerXAnchor];
    [v33 constraintEqualToAnchor:v34];
    v36 = v35 = v11;
    v42[1] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    [v12 addConstraints:v37];

    v11 = v35;
  }

  return v12;
}

@end