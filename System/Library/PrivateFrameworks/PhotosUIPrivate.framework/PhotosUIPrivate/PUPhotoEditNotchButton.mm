@interface PUPhotoEditNotchButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (PUPhotoEditNotchButton)initWithFrame:(CGRect)frame;
- (id)baseConfiguration;
- (id)imageConfiguration;
- (void)setBackgroundColor:(id)color;
- (void)setTitle:(id)title fallbackSymbolName:(id)name;
- (void)updateConfiguration;
@end

@implementation PUPhotoEditNotchButton

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
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
    v12 = [(PUPhotoEditNotchButton *)&v15 pointInside:eventCopy withEvent:x, y];
  }

  v13 = v12;

  return v13;
}

- (void)setBackgroundColor:(id)color
{
  objc_storeStrong(&self->_backgroundColor, color);

  [(PUPhotoEditNotchButton *)self setNeedsUpdateConfiguration];
}

- (void)setTitle:(id)title fallbackSymbolName:(id)name
{
  titleCopy = title;
  nameCopy = name;
  if (setTitle_fallbackSymbolName__onceToken != -1)
  {
    dispatch_once(&setTitle_fallbackSymbolName__onceToken, &__block_literal_global_93499);
  }

  if (setTitle_fallbackSymbolName__forceFallback == 1 && [nameCopy length])
  {
    v7 = 0;
  }

  else
  {
    v7 = titleCopy;
  }

  [(PUPhotoEditNotchButton *)self setButtonTitle:v7];
  [(PUPhotoEditNotchButton *)self setAccessibilityIdentifier:titleCopy];
  [(PUPhotoEditNotchButton *)self setButtonSymbolName:nameCopy];
  [(PUPhotoEditNotchButton *)self setNeedsUpdateConfiguration];
}

void __54__PUPhotoEditNotchButton_setTitle_fallbackSymbolName___block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  setTitle_fallbackSymbolName__forceFallback = [v0 BOOLForKey:@"NSDoubleLocalizedStrings"];
}

- (void)updateConfiguration
{
  baseConfiguration = [(PUPhotoEditNotchButton *)self baseConfiguration];
  [(PUPhotoEditNotchButton *)self setConfiguration:baseConfiguration];
}

- (id)imageConfiguration
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DCAD8];
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0];
  v4 = [v2 configurationWithFont:v3];

  v5 = [MEMORY[0x1E69DCAD8] configurationWithWeight:7];
  v6 = MEMORY[0x1E69DCAD8];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v13[0] = labelColor;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v9 = [v6 configurationWithPaletteColors:v8];

  v10 = [v4 configurationByApplyingConfiguration:v9];
  v11 = [v10 configurationByApplyingConfiguration:v5];

  return v11;
}

- (id)baseConfiguration
{
  v27[1] = *MEMORY[0x1E69E9840];
  backgroundColor = [(PUPhotoEditNotchButton *)self backgroundColor];
  if (backgroundColor && (v4 = backgroundColor, v5 = [(PUPhotoEditNotchButton *)self isEnabled], v4, v5))
  {
    prominentGlassButtonConfiguration = [MEMORY[0x1E69DC740] prominentGlassButtonConfiguration];
    v7 = 1;
  }

  else
  {
    prominentGlassButtonConfiguration = [MEMORY[0x1E69DC740] glassButtonConfiguration];
    v7 = 0;
  }

  [prominentGlassButtonConfiguration setCornerStyle:2];
  buttonTitle = [(PUPhotoEditNotchButton *)self buttonTitle];
  if ([buttonTitle length] && !-[PUPhotoEditNotchButton forceSymbolUsage](self, "forceSymbolUsage"))
  {
  }

  else
  {
    buttonSymbolName = [(PUPhotoEditNotchButton *)self buttonSymbolName];
    v10 = [buttonSymbolName length];

    if (v10)
    {
      imageConfiguration = [(PUPhotoEditNotchButton *)self imageConfiguration];
      v12 = MEMORY[0x1E69DCAB8];
      buttonSymbolName2 = [(PUPhotoEditNotchButton *)self buttonSymbolName];
      v14 = [v12 systemImageNamed:buttonSymbolName2 withConfiguration:imageConfiguration];
      [prominentGlassButtonConfiguration setImage:v14];
      goto LABEL_19;
    }
  }

  v15 = MEMORY[0x1E695DF90];
  v26 = *MEMORY[0x1E69DB648];
  v16 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0 weight:*MEMORY[0x1E69DB958]];
  v27[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  imageConfiguration = [v15 dictionaryWithDictionary:v17];

  if (v7)
  {
    textColor = [(PUPhotoEditNotchButton *)self textColor];
    if (textColor)
    {
      [imageConfiguration setObject:textColor forKey:*MEMORY[0x1E69DB650]];
    }

    else
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      [imageConfiguration setObject:blackColor forKey:*MEMORY[0x1E69DB650]];
    }
  }

  v20 = objc_alloc(MEMORY[0x1E696AAB0]);
  buttonTitle2 = [(PUPhotoEditNotchButton *)self buttonTitle];
  buttonSymbolName2 = buttonTitle2;
  if (buttonTitle2)
  {
    v22 = buttonTitle2;
  }

  else
  {
    v22 = &stru_1F2AC6818;
  }

  v14 = [v20 initWithString:v22 attributes:imageConfiguration];
  [prominentGlassButtonConfiguration setAttributedTitle:v14];
LABEL_19:

  [prominentGlassButtonConfiguration setImagePadding:3.0];
  [prominentGlassButtonConfiguration setButtonSize:2];
  [prominentGlassButtonConfiguration setTitleLineBreakMode:4];
  [prominentGlassButtonConfiguration setCornerStyle:4];
  if (v7)
  {
    backgroundColor2 = [(PUPhotoEditNotchButton *)self backgroundColor];
    [(PUPhotoEditNotchButton *)self setTintColor:backgroundColor2];
  }

  titleLabel = [(PUPhotoEditNotchButton *)self titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:1];
  [prominentGlassButtonConfiguration contentInsets];
  [prominentGlassButtonConfiguration setContentInsets:?];

  return prominentGlassButtonConfiguration;
}

- (PUPhotoEditNotchButton)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PUPhotoEditNotchButton;
  v3 = [(PUPhotoEditNotchButton *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUPhotoEditNotchButton *)v3 setAutomaticallyUpdatesConfiguration:1];
    [(PUPhotoEditNotchButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    baseConfiguration = [(PUPhotoEditNotchButton *)v4 baseConfiguration];
    [(PUPhotoEditNotchButton *)v4 setConfiguration:baseConfiguration];

    [(PUPhotoEditNotchButton *)v4 setShowsLargeContentViewer:1];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC18]);
    [(PUPhotoEditNotchButton *)v4 addInteraction:v6];
  }

  return v4;
}

@end