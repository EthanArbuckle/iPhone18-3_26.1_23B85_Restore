@interface PUPhotoEditToolActivationButton
+ (id)buttonWithTitle:(id)a3;
- (UIButtonConfiguration)selectedConfiguration;
- (UIButtonConfiguration)unselectedConfiguration;
- (id)baseConfiguration;
- (id)imageConfigurationForSelectedState:(BOOL)a3;
- (id)selectedTintedGlassConfiguration;
- (void)buttonTouchUpAction:(id)a3;
- (void)setOverrideButtonConfiguration:(id)a3;
- (void)setSelectedGlyphName:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUnselectedGlyphName:(id)a3;
- (void)updateConfiguration;
@end

@implementation PUPhotoEditToolActivationButton

- (void)setOverrideButtonConfiguration:(id)a3
{
  objc_storeStrong(&self->_overrideButtonConfiguration, a3);

  [(PUPhotoEditToolActivationButton *)self setNeedsUpdateConfiguration];
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);

  [(PUPhotoEditToolActivationButton *)self setNeedsUpdateConfiguration];
}

- (void)setUnselectedGlyphName:(id)a3
{
  objc_storeStrong(&self->_unselectedGlyphName, a3);

  [(PUPhotoEditToolActivationButton *)self setNeedsUpdateConfiguration];
}

- (void)setSelectedGlyphName:(id)a3
{
  objc_storeStrong(&self->_selectedGlyphName, a3);

  [(PUPhotoEditToolActivationButton *)self setNeedsUpdateConfiguration];
}

- (void)buttonTouchUpAction:(id)a3
{
  v4 = [(PUPhotoEditToolActivationButton *)self isSelectedBlock];

  if (!v4)
  {
    [(PUPhotoEditToolActivationButton *)self setSelected:[(PUPhotoEditToolActivationButton *)self isSelected]^ 1];
  }

  v5 = [(PUPhotoEditToolActivationButton *)self actionBlock];

  if (v5)
  {
    v6 = [(PUPhotoEditToolActivationButton *)self actionBlock];
    (v6)[2](v6, self);
  }

  v7 = [(PUPhotoEditToolActivationButton *)self isSelectedBlock];

  if (v7)
  {
    v8 = [(PUPhotoEditToolActivationButton *)self isSelectedBlock];
    [(PUPhotoEditToolActivationButton *)self setSelected:v8[2](v8, self)];
  }
}

- (void)updateConfiguration
{
  v3 = MEMORY[0x1B8C6D660](self, a2);
  v4 = [(PUPhotoEditToolActivationButton *)self isSelected];
  if (v3)
  {
    if (v4)
    {
      v5 = [(PUPhotoEditToolActivationButton *)self selectedTintedGlassConfiguration];
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    v5 = [(PUPhotoEditToolActivationButton *)self selectedConfiguration];
    goto LABEL_7;
  }

  v5 = [(PUPhotoEditToolActivationButton *)self unselectedConfiguration];
LABEL_7:
  v9 = v5;
  v6 = [(PUPhotoEditToolActivationButton *)self overrideButtonConfiguration];

  if (v6)
  {
    v7 = [(PUPhotoEditToolActivationButton *)self overrideButtonConfiguration];

    v8 = v7;
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
  v3 = [(PUPhotoEditToolActivationButton *)self baseConfiguration];
  v4 = +[PUInterfaceManager currentTheme];
  v5 = [MEMORY[0x1E69DC6E8] clearConfiguration];
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [v5 setBackgroundColor:v6];

  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v5 setStrokeColor:v7];

  [v5 setStrokeWidth:1.0];
  [v3 setBackground:v5];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __58__PUPhotoEditToolActivationButton_unselectedConfiguration__block_invoke;
  v24[3] = &unk_1E7B7CD20;
  v8 = v4;
  v25 = v8;
  [v3 setTitleTextAttributesTransformer:v24];
  [v3 contentInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(PUPhotoEditToolActivationButton *)self unselectedGlyphName];

  if (v17)
  {
    v18 = [(PUPhotoEditToolActivationButton *)self imageConfigurationForSelectedState:0];
    v19 = MEMORY[0x1E69DCAB8];
    v20 = [(PUPhotoEditToolActivationButton *)self unselectedGlyphName];
    v21 = [v19 systemImageNamed:v20 withConfiguration:v18];
    [v3 setImage:v21];

    v22 = v12 + -6.0;
  }

  else
  {
    v22 = v12 + -5.0;
  }

  [v3 setContentInsets:{v10, v22, v14, v16 + -5.0}];

  return v3;
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
  v3 = [(PUPhotoEditToolActivationButton *)self baseConfiguration];
  v4 = +[PUInterfaceManager currentTheme];
  v5 = [MEMORY[0x1E69DC6E8] clearConfiguration];
  v6 = [MEMORY[0x1E69DC888] systemYellowColor];
  [v5 setBackgroundColor:v6];

  [v3 setBackground:v5];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __56__PUPhotoEditToolActivationButton_selectedConfiguration__block_invoke;
  v23[3] = &unk_1E7B7CD20;
  v7 = v4;
  v24 = v7;
  [v3 setTitleTextAttributesTransformer:v23];
  [v3 contentInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(PUPhotoEditToolActivationButton *)self selectedGlyphName];

  if (v16)
  {
    v17 = [(PUPhotoEditToolActivationButton *)self imageConfigurationForSelectedState:1];
    v18 = MEMORY[0x1E69DCAB8];
    v19 = [(PUPhotoEditToolActivationButton *)self selectedGlyphName];
    v20 = [v18 systemImageNamed:v19 withConfiguration:v17];
    [v3 setImage:v20];

    v21 = v11 + -6.0;
  }

  else
  {
    v21 = v11 + -5.0;
  }

  [v3 setContentInsets:{v9, v21, v13, v15 + -5.0}];

  return v3;
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
  v3 = [(PUPhotoEditToolActivationButton *)self selectedConfiguration];
  v4 = [MEMORY[0x1E69DC740] prominentGlassButtonConfiguration];
  [v4 setCornerStyle:{objc_msgSend(v3, "cornerStyle")}];
  v5 = [v3 title];
  [v4 setTitle:v5];

  [v3 imagePadding];
  [v4 setImagePadding:?];
  v6 = [v3 image];
  [v4 setImage:v6];

  [v4 setButtonSize:{objc_msgSend(v3, "buttonSize")}];
  [v4 setTitleLineBreakMode:{objc_msgSend(v3, "titleLineBreakMode")}];
  v7 = [v3 titleTextAttributesTransformer];
  [v4 setTitleTextAttributesTransformer:v7];

  [v3 contentInsets];
  [v4 setContentInsets:?];
  v8 = [MEMORY[0x1E69DC888] systemYellowColor];
  [(PUPhotoEditToolActivationButton *)self setTintColor:v8];

  return v4;
}

- (id)imageConfigurationForSelectedState:(BOOL)a3
{
  v3 = a3;
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCAD8];
  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:10.0];
  v6 = [v4 configurationWithFont:v5];

  if (v3)
  {
    v7 = 5;
  }

  else
  {
    v7 = 4;
  }

  v8 = [MEMORY[0x1E69DCAD8] configurationWithWeight:v7];
  v9 = MEMORY[0x1E69DCAD8];
  if (v3)
  {
    v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.7];
    v11 = [v9 configurationWithHierarchicalColor:v10];
  }

  else
  {
    v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v16[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v11 = [v9 configurationWithPaletteColors:v12];
  }

  v13 = [v6 configurationByApplyingConfiguration:v11];
  v14 = [v13 configurationByApplyingConfiguration:v8];

  return v14;
}

- (id)baseConfiguration
{
  v3 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [v3 setCornerStyle:2];
  [v3 setTitle:self->_title];
  [v3 setImagePadding:3.0];
  [v3 setButtonSize:2];
  [v3 setTitleLineBreakMode:4];

  return v3;
}

+ (id)buttonWithTitle:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v5 = [PUPhotoEditToolActivationButton buttonWithConfiguration:v4 primaryAction:0];
  v6 = [MEMORY[0x1E69C3BF0] configurationWithCursorEffect:2];
  [v5 setPx_configuration:v6];

  [v5 setAutomaticallyUpdatesConfiguration:1];
  v7 = v5[95];
  v5[95] = v3;
  v8 = v3;

  [v5 addTarget:v5 action:sel_buttonTouchUpAction_ forControlEvents:64];
  if (MEMORY[0x1B8C6D660]())
  {
    v9 = 26.0;
  }

  else
  {
    v9 = 23.0;
  }

  v10 = [v5 heightAnchor];
  v11 = [v10 constraintEqualToConstant:v9];
  [v11 setActive:1];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v5;
}

@end