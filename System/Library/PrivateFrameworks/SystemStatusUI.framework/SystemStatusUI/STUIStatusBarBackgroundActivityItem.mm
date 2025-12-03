@interface STUIStatusBarBackgroundActivityItem
+ (BOOL)_identifierContainsItemImage:(id)image;
+ (BOOL)_identifierContainsSecondaryItemImage:(id)image;
+ (double)_fontSizeAdjustmentForActivityWithIdentifier:(id)identifier;
+ (double)_verticalOffsetForActivityWithIdentifier:(id)identifier;
- (BOOL)_shouldPulseBackgroundForActivityWithIdentifier:(id)identifier traitCollection:(id)collection;
- (BOOL)_shouldPulseSymbolForActivityWithIdentifier:(id)identifier traitCollection:(id)collection;
- (BOOL)_shouldRingForActivityWithIdentifier:(id)identifier traitCollection:(id)collection;
- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data;
- (BOOL)crossfadeForUpdate:(id)update;
- (STUIStatusBarActivityIconView)iconView;
- (STUIStatusBarImageView)secondaryIconView;
- (STUIStatusBarPillView)backgroundView;
- (id)_backgroundActivityViewForIdentifier:(id)identifier;
- (id)_backgroundColorForActivityWithIdentifier:(id)identifier;
- (id)_imageNameForActivityWithIdentifier:(id)identifier;
- (id)_systemImageNameForActivityWithIdentifier:(id)identifier;
- (id)_textLabelForActivityWithIdentifier:(id)identifier;
- (id)_visualEffectForActivityWithIdentifier:(id)identifier traitCollection:(id)collection;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)createDisplayItemForIdentifier:(id)identifier;
- (id)imageForUpdate:(id)update;
- (id)imageNameForUpdate:(id)update;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier;
- (id)secondaryImageForUpdate:(id)update;
- (id)systemImageNameForUpdate:(id)update;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_backgroundView;
- (void)_create_iconView;
- (void)_create_secondaryIconView;
- (void)applyStyleAttributes:(id)attributes toDisplayItem:(id)item;
- (void)updatedDisplayItemsWithData:(id)data;
@end

@implementation STUIStatusBarBackgroundActivityItem

- (id)createDisplayItemForIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarBackgroundActivityItem;
  v3 = [(STUIStatusBarItem *)&v7 createDisplayItemForIdentifier:identifier];
  identifier = [v3 identifier];
  backgroundDisplayIdentifier = [objc_opt_class() backgroundDisplayIdentifier];

  if (identifier == backgroundDisplayIdentifier)
  {
    [v3 setBackground:1];
  }

  return v3;
}

- (id)_backgroundActivityViewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  backgroundDisplayIdentifier = [objc_opt_class() backgroundDisplayIdentifier];

  if (backgroundDisplayIdentifier == identifierCopy)
  {
    backgroundView = [(STUIStatusBarBackgroundActivityItem *)self backgroundView];
  }

  else
  {
    backgroundView = 0;
  }

  return backgroundView;
}

+ (BOOL)_identifierContainsItemImage:(id)image
{
  imageCopy = image;
  defaultDisplayIdentifier = [self defaultDisplayIdentifier];

  return defaultDisplayIdentifier == imageCopy;
}

+ (BOOL)_identifierContainsSecondaryItemImage:(id)image
{
  imageCopy = image;
  secondaryIconDisplayIdentifier = [self secondaryIconDisplayIdentifier];

  return secondaryIconDisplayIdentifier == imageCopy;
}

- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data
{
  itemCopy = item;
  dataCopy = data;
  identifier = [itemCopy identifier];
  secondaryIconDisplayIdentifier = [objc_opt_class() secondaryIconDisplayIdentifier];

  if (identifier == secondaryIconDisplayIdentifier)
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = STUIStatusBarBackgroundActivityItem;
    v10 = [(STUIStatusBarItem *)&v12 canEnableDisplayItem:itemCopy fromData:dataCopy];
  }

  return v10;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  v55 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  itemCopy = item;
  v52.receiver = self;
  v52.super_class = STUIStatusBarBackgroundActivityItem;
  v8 = [(STUIStatusBarIndicatorItem *)&v52 applyUpdate:updateCopy toDisplayItem:itemCopy];
  data = [updateCopy data];
  backgroundActivityEntry = [data backgroundActivityEntry];

  backgroundActivityIdentifier = [backgroundActivityEntry backgroundActivityIdentifier];
  if ([updateCopy dataChanged])
  {
    v12 = _STUIStatusBar_BackgroundActivity_Log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = backgroundActivityIdentifier;
      _os_log_impl(&dword_26C4DD000, v12, OS_LOG_TYPE_DEFAULT, "Updating background activity item to type: %@", buf, 0xCu);
    }

    identifier = [itemCopy identifier];
    v14 = [(STUIStatusBarBackgroundActivityItem *)self _backgroundActivityViewForIdentifier:identifier];

    if (v14)
    {
      v46 = backgroundActivityEntry;
      v15 = [(STUIStatusBarBackgroundActivityItem *)self _backgroundColorForActivityWithIdentifier:backgroundActivityIdentifier];
      if ([(STUIStatusBarBackgroundActivityItem *)self crossfadeForUpdate:updateCopy])
      {
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __65__STUIStatusBarBackgroundActivityItem_applyUpdate_toDisplayItem___block_invoke;
        v49[3] = &unk_279D38740;
        v50 = v14;
        v51 = v15;
        v16 = [STUIStatusBarAnimation animationWithBlock:v49];
      }

      else
      {
        v16 = v8;
        [v14 setPillColor:v15];
      }

      styleAttributes = [updateCopy styleAttributes];
      traitCollection = [styleAttributes traitCollection];
      v19 = [(STUIStatusBarBackgroundActivityItem *)self _visualEffectForActivityWithIdentifier:backgroundActivityIdentifier traitCollection:traitCollection];
      [v14 setVisualEffect:v19];

      styleAttributes2 = [updateCopy styleAttributes];
      traitCollection2 = [styleAttributes2 traitCollection];
      [v14 setPulsing:{-[STUIStatusBarBackgroundActivityItem _shouldPulseBackgroundForActivityWithIdentifier:traitCollection:](self, "_shouldPulseBackgroundForActivityWithIdentifier:traitCollection:", backgroundActivityIdentifier, traitCollection2)}];

      v8 = v16;
      backgroundActivityEntry = v46;
    }

    iconView = [(STUIStatusBarBackgroundActivityItem *)self iconView];
    styleAttributes3 = [updateCopy styleAttributes];
    traitCollection3 = [styleAttributes3 traitCollection];
    [iconView setSymbolPulsing:-[STUIStatusBarBackgroundActivityItem _shouldPulseSymbolForActivityWithIdentifier:traitCollection:](self forUpdate:{"_shouldPulseSymbolForActivityWithIdentifier:traitCollection:", backgroundActivityIdentifier, traitCollection3), updateCopy}];

    iconView2 = [(STUIStatusBarBackgroundActivityItem *)self iconView];
    styleAttributes4 = [updateCopy styleAttributes];
    traitCollection4 = [styleAttributes4 traitCollection];
    [iconView2 setRinging:-[STUIStatusBarBackgroundActivityItem _shouldRingForActivityWithIdentifier:traitCollection:](self forUpdate:{"_shouldRingForActivityWithIdentifier:traitCollection:", backgroundActivityIdentifier, traitCollection4), updateCopy}];
  }

  v28 = objc_opt_class();
  identifier2 = [itemCopy identifier];
  if (![v28 _identifierContainsItemImage:identifier2] || !objc_msgSend(itemCopy, "isEnabled"))
  {
    goto LABEL_18;
  }

  if ([updateCopy styleAttributesChanged])
  {

LABEL_15:
    styleAttributes5 = [updateCopy styleAttributes];
    identifier2 = [styleAttributes5 copy];

    [objc_opt_class() _fontSizeAdjustmentForActivityWithIdentifier:backgroundActivityIdentifier];
    if (v32 != 0.0)
    {
      v33 = v32;
      v34 = MEMORY[0x277D74300];
      font = [identifier2 font];
      fontDescriptor = [font fontDescriptor];
      [identifier2 font];
      v47 = backgroundActivityEntry;
      v38 = v37 = v8;
      [v38 pointSize];
      v40 = [v34 fontWithDescriptor:fontDescriptor size:v33 + v39];
      [identifier2 setFont:v40];

      v8 = v37;
      backgroundActivityEntry = v47;
    }

    [objc_opt_class() _verticalOffsetForActivityWithIdentifier:backgroundActivityIdentifier];
    [itemCopy setCenterOffset:?];
    v48.receiver = self;
    v48.super_class = STUIStatusBarBackgroundActivityItem;
    [(STUIStatusBarItem *)&v48 applyStyleAttributes:identifier2 toDisplayItem:itemCopy];
LABEL_18:

    goto LABEL_19;
  }

  dataChanged = [updateCopy dataChanged];

  if (dataChanged)
  {
    goto LABEL_15;
  }

LABEL_19:
  v41 = objc_opt_class();
  identifier3 = [itemCopy identifier];
  if ([v41 _identifierContainsSecondaryItemImage:identifier3] && objc_msgSend(itemCopy, "isEnabled"))
  {
    dataChanged2 = [updateCopy dataChanged];

    if (!dataChanged2)
    {
      goto LABEL_24;
    }

    identifier3 = [(STUIStatusBarBackgroundActivityItem *)self secondaryImageForUpdate:updateCopy];
    secondaryIconView = [(STUIStatusBarBackgroundActivityItem *)self secondaryIconView];
    [secondaryIconView setImage:identifier3];
  }

LABEL_24:

  return v8;
}

void __65__STUIStatusBarBackgroundActivityItem_applyUpdate_toDisplayItem___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__STUIStatusBarBackgroundActivityItem_applyUpdate_toDisplayItem___block_invoke_2;
  v7[3] = &unk_279D38150;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  [v6 animateWithDuration:0 delay:v7 options:a4 animations:0.333 completion:0.0];
}

- (void)updatedDisplayItemsWithData:(id)data
{
  v8.receiver = self;
  v8.super_class = STUIStatusBarBackgroundActivityItem;
  dataCopy = data;
  [(STUIStatusBarItem *)&v8 updatedDisplayItemsWithData:dataCopy];
  backgroundActivityEntry = [dataCopy backgroundActivityEntry];

  if (backgroundActivityEntry)
  {
    backgroundActivityIdentifier = [backgroundActivityEntry backgroundActivityIdentifier];
    previousBackgroundActivityIdentifier = self->_previousBackgroundActivityIdentifier;
    self->_previousBackgroundActivityIdentifier = backgroundActivityIdentifier;
  }
}

- (void)applyStyleAttributes:(id)attributes toDisplayItem:(id)item
{
  attributesCopy = attributes;
  itemCopy = item;
  v8 = objc_opt_class();
  identifier = [itemCopy identifier];
  LOBYTE(v8) = [v8 _identifierContainsItemImage:identifier];

  if ((v8 & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = STUIStatusBarBackgroundActivityItem;
    [(STUIStatusBarItem *)&v10 applyStyleAttributes:attributesCopy toDisplayItem:itemCopy];
  }
}

- (id)systemImageNameForUpdate:(id)update
{
  data = [update data];
  backgroundActivityEntry = [data backgroundActivityEntry];
  backgroundActivityIdentifier = [backgroundActivityEntry backgroundActivityIdentifier];
  v7 = [(STUIStatusBarBackgroundActivityItem *)self _systemImageNameForActivityWithIdentifier:backgroundActivityIdentifier];

  return v7;
}

- (id)imageNameForUpdate:(id)update
{
  data = [update data];
  backgroundActivityEntry = [data backgroundActivityEntry];
  backgroundActivityIdentifier = [backgroundActivityEntry backgroundActivityIdentifier];
  v7 = [(STUIStatusBarBackgroundActivityItem *)self _imageNameForActivityWithIdentifier:backgroundActivityIdentifier];

  return v7;
}

- (id)_systemImageNameForActivityWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D6B920];
  identifierCopy = identifier;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance visualDescriptorForBackgroundActivityWithIdentifier:identifierCopy];

  systemImageName = [v6 systemImageName];

  return systemImageName;
}

- (id)_imageNameForActivityWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D6B920];
  identifierCopy = identifier;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance visualDescriptorForBackgroundActivityWithIdentifier:identifierCopy];

  imageName = [v6 imageName];

  return imageName;
}

- (id)_textLabelForActivityWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D6B920];
  identifierCopy = identifier;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance visualDescriptorForBackgroundActivityWithIdentifier:identifierCopy];

  textLabel = [v6 textLabel];

  return textLabel;
}

- (id)imageForUpdate:(id)update
{
  v24[2] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  data = [updateCopy data];
  backgroundActivityEntry = [data backgroundActivityEntry];
  backgroundActivityIdentifier = [backgroundActivityEntry backgroundActivityIdentifier];

  v8 = [(STUIStatusBarBackgroundActivityItem *)self _textLabelForActivityWithIdentifier:backgroundActivityIdentifier];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CCA898]);
    v23[0] = *MEMORY[0x277D740A8];
    styleAttributes = [updateCopy styleAttributes];
    smallFont = [styleAttributes smallFont];
    v24[0] = smallFont;
    v23[1] = *MEMORY[0x277D740C0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v24[1] = whiteColor;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v14 = [v9 initWithString:v8 attributes:v13];

    v15 = objc_alloc(MEMORY[0x277D75560]);
    [v14 size];
    v16 = [v15 initWithSize:?];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __54__STUIStatusBarBackgroundActivityItem_imageForUpdate___block_invoke;
    v21[3] = &unk_279D38990;
    v22 = v14;
    v17 = v14;
    v18 = [v16 imageWithActions:v21];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = STUIStatusBarBackgroundActivityItem;
    v18 = [(STUIStatusBarIndicatorItem *)&v20 imageForUpdate:updateCopy];
  }

  return v18;
}

- (id)secondaryImageForUpdate:(id)update
{
  data = [update data];
  backgroundActivityEntry = [data backgroundActivityEntry];
  backgroundActivityIdentifier = [backgroundActivityEntry backgroundActivityIdentifier];
  v7 = [(STUIStatusBarBackgroundActivityItem *)self _secondarySystemImageNameForActivityWithIdentifier:backgroundActivityIdentifier];

  if (v7)
  {
    v8 = [MEMORY[0x277D755B8] _systemImageNamed:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (double)_verticalOffsetForActivityWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D6B920];
  identifierCopy = identifier;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance visualDescriptorForBackgroundActivityWithIdentifier:identifierCopy];

  [v6 verticalOffset];
  v8 = v7;

  return v8;
}

+ (double)_fontSizeAdjustmentForActivityWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D6B920];
  identifierCopy = identifier;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance visualDescriptorForBackgroundActivityWithIdentifier:identifierCopy];

  [v6 fontSizeAdjustment];
  v8 = v7;

  return v8;
}

- (id)_backgroundColorForActivityWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D6B920];
  identifierCopy = identifier;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance visualDescriptorForBackgroundActivityWithIdentifier:identifierCopy];

  backgroundColor = [v6 backgroundColor];

  return backgroundColor;
}

- (BOOL)_shouldRingForActivityWithIdentifier:(id)identifier traitCollection:(id)collection
{
  identifierCopy = identifier;
  if ([collection userInterfaceIdiom] == 3)
  {
    v6 = 0;
  }

  else
  {
    mEMORY[0x277D6B920] = [MEMORY[0x277D6B920] sharedInstance];
    v8 = [mEMORY[0x277D6B920] visualDescriptorForBackgroundActivityWithIdentifier:identifierCopy];

    v9 = *MEMORY[0x277D6BBD0];
    preferredContinuousAnimationName = [v8 preferredContinuousAnimationName];
    v6 = [v9 isEqualToString:preferredContinuousAnimationName];
  }

  return v6;
}

- (BOOL)_shouldPulseBackgroundForActivityWithIdentifier:(id)identifier traitCollection:(id)collection
{
  identifierCopy = identifier;
  if ([collection userInterfaceIdiom] == 3)
  {
    v6 = 0;
  }

  else
  {
    mEMORY[0x277D6B920] = [MEMORY[0x277D6B920] sharedInstance];
    v8 = [mEMORY[0x277D6B920] visualDescriptorForBackgroundActivityWithIdentifier:identifierCopy];

    v9 = *MEMORY[0x277D6BBC0];
    preferredContinuousAnimationName = [v8 preferredContinuousAnimationName];
    v6 = [v9 isEqualToString:preferredContinuousAnimationName];
  }

  return v6;
}

- (BOOL)_shouldPulseSymbolForActivityWithIdentifier:(id)identifier traitCollection:(id)collection
{
  identifierCopy = identifier;
  if ([collection userInterfaceIdiom] == 3)
  {
    v6 = 0;
  }

  else
  {
    mEMORY[0x277D6B920] = [MEMORY[0x277D6B920] sharedInstance];
    v8 = [mEMORY[0x277D6B920] visualDescriptorForBackgroundActivityWithIdentifier:identifierCopy];

    v9 = *MEMORY[0x277D6BBC8];
    preferredContinuousAnimationName = [v8 preferredContinuousAnimationName];
    v6 = [v9 isEqualToString:preferredContinuousAnimationName];
  }

  return v6;
}

- (id)_visualEffectForActivityWithIdentifier:(id)identifier traitCollection:(id)collection
{
  identifierCopy = identifier;
  if ([collection userInterfaceIdiom] == 3)
  {
    preferredVisualEffect = 0;
  }

  else
  {
    mEMORY[0x277D6B920] = [MEMORY[0x277D6B920] sharedInstance];
    v8 = [mEMORY[0x277D6B920] visualDescriptorForBackgroundActivityWithIdentifier:identifierCopy];

    preferredVisualEffect = [v8 preferredVisualEffect];
  }

  return preferredVisualEffect;
}

- (STUIStatusBarPillView)backgroundView
{
  backgroundView = self->_backgroundView;
  if (!backgroundView)
  {
    [(STUIStatusBarBackgroundActivityItem *)self _create_backgroundView];
    backgroundView = self->_backgroundView;
  }

  return backgroundView;
}

- (void)_create_backgroundView
{
  v3 = [STUIStatusBarPillView alloc];
  v4 = [(STUIStatusBarPillView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;

  MEMORY[0x2821F96F8](v4, backgroundView);
}

- (STUIStatusBarActivityIconView)iconView
{
  iconView = self->_iconView;
  if (!iconView)
  {
    [(STUIStatusBarBackgroundActivityItem *)self _create_iconView];
    iconView = self->_iconView;
  }

  return iconView;
}

- (void)_create_iconView
{
  v3 = [STUIStatusBarActivityIconView alloc];
  v4 = [(STUIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  iconView = self->_iconView;
  self->_iconView = v4;

  MEMORY[0x2821F96F8](v4, iconView);
}

- (STUIStatusBarImageView)secondaryIconView
{
  secondaryIconView = self->_secondaryIconView;
  if (!secondaryIconView)
  {
    [(STUIStatusBarBackgroundActivityItem *)self _create_secondaryIconView];
    secondaryIconView = self->_secondaryIconView;
  }

  return secondaryIconView;
}

- (void)_create_secondaryIconView
{
  v3 = [STUIStatusBarImageView alloc];
  v4 = [(STUIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  secondaryIconView = self->_secondaryIconView;
  self->_secondaryIconView = v4;

  MEMORY[0x2821F96F8](v4, secondaryIconView);
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  backgroundDisplayIdentifier = [objc_opt_class() backgroundDisplayIdentifier];

  if (backgroundDisplayIdentifier == identifierCopy)
  {
    backgroundView = [(STUIStatusBarBackgroundActivityItem *)self backgroundView];
  }

  else
  {
    secondaryIconDisplayIdentifier = [objc_opt_class() secondaryIconDisplayIdentifier];

    if (secondaryIconDisplayIdentifier == identifierCopy)
    {
      backgroundView = [(STUIStatusBarBackgroundActivityItem *)self secondaryIconView];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = STUIStatusBarBackgroundActivityItem;
      backgroundView = [(STUIStatusBarIndicatorItem *)&v10 viewForIdentifier:identifierCopy];
    }
  }

  v8 = backgroundView;

  return v8;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = _STUIStatusBar_BackgroundActivity_Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&dword_26C4DD000, v5, OS_LOG_TYPE_DEFAULT, "Adding default background activity item view with identifier: %@", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = STUIStatusBarBackgroundActivityItem;
  v6 = [(STUIStatusBarItem *)&v8 additionAnimationForDisplayItemWithIdentifier:identifierCopy];

  return v6;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = _STUIStatusBar_BackgroundActivity_Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&dword_26C4DD000, v5, OS_LOG_TYPE_DEFAULT, "Removing default background activity item view with identifier: %@", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = STUIStatusBarBackgroundActivityItem;
  v6 = [(STUIStatusBarItem *)&v8 removalAnimationForDisplayItemWithIdentifier:identifierCopy];

  return v6;
}

- (BOOL)crossfadeForUpdate:(id)update
{
  data = [update data];
  backgroundActivityEntry = [data backgroundActivityEntry];
  backgroundActivityIdentifier = [backgroundActivityEntry backgroundActivityIdentifier];

  if (self->_previousBackgroundActivityIdentifier)
  {
    v7 = backgroundActivityIdentifier == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    mEMORY[0x277D6B920] = [MEMORY[0x277D6B920] sharedInstance];
    v9 = [mEMORY[0x277D6B920] visualDescriptorForBackgroundActivityWithIdentifier:self->_previousBackgroundActivityIdentifier];

    v10 = [v9 canCrossfadeToBackgroundActivityWithIdentifier:backgroundActivityIdentifier];
  }

  return v10;
}

@end