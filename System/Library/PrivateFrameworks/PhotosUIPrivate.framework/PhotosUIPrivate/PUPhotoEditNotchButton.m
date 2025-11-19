@interface PUPhotoEditNotchButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (PUPhotoEditNotchButton)initWithFrame:(CGRect)a3;
- (id)baseConfiguration;
- (id)imageConfiguration;
- (void)setBackgroundColor:(id)a3;
- (void)setTitle:(id)a3 fallbackSymbolName:(id)a4;
- (void)updateConfiguration;
@end

@implementation PUPhotoEditNotchButton

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (MEMORY[0x1B8C6D660]())
  {
    [(PUPhotoEditNotchButton *)self bounds];
    v17.origin.x = v8 + -6.0;
    v17.origin.y = v9 + -6.0;
    v17.size.width = v10 + 12.0;
    v17.size.height = v11 + 12.0;
    v16.x = x;
    v16.y = y;
    v12 = CGRectContainsPoint(v17, v16);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PUPhotoEditNotchButton;
    v12 = [(PUPhotoEditNotchButton *)&v15 pointInside:v7 withEvent:x, y];
  }

  v13 = v12;

  return v13;
}

- (void)setBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_backgroundColor, a3);

  [(PUPhotoEditNotchButton *)self setNeedsUpdateConfiguration];
}

- (void)setTitle:(id)a3 fallbackSymbolName:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (setTitle_fallbackSymbolName__onceToken != -1)
  {
    dispatch_once(&setTitle_fallbackSymbolName__onceToken, &__block_literal_global_93499);
  }

  if (setTitle_fallbackSymbolName__forceFallback == 1 && [v6 length])
  {
    v7 = 0;
  }

  else
  {
    v7 = v8;
  }

  [(PUPhotoEditNotchButton *)self setButtonTitle:v7];
  [(PUPhotoEditNotchButton *)self setAccessibilityIdentifier:v8];
  [(PUPhotoEditNotchButton *)self setButtonSymbolName:v6];
  [(PUPhotoEditNotchButton *)self setNeedsUpdateConfiguration];
}

void __54__PUPhotoEditNotchButton_setTitle_fallbackSymbolName___block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  setTitle_fallbackSymbolName__forceFallback = [v0 BOOLForKey:@"NSDoubleLocalizedStrings"];
}

- (void)updateConfiguration
{
  v3 = [(PUPhotoEditNotchButton *)self baseConfiguration];
  [(PUPhotoEditNotchButton *)self setConfiguration:v3];
}

- (id)imageConfiguration
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DCAD8];
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0];
  v4 = [v2 configurationWithFont:v3];

  v5 = [MEMORY[0x1E69DCAD8] configurationWithWeight:7];
  v6 = MEMORY[0x1E69DCAD8];
  v7 = [MEMORY[0x1E69DC888] labelColor];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v9 = [v6 configurationWithPaletteColors:v8];

  v10 = [v4 configurationByApplyingConfiguration:v9];
  v11 = [v10 configurationByApplyingConfiguration:v5];

  return v11;
}

- (id)baseConfiguration
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditNotchButton *)self backgroundColor];
  if (v3 && (v4 = v3, v5 = [(PUPhotoEditNotchButton *)self isEnabled], v4, v5))
  {
    v6 = [MEMORY[0x1E69DC740] prominentGlassButtonConfiguration];
    v7 = 1;
  }

  else
  {
    v6 = [MEMORY[0x1E69DC740] glassButtonConfiguration];
    v7 = 0;
  }

  [v6 setCornerStyle:2];
  v8 = [(PUPhotoEditNotchButton *)self buttonTitle];
  if ([v8 length] && !-[PUPhotoEditNotchButton forceSymbolUsage](self, "forceSymbolUsage"))
  {
  }

  else
  {
    v9 = [(PUPhotoEditNotchButton *)self buttonSymbolName];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [(PUPhotoEditNotchButton *)self imageConfiguration];
      v12 = MEMORY[0x1E69DCAB8];
      v13 = [(PUPhotoEditNotchButton *)self buttonSymbolName];
      v14 = [v12 systemImageNamed:v13 withConfiguration:v11];
      [v6 setImage:v14];
      goto LABEL_19;
    }
  }

  v15 = MEMORY[0x1E695DF90];
  v26 = *MEMORY[0x1E69DB648];
  v16 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0 weight:*MEMORY[0x1E69DB958]];
  v27[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v11 = [v15 dictionaryWithDictionary:v17];

  if (v7)
  {
    v18 = [(PUPhotoEditNotchButton *)self textColor];
    if (v18)
    {
      [v11 setObject:v18 forKey:*MEMORY[0x1E69DB650]];
    }

    else
    {
      v19 = [MEMORY[0x1E69DC888] blackColor];
      [v11 setObject:v19 forKey:*MEMORY[0x1E69DB650]];
    }
  }

  v20 = objc_alloc(MEMORY[0x1E696AAB0]);
  v21 = [(PUPhotoEditNotchButton *)self buttonTitle];
  v13 = v21;
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = &stru_1F2AC6818;
  }

  v14 = [v20 initWithString:v22 attributes:v11];
  [v6 setAttributedTitle:v14];
LABEL_19:

  [v6 setImagePadding:3.0];
  [v6 setButtonSize:2];
  [v6 setTitleLineBreakMode:4];
  [v6 setCornerStyle:4];
  if (v7)
  {
    v23 = [(PUPhotoEditNotchButton *)self backgroundColor];
    [(PUPhotoEditNotchButton *)self setTintColor:v23];
  }

  v24 = [(PUPhotoEditNotchButton *)self titleLabel];
  [v24 setAdjustsFontSizeToFitWidth:1];
  [v6 contentInsets];
  [v6 setContentInsets:?];

  return v6;
}

- (PUPhotoEditNotchButton)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PUPhotoEditNotchButton;
  v3 = [(PUPhotoEditNotchButton *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUPhotoEditNotchButton *)v3 setAutomaticallyUpdatesConfiguration:1];
    [(PUPhotoEditNotchButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(PUPhotoEditNotchButton *)v4 baseConfiguration];
    [(PUPhotoEditNotchButton *)v4 setConfiguration:v5];

    [(PUPhotoEditNotchButton *)v4 setShowsLargeContentViewer:1];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC18]);
    [(PUPhotoEditNotchButton *)v4 addInteraction:v6];
  }

  return v4;
}

@end