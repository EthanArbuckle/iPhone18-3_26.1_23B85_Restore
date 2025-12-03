@interface PXUIInteractiveBadgeTheme
+ (id)actionableBadgeTheme;
+ (id)disabledActionableBadgeTheme;
+ (id)sharedToggledOffBadgeTheme;
+ (id)sharedToggledOnBadgeTheme;
+ (id)toggledOffLiveBadgeTheme;
+ (id)toggledOnLiveBadgeTheme;
- (PXUIInteractiveBadgeTheme)init;
- (PXUIInteractiveBadgeTheme)initWithIsToggledOn:(BOOL)on isActionable:(BOOL)actionable isDisabled:(BOOL)disabled capsuleStyle:(BOOL)style;
@end

@implementation PXUIInteractiveBadgeTheme

- (PXUIInteractiveBadgeTheme)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIBadgeTheme.m" lineNumber:249 description:{@"%s is not available as initializer", "-[PXUIInteractiveBadgeTheme init]"}];

  abort();
}

- (PXUIInteractiveBadgeTheme)initWithIsToggledOn:(BOOL)on isActionable:(BOOL)actionable isDisabled:(BOOL)disabled capsuleStyle:(BOOL)style
{
  styleCopy = style;
  disabledCopy = disabled;
  actionableCopy = actionable;
  onCopy = on;
  v31.receiver = self;
  v31.super_class = PXUIInteractiveBadgeTheme;
  v10 = [(PXUIInteractiveBadgeTheme *)&v31 init];
  if (v10)
  {
    v11 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    if (actionableCopy)
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      v13 = 11.0;
    }

    else
    {
      if (onCopy)
      {
        [MEMORY[0x1E69DC888] systemBlueColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] secondaryLabelColor];
      }
      v14 = ;
      v15 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
      labelColor = [v14 resolvedColorWithTraitCollection:v15];

      v13 = 3.0;
    }

    v16 = [MEMORY[0x1E69DCAD8] configurationWithFont:v11];
    imageConfiguration = v10->_imageConfiguration;
    v10->_imageConfiguration = v16;

    if (disabledCopy)
    {
      v18 = 0.600000024;
    }

    else
    {
      v18 = 1.0;
    }

    v10->_imageAlpha = v18;
    if (disabledCopy)
    {
      v19 = 0.800000012;
    }

    else
    {
      v19 = 1.0;
    }

    objc_storeStrong(&v10->_imageTintColor, labelColor);
    objc_storeStrong(&v10->_afterLabelImageTintColor, labelColor);
    imageCompositingFilter = v10->_imageCompositingFilter;
    v10->_imageCompositingFilter = 0;

    objc_storeStrong(&v10->_labelFont, v11);
    v10->_labelAlpha = v18;
    objc_storeStrong(&v10->_labelTextColor, labelColor);
    labelCompositingFilter = v10->_labelCompositingFilter;
    v10->_labelCompositingFilter = 0;

    v22 = objc_opt_class();
    backgroundViewClass = v10->_backgroundViewClass;
    v10->_backgroundViewClass = v22;

    whiteColor = 0;
    v10->_backgroundCornerRadius = v13;
    v10->_backgroundBorderWidth = 0.0;
    v10->_backgroundAlpha = v19;
    if (styleCopy)
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    }

    backgroundColor = v10->_backgroundColor;
    v10->_backgroundColor = whiteColor;

    backgroundBorderColor = v10->_backgroundBorderColor;
    v10->_backgroundBorderColor = 0;

    if (actionableCopy)
    {
      v27 = 9;
    }

    else
    {
      v27 = 13;
    }

    v28 = [MEMORY[0x1E69DC730] effectWithStyle:v27];
    backgroundBlurEffect = v10->_backgroundBlurEffect;
    v10->_backgroundBlurEffect = v28;
  }

  return v10;
}

+ (id)toggledOffLiveBadgeTheme
{
  if (toggledOffLiveBadgeTheme_onceToken != -1)
  {
    dispatch_once(&toggledOffLiveBadgeTheme_onceToken, &__block_literal_global_160);
  }

  v3 = toggledOffLiveBadgeTheme_badgeTheme;

  return v3;
}

void __53__PXUIInteractiveBadgeTheme_toggledOffLiveBadgeTheme__block_invoke()
{
  v0 = [[PXUIInteractiveBadgeTheme alloc] initWithIsToggledOn:0 isActionable:0 isDisabled:0 capsuleStyle:1];
  v1 = toggledOffLiveBadgeTheme_badgeTheme;
  toggledOffLiveBadgeTheme_badgeTheme = v0;
}

+ (id)toggledOnLiveBadgeTheme
{
  if (toggledOnLiveBadgeTheme_onceToken != -1)
  {
    dispatch_once(&toggledOnLiveBadgeTheme_onceToken, &__block_literal_global_158);
  }

  v3 = toggledOnLiveBadgeTheme_badgeTheme;

  return v3;
}

void __52__PXUIInteractiveBadgeTheme_toggledOnLiveBadgeTheme__block_invoke()
{
  v0 = [[PXUIInteractiveBadgeTheme alloc] initWithIsToggledOn:1 isActionable:0 isDisabled:0 capsuleStyle:1];
  v1 = toggledOnLiveBadgeTheme_badgeTheme;
  toggledOnLiveBadgeTheme_badgeTheme = v0;
}

+ (id)sharedToggledOffBadgeTheme
{
  if (sharedToggledOffBadgeTheme_onceToken != -1)
  {
    dispatch_once(&sharedToggledOffBadgeTheme_onceToken, &__block_literal_global_156);
  }

  v3 = sharedToggledOffBadgeTheme_badgeTheme;

  return v3;
}

void __55__PXUIInteractiveBadgeTheme_sharedToggledOffBadgeTheme__block_invoke()
{
  v0 = [[PXUIInteractiveBadgeTheme alloc] initWithIsToggledOn:0 isActionable:0 isDisabled:0 capsuleStyle:0];
  v1 = sharedToggledOffBadgeTheme_badgeTheme;
  sharedToggledOffBadgeTheme_badgeTheme = v0;
}

+ (id)sharedToggledOnBadgeTheme
{
  if (sharedToggledOnBadgeTheme_onceToken != -1)
  {
    dispatch_once(&sharedToggledOnBadgeTheme_onceToken, &__block_literal_global_154);
  }

  v3 = sharedToggledOnBadgeTheme_badgeTheme;

  return v3;
}

void __54__PXUIInteractiveBadgeTheme_sharedToggledOnBadgeTheme__block_invoke()
{
  v0 = [[PXUIInteractiveBadgeTheme alloc] initWithIsToggledOn:1 isActionable:0 isDisabled:0 capsuleStyle:0];
  v1 = sharedToggledOnBadgeTheme_badgeTheme;
  sharedToggledOnBadgeTheme_badgeTheme = v0;
}

+ (id)disabledActionableBadgeTheme
{
  if (disabledActionableBadgeTheme_onceToken != -1)
  {
    dispatch_once(&disabledActionableBadgeTheme_onceToken, &__block_literal_global_152);
  }

  v3 = disabledActionableBadgeTheme_badgeTheme;

  return v3;
}

void __57__PXUIInteractiveBadgeTheme_disabledActionableBadgeTheme__block_invoke()
{
  v0 = [[PXUIInteractiveBadgeTheme alloc] initWithIsToggledOn:0 isActionable:1 isDisabled:1 capsuleStyle:0];
  v1 = disabledActionableBadgeTheme_badgeTheme;
  disabledActionableBadgeTheme_badgeTheme = v0;
}

+ (id)actionableBadgeTheme
{
  if (actionableBadgeTheme_onceToken != -1)
  {
    dispatch_once(&actionableBadgeTheme_onceToken, &__block_literal_global_149);
  }

  v3 = actionableBadgeTheme_badgeTheme;

  return v3;
}

void __49__PXUIInteractiveBadgeTheme_actionableBadgeTheme__block_invoke()
{
  v0 = [[PXUIInteractiveBadgeTheme alloc] initWithIsToggledOn:0 isActionable:1 isDisabled:0 capsuleStyle:0];
  v1 = actionableBadgeTheme_badgeTheme;
  actionableBadgeTheme_badgeTheme = v0;
}

@end