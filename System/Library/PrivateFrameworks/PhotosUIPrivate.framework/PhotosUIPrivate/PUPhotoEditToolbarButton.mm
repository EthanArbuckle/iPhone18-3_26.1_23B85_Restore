@interface PUPhotoEditToolbarButton
+ (id)buttonForTool:(id)tool showingLabel:(BOOL)label selectionIndicatorType:(int64_t)type spec:(id)spec;
+ (id)buttonWithImageNamed:(id)named selectedImageNamed:(id)imageNamed accessibilityLabel:(id)label spec:(id)spec;
+ (id)constraintsForSelectionIndicatorType:(int64_t)type buttonImageView:(id)view selectionIndicator:(id)indicator;
+ (id)selectionIndicatorImageForType:(int64_t)type;
- (id)baseConfiguration;
- (id)imageConfigurationForSelectedState:(BOOL)state;
- (id)imageForState:(unint64_t)state;
- (id)largeContentImage;
- (id)selectedConfiguration;
- (id)unselectedConfiguration;
- (void)buttonTouchUpAction:(id)action;
- (void)setSelected:(BOOL)selected;
- (void)updateConfiguration;
@end

@implementation PUPhotoEditToolbarButton

- (id)largeContentImage
{
  v3 = [(PUPhotoEditToolbarButton *)self imageConfigurationForSelectedState:0];
  v4 = MEMORY[0x1E69DCAB8];
  unselectedGlyphName = [(PUPhotoEditToolbarButton *)self unselectedGlyphName];
  v6 = [v4 _systemImageNamed:unselectedGlyphName withConfiguration:v3];

  return v6;
}

- (id)imageForState:(unint64_t)state
{
  imageView = [(PUPhotoEditToolbarButton *)self imageView];
  image = [imageView image];

  return image;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = PUPhotoEditToolbarButton;
  [(PUPhotoEditToolbarButton *)&v7 setSelected:?];
  v5 = selectedCopy;
  selectionIndicator = [(PUPhotoEditToolbarButton *)self selectionIndicator];
  [selectionIndicator setAlpha:v5];
}

- (void)buttonTouchUpAction:(id)action
{
  actionBlock = [(PUPhotoEditToolbarButton *)self actionBlock];

  if (actionBlock)
  {
    actionBlock2 = [(PUPhotoEditToolbarButton *)self actionBlock];
    actionBlock2[2](actionBlock2, self);
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
  toolLabel = [(PUPhotoEditToolbarButton *)self toolLabel];

  if (toolLabel)
  {
    if ([(PUPhotoEditToolbarButton *)self isEnabled]&& [(PUPhotoEditToolbarButton *)self available])
    {
      if ([(PUPhotoEditToolbarButton *)self isSelected])
      {
        labelColor = [MEMORY[0x1E69DC888] labelColor];
        v5 = 0;
        v6 = 0;
        v7 = 1;
      }

      else
      {
        labelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        v7 = 0;
        v6 = 0;
        v5 = 1;
      }
    }

    else
    {
      labelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      v7 = 0;
      v5 = 0;
      v6 = 1;
    }

    toolLabel2 = [(PUPhotoEditToolbarButton *)self toolLabel];
    [toolLabel2 setTextColor:labelColor];

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
  baseConfiguration = [(PUPhotoEditToolbarButton *)self baseConfiguration];
  unselectedGlyphName = [(PUPhotoEditToolbarButton *)self unselectedGlyphName];

  if (unselectedGlyphName)
  {
    v5 = [(PUPhotoEditToolbarButton *)self imageConfigurationForSelectedState:0];
    v6 = MEMORY[0x1E69DCAB8];
    unselectedGlyphName2 = [(PUPhotoEditToolbarButton *)self unselectedGlyphName];
    v8 = [v6 _systemImageNamed:unselectedGlyphName2 withConfiguration:v5];
    [baseConfiguration setImage:v8];
  }

  return baseConfiguration;
}

- (id)selectedConfiguration
{
  baseConfiguration = [(PUPhotoEditToolbarButton *)self baseConfiguration];
  v4 = [(PUPhotoEditToolbarButton *)self imageConfigurationForSelectedState:1];
  v5 = MEMORY[0x1E69DCAB8];
  selectedGlyphName = [(PUPhotoEditToolbarButton *)self selectedGlyphName];
  unselectedGlyphName = selectedGlyphName;
  if (!selectedGlyphName)
  {
    unselectedGlyphName = [(PUPhotoEditToolbarButton *)self unselectedGlyphName];
  }

  v8 = [v5 _systemImageNamed:unselectedGlyphName withConfiguration:v4];
  [baseConfiguration setImage:v8];

  if (!selectedGlyphName)
  {
  }

  return baseConfiguration;
}

- (id)imageConfigurationForSelectedState:(BOOL)state
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
  selectedColor = [(PUPhotoEditToolbarButton *)self selectedColor];
  v10 = selectedColor;
  if (selectedColor)
  {
    v11 = selectedColor;
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
  isEnabled = [(PUPhotoEditToolbarButton *)self isEnabled];
  if (v13)
  {
    if (isEnabled && [(PUPhotoEditToolbarButton *)self available])
    {
      if (!state)
      {
        labelColor = [MEMORY[0x1E69DC888] labelColor];
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (!isEnabled || ![(PUPhotoEditToolbarButton *)self available])
  {
LABEL_19:
    labelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    goto LABEL_20;
  }

  if (state)
  {
LABEL_18:
    labelColor = v12;
    goto LABEL_20;
  }

  labelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
LABEL_20:
  v16 = labelColor;
  usesHierarchicalColor = [(PUPhotoEditToolbarButton *)self usesHierarchicalColor];
  v18 = MEMORY[0x1E69DCAD8];
  if (usesHierarchicalColor)
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
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [plainButtonConfiguration setButtonSize:2];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [plainButtonConfiguration setBaseBackgroundColor:clearColor];

  [plainButtonConfiguration setTitleLineBreakMode:4];
  contentInsets = [plainButtonConfiguration contentInsets];
  v7 = v6;
  v9 = v8;
  v10 = 0.0;
  if ((MEMORY[0x1B8C6D660](contentInsets) & 1) == 0)
  {
    photoEditSpec = [(PUPhotoEditToolbarButton *)self photoEditSpec];
    if ([photoEditSpec shouldUseCompactToolbarSpacing])
    {
      v10 = 3.0;
    }

    else
    {
      v10 = 9.0;
    }
  }

  [plainButtonConfiguration setContentInsets:{v7, v10, v9, v10}];
  toolLabel = [(PUPhotoEditToolbarButton *)self toolLabel];

  if (toolLabel)
  {
    [plainButtonConfiguration contentInsets];
    [plainButtonConfiguration setContentInsets:?];
  }

  return plainButtonConfiguration;
}

+ (id)constraintsForSelectionIndicatorType:(int64_t)type buttonImageView:(id)view selectionIndicator:(id)indicator
{
  v21[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  indicatorCopy = indicator;
  v9 = indicatorCopy;
  switch(type)
  {
    case 3:
      centerYAnchor = [indicatorCopy centerYAnchor];
      centerYAnchor2 = [viewCopy centerYAnchor];
      v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v19[0] = v12;
      rightAnchor = [v9 rightAnchor];
      leftAnchor = [viewCopy leftAnchor];
      v15 = [rightAnchor constraintEqualToAnchor:leftAnchor constant:-4.0];
      v19[1] = v15;
      v16 = v19;
      goto LABEL_7;
    case 2:
      centerYAnchor = [indicatorCopy centerYAnchor];
      centerYAnchor2 = [viewCopy centerYAnchor];
      v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v20[0] = v12;
      rightAnchor = [v9 rightAnchor];
      leftAnchor = [viewCopy leftAnchor];
      v15 = [rightAnchor constraintEqualToAnchor:leftAnchor constant:-4.0];
      v20[1] = v15;
      v16 = v20;
      goto LABEL_7;
    case 1:
      centerYAnchor = [indicatorCopy centerXAnchor];
      centerYAnchor2 = [viewCopy centerXAnchor];
      v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v21[0] = v12;
      rightAnchor = [v9 bottomAnchor];
      leftAnchor = [viewCopy topAnchor];
      v15 = [rightAnchor constraintEqualToAnchor:leftAnchor constant:-5.0];
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

+ (id)selectionIndicatorImageForType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:{off_1E7B751A8[type - 1], v3}];
  }

  return v5;
}

+ (id)buttonWithImageNamed:(id)named selectedImageNamed:(id)imageNamed accessibilityLabel:(id)label spec:(id)spec
{
  labelCopy = label;
  v10 = MEMORY[0x1E69DC740];
  specCopy = spec;
  imageNamedCopy = imageNamed;
  namedCopy = named;
  plainButtonConfiguration = [v10 plainButtonConfiguration];
  v15 = [PUPhotoEditToolbarButton buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
  [v15 setPhotoEditSpec:specCopy];

  [v15 setIsTopToolbarButton:1];
  v16 = [MEMORY[0x1E69C3BF0] configurationWithCursorEffect:1];
  [v15 setPx_configuration:v16];

  [v15 setAutomaticallyUpdatesConfiguration:0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setAvailable:1];
  [v15 setUnselectedGlyphName:namedCopy];

  [v15 setSelectedGlyphName:imageNamedCopy];
  [v15 setUsesHierarchicalColor:0];
  [v15 setPointerInteractionEnabled:1];
  if ([labelCopy length])
  {
    [v15 setAccessibilityLabel:labelCopy];
  }

  [v15 updateConfiguration];
  [v15 addTarget:v15 action:sel_buttonTouchUpAction_ forControlEvents:64];

  return v15;
}

+ (id)buttonForTool:(id)tool showingLabel:(BOOL)label selectionIndicatorType:(int64_t)type spec:(id)spec
{
  labelCopy = label;
  v42[2] = *MEMORY[0x1E69E9840];
  toolCopy = tool;
  specCopy = spec;
  v11 = +[PUInterfaceManager currentTheme];
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v12 = [PUPhotoEditToolbarButton buttonWithConfiguration:"buttonWithConfiguration:primaryAction:" primaryAction:?];
  [v12 setPhotoEditSpec:specCopy];

  v13 = [MEMORY[0x1E69C3BF0] configurationWithCursorEffect:1];
  [v12 setPx_configuration:v13];

  [v12 setAutomaticallyUpdatesConfiguration:0];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  localizedName = [toolCopy localizedName];
  [v12 setTitle:localizedName];

  [v12 setAvailable:{objc_msgSend(toolCopy, "enabled")}];
  toolbarIconGlyphName = [toolCopy toolbarIconGlyphName];
  [v12 setUnselectedGlyphName:toolbarIconGlyphName];

  selectedToolbarIconGlyphName = [toolCopy selectedToolbarIconGlyphName];
  [v12 setSelectedGlyphName:selectedToolbarIconGlyphName];

  [v12 setUsesHierarchicalColor:{objc_msgSend(toolCopy, "toolbarGlyphUsesHierarchicalColor")}];
  [v12 setSelectionIndicatorType:type];
  localizedName2 = [toolCopy localizedName];
  [v12 setAccessibilityIdentifier:localizedName2];

  [v12 setPointerInteractionEnabled:1];
  toolbarIconAccessibilityLabel = [toolCopy toolbarIconAccessibilityLabel];
  if (toolbarIconAccessibilityLabel)
  {
    v19 = toolbarIconAccessibilityLabel;
    toolbarIconAccessibilityLabel2 = [toolCopy toolbarIconAccessibilityLabel];
    v21 = [toolbarIconAccessibilityLabel2 length];

    if (v21)
    {
      toolbarIconAccessibilityLabel3 = [toolCopy toolbarIconAccessibilityLabel];
      [v12 setAccessibilityLabel:toolbarIconAccessibilityLabel3];
    }
  }

  [v12 setTag:{objc_msgSend(toolCopy, "toolControllerTag")}];
  if (labelCopy)
  {
    [v12 setShowsLargeContentViewer:1];
    v23 = objc_alloc_init(MEMORY[0x1E69DCC18]);
    [v12 addInteraction:v23];
  }

  [v12 updateConfiguration];
  if (type)
  {
    v24 = [PUPhotoEditToolbarButton selectionIndicatorImageForType:type];
    v25 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v24];
    [v12 setSelectionIndicator:v25];
    [v25 setAlpha:0.0];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 addSubview:v25];
    imageView = [v12 imageView];
    v27 = [PUPhotoEditToolbarButton constraintsForSelectionIndicatorType:type buttonImageView:imageView selectionIndicator:v25];
    [v12 addConstraints:v27];
  }

  [v12 addTarget:v12 action:sel_buttonTouchUpAction_ forControlEvents:64];
  if (labelCopy)
  {
    v28 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    photoEditingToolbarButtonCompactFont = [v11 photoEditingToolbarButtonCompactFont];
    [v28 setFont:photoEditingToolbarButtonCompactFont];

    localizedName3 = [toolCopy localizedName];
    [v28 setText:localizedName3];

    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 setToolLabel:v28];
    [v12 addSubview:v28];
    firstBaselineAnchor = [v28 firstBaselineAnchor];
    imageView2 = [v12 imageView];
    bottomAnchor = [imageView2 bottomAnchor];
    v32 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:12.0];
    v42[0] = v32;
    centerXAnchor = [v28 centerXAnchor];
    centerXAnchor2 = [v12 centerXAnchor];
    [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v36 = v35 = v11;
    v42[1] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    [v12 addConstraints:v37];

    v11 = v35;
  }

  return v12;
}

@end