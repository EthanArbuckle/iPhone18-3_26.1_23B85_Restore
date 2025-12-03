@interface PUPhotoEditTopToolbarButtonConfig
+ (id)imageConfigurationForSelectedState:(BOOL)state;
@end

@implementation PUPhotoEditTopToolbarButtonConfig

+ (id)imageConfigurationForSelectedState:(BOOL)state
{
  stateCopy = state;
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = +[PUInterfaceManager currentTheme];
  v5 = MEMORY[0x1E69DCAD8];
  [v4 topToolbarToolButtonGlyphSize];
  v6 = [v5 configurationWithPointSize:?];
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
    photoEditingToolbarButtonSelectedColor = [v4 photoEditingToolbarButtonSelectedColor];
    v18[0] = photoEditingToolbarButtonSelectedColor;
    v11 = v18;
  }

  else
  {
    photoEditingToolbarButtonSelectedColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v17 = photoEditingToolbarButtonSelectedColor;
    v11 = &v17;
  }

  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v13 = [v9 configurationWithPaletteColors:v12];

  v14 = [v6 configurationByApplyingConfiguration:v13];
  v15 = [v14 configurationByApplyingConfiguration:v8];

  return v15;
}

@end