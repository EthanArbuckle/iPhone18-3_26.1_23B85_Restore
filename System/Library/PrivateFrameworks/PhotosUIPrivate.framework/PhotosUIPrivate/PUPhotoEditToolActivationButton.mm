@interface PUPhotoEditToolActivationButton
+ (id)buttonWithTitle:(id)title;
- (UIButtonConfiguration)selectedConfiguration;
- (UIButtonConfiguration)unselectedConfiguration;
- (id)baseConfiguration;
- (id)imageConfigurationForSelectedState:(BOOL)state;
- (id)selectedTintedGlassConfiguration;
- (void)buttonTouchUpAction:(id)action;
- (void)setOverrideButtonConfiguration:(id)configuration;
- (void)setSelectedGlyphName:(id)name;
- (void)setTitle:(id)title;
- (void)setUnselectedGlyphName:(id)name;
- (void)updateConfiguration;
@end

@implementation PUPhotoEditToolActivationButton

- (void)setOverrideButtonConfiguration:(id)configuration
{
  objc_storeStrong(&self->_overrideButtonConfiguration, configuration);

  [(PUPhotoEditToolActivationButton *)self setNeedsUpdateConfiguration];
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);

  [(PUPhotoEditToolActivationButton *)self setNeedsUpdateConfiguration];
}

- (void)setUnselectedGlyphName:(id)name
{
  objc_storeStrong(&self->_unselectedGlyphName, name);

  [(PUPhotoEditToolActivationButton *)self setNeedsUpdateConfiguration];
}

- (void)setSelectedGlyphName:(id)name
{
  objc_storeStrong(&self->_selectedGlyphName, name);

  [(PUPhotoEditToolActivationButton *)self setNeedsUpdateConfiguration];
}

- (void)buttonTouchUpAction:(id)action
{
  isSelectedBlock = [(PUPhotoEditToolActivationButton *)self isSelectedBlock];

  if (!isSelectedBlock)
  {
    [(PUPhotoEditToolActivationButton *)self setSelected:[(PUPhotoEditToolActivationButton *)self isSelected]^ 1];
  }

  actionBlock = [(PUPhotoEditToolActivationButton *)self actionBlock];

  if (actionBlock)
  {
    actionBlock2 = [(PUPhotoEditToolActivationButton *)self actionBlock];
    (actionBlock2)[2](actionBlock2, self);
  }

  isSelectedBlock2 = [(PUPhotoEditToolActivationButton *)self isSelectedBlock];

  if (isSelectedBlock2)
  {
    isSelectedBlock3 = [(PUPhotoEditToolActivationButton *)self isSelectedBlock];
    [(PUPhotoEditToolActivationButton *)self setSelected:isSelectedBlock3[2](isSelectedBlock3, self)];
  }
}

- (void)updateConfiguration
{
  v3 = MEMORY[0x1B8C6D660](self, a2);
  isSelected = [(PUPhotoEditToolActivationButton *)self isSelected];
  if (v3)
  {
    if (isSelected)
    {
      selectedTintedGlassConfiguration = [(PUPhotoEditToolActivationButton *)self selectedTintedGlassConfiguration];
      goto LABEL_7;
    }
  }

  else if (isSelected)
  {
    selectedTintedGlassConfiguration = [(PUPhotoEditToolActivationButton *)self selectedConfiguration];
    goto LABEL_7;
  }

  selectedTintedGlassConfiguration = [(PUPhotoEditToolActivationButton *)self unselectedConfiguration];
LABEL_7:
  v9 = selectedTintedGlassConfiguration;
  overrideButtonConfiguration = [(PUPhotoEditToolActivationButton *)self overrideButtonConfiguration];

  if (overrideButtonConfiguration)
  {
    overrideButtonConfiguration2 = [(PUPhotoEditToolActivationButton *)self overrideButtonConfiguration];

    v8 = overrideButtonConfiguration2;
  }

  else
  {
    v8 = v9;
  }

  v10 = v8;
  [(PUPhotoEditToolActivationButton *)self setConfiguration:v8];
}

- (UIButtonConfiguration)unselectedConfiguration
{
  baseConfiguration = [(PUPhotoEditToolActivationButton *)self baseConfiguration];
  v4 = +[PUInterfaceManager currentTheme];
  clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [clearConfiguration setBackgroundColor:clearColor];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [clearConfiguration setStrokeColor:secondaryLabelColor];

  [clearConfiguration setStrokeWidth:1.0];
  [baseConfiguration setBackground:clearConfiguration];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __58__PUPhotoEditToolActivationButton_unselectedConfiguration__block_invoke;
  v24[3] = &unk_1E7B7CD20;
  v8 = v4;
  v25 = v8;
  [baseConfiguration setTitleTextAttributesTransformer:v24];
  [baseConfiguration contentInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  unselectedGlyphName = [(PUPhotoEditToolActivationButton *)self unselectedGlyphName];

  if (unselectedGlyphName)
  {
    v18 = [(PUPhotoEditToolActivationButton *)self imageConfigurationForSelectedState:0];
    v19 = MEMORY[0x1E69DCAB8];
    unselectedGlyphName2 = [(PUPhotoEditToolActivationButton *)self unselectedGlyphName];
    v21 = [v19 systemImageNamed:unselectedGlyphName2 withConfiguration:v18];
    [baseConfiguration setImage:v21];

    v22 = v12 + -6.0;
  }

  else
  {
    v22 = v12 + -5.0;
  }

  [baseConfiguration setContentInsets:{v10, v22, v14, v16 + -5.0}];

  return baseConfiguration;
}

id __58__PUPhotoEditToolActivationButton_unselectedConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69DB650]];

  v5 = [*(a1 + 32) topToolbarToolButtonFont];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v3;
}

- (UIButtonConfiguration)selectedConfiguration
{
  baseConfiguration = [(PUPhotoEditToolActivationButton *)self baseConfiguration];
  v4 = +[PUInterfaceManager currentTheme];
  clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
  systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
  [clearConfiguration setBackgroundColor:systemYellowColor];

  [baseConfiguration setBackground:clearConfiguration];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __56__PUPhotoEditToolActivationButton_selectedConfiguration__block_invoke;
  v23[3] = &unk_1E7B7CD20;
  v7 = v4;
  v24 = v7;
  [baseConfiguration setTitleTextAttributesTransformer:v23];
  [baseConfiguration contentInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  selectedGlyphName = [(PUPhotoEditToolActivationButton *)self selectedGlyphName];

  if (selectedGlyphName)
  {
    v17 = [(PUPhotoEditToolActivationButton *)self imageConfigurationForSelectedState:1];
    v18 = MEMORY[0x1E69DCAB8];
    selectedGlyphName2 = [(PUPhotoEditToolActivationButton *)self selectedGlyphName];
    v20 = [v18 systemImageNamed:selectedGlyphName2 withConfiguration:v17];
    [baseConfiguration setImage:v20];

    v21 = v11 + -6.0;
  }

  else
  {
    v21 = v11 + -5.0;
  }

  [baseConfiguration setContentInsets:{v9, v21, v13, v15 + -5.0}];

  return baseConfiguration;
}

id __56__PUPhotoEditToolActivationButton_selectedConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.7];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69DB650]];

  v5 = [*(a1 + 32) topToolbarToolButtonFont];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v3;
}

- (id)selectedTintedGlassConfiguration
{
  selectedConfiguration = [(PUPhotoEditToolActivationButton *)self selectedConfiguration];
  prominentGlassButtonConfiguration = [MEMORY[0x1E69DC740] prominentGlassButtonConfiguration];
  [prominentGlassButtonConfiguration setCornerStyle:{objc_msgSend(selectedConfiguration, "cornerStyle")}];
  title = [selectedConfiguration title];
  [prominentGlassButtonConfiguration setTitle:title];

  [selectedConfiguration imagePadding];
  [prominentGlassButtonConfiguration setImagePadding:?];
  image = [selectedConfiguration image];
  [prominentGlassButtonConfiguration setImage:image];

  [prominentGlassButtonConfiguration setButtonSize:{objc_msgSend(selectedConfiguration, "buttonSize")}];
  [prominentGlassButtonConfiguration setTitleLineBreakMode:{objc_msgSend(selectedConfiguration, "titleLineBreakMode")}];
  titleTextAttributesTransformer = [selectedConfiguration titleTextAttributesTransformer];
  [prominentGlassButtonConfiguration setTitleTextAttributesTransformer:titleTextAttributesTransformer];

  [selectedConfiguration contentInsets];
  [prominentGlassButtonConfiguration setContentInsets:?];
  systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
  [(PUPhotoEditToolActivationButton *)self setTintColor:systemYellowColor];

  return prominentGlassButtonConfiguration;
}

- (id)imageConfigurationForSelectedState:(BOOL)state
{
  stateCopy = state;
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCAD8];
  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:10.0];
  v6 = [v4 configurationWithFont:v5];

  if (stateCopy)
  {
    v7 = 5;
  }

  else
  {
    v7 = 4;
  }

  v8 = [MEMORY[0x1E69DCAD8] configurationWithWeight:v7];
  v9 = MEMORY[0x1E69DCAD8];
  if (stateCopy)
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.7];
    v11 = [v9 configurationWithHierarchicalColor:secondaryLabelColor];
  }

  else
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v16[0] = secondaryLabelColor;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v11 = [v9 configurationWithPaletteColors:v12];
  }

  v13 = [v6 configurationByApplyingConfiguration:v11];
  v14 = [v13 configurationByApplyingConfiguration:v8];

  return v14;
}

- (id)baseConfiguration
{
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [plainButtonConfiguration setCornerStyle:2];
  [plainButtonConfiguration setTitle:self->_title];
  [plainButtonConfiguration setImagePadding:3.0];
  [plainButtonConfiguration setButtonSize:2];
  [plainButtonConfiguration setTitleLineBreakMode:4];

  return plainButtonConfiguration;
}

+ (id)buttonWithTitle:(id)title
{
  titleCopy = title;
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v5 = [PUPhotoEditToolActivationButton buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
  v6 = [MEMORY[0x1E69C3BF0] configurationWithCursorEffect:2];
  [v5 setPx_configuration:v6];

  [v5 setAutomaticallyUpdatesConfiguration:1];
  v7 = v5[95];
  v5[95] = titleCopy;
  v8 = titleCopy;

  [v5 addTarget:v5 action:sel_buttonTouchUpAction_ forControlEvents:64];
  if (MEMORY[0x1B8C6D660]())
  {
    v9 = 26.0;
  }

  else
  {
    v9 = 23.0;
  }

  heightAnchor = [v5 heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:v9];
  [v11 setActive:1];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v5;
}

@end