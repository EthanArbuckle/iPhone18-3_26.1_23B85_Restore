@interface STUIStatusBarBackgroundActivityItem
+ (BOOL)_identifierContainsItemImage:(id)a3;
+ (BOOL)_identifierContainsSecondaryItemImage:(id)a3;
+ (double)_fontSizeAdjustmentForActivityWithIdentifier:(id)a3;
+ (double)_verticalOffsetForActivityWithIdentifier:(id)a3;
- (BOOL)_shouldPulseBackgroundForActivityWithIdentifier:(id)a3 traitCollection:(id)a4;
- (BOOL)_shouldPulseSymbolForActivityWithIdentifier:(id)a3 traitCollection:(id)a4;
- (BOOL)_shouldRingForActivityWithIdentifier:(id)a3 traitCollection:(id)a4;
- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4;
- (BOOL)crossfadeForUpdate:(id)a3;
- (STUIStatusBarActivityIconView)iconView;
- (STUIStatusBarImageView)secondaryIconView;
- (STUIStatusBarPillView)backgroundView;
- (id)_backgroundActivityViewForIdentifier:(id)a3;
- (id)_backgroundColorForActivityWithIdentifier:(id)a3;
- (id)_imageNameForActivityWithIdentifier:(id)a3;
- (id)_systemImageNameForActivityWithIdentifier:(id)a3;
- (id)_textLabelForActivityWithIdentifier:(id)a3;
- (id)_visualEffectForActivityWithIdentifier:(id)a3 traitCollection:(id)a4;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)createDisplayItemForIdentifier:(id)a3;
- (id)imageForUpdate:(id)a3;
- (id)imageNameForUpdate:(id)a3;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3;
- (id)secondaryImageForUpdate:(id)a3;
- (id)systemImageNameForUpdate:(id)a3;
- (id)viewForIdentifier:(id)a3;
- (void)_create_backgroundView;
- (void)_create_iconView;
- (void)_create_secondaryIconView;
- (void)applyStyleAttributes:(id)a3 toDisplayItem:(id)a4;
- (void)updatedDisplayItemsWithData:(id)a3;
@end

@implementation STUIStatusBarBackgroundActivityItem

- (id)createDisplayItemForIdentifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarBackgroundActivityItem;
  v3 = [(STUIStatusBarItem *)&v7 createDisplayItemForIdentifier:a3];
  v4 = [v3 identifier];
  v5 = [objc_opt_class() backgroundDisplayIdentifier];

  if (v4 == v5)
  {
    [v3 setBackground:1];
  }

  return v3;
}

- (id)_backgroundActivityViewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() backgroundDisplayIdentifier];

  if (v5 == v4)
  {
    v6 = [(STUIStatusBarBackgroundActivityItem *)self backgroundView];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)_identifierContainsItemImage:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultDisplayIdentifier];

  return v5 == v4;
}

+ (BOOL)_identifierContainsSecondaryItemImage:(id)a3
{
  v4 = a3;
  v5 = [a1 secondaryIconDisplayIdentifier];

  return v5 == v4;
}

- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [objc_opt_class() secondaryIconDisplayIdentifier];

  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = STUIStatusBarBackgroundActivityItem;
    v10 = [(STUIStatusBarItem *)&v12 canEnableDisplayItem:v6 fromData:v7];
  }

  return v10;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v52.receiver = self;
  v52.super_class = STUIStatusBarBackgroundActivityItem;
  v8 = [(STUIStatusBarIndicatorItem *)&v52 applyUpdate:v6 toDisplayItem:v7];
  v9 = [v6 data];
  v10 = [v9 backgroundActivityEntry];

  v11 = [v10 backgroundActivityIdentifier];
  if ([v6 dataChanged])
  {
    v12 = _STUIStatusBar_BackgroundActivity_Log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v11;
      _os_log_impl(&dword_26C4DD000, v12, OS_LOG_TYPE_DEFAULT, "Updating background activity item to type: %@", buf, 0xCu);
    }

    v13 = [v7 identifier];
    v14 = [(STUIStatusBarBackgroundActivityItem *)self _backgroundActivityViewForIdentifier:v13];

    if (v14)
    {
      v46 = v10;
      v15 = [(STUIStatusBarBackgroundActivityItem *)self _backgroundColorForActivityWithIdentifier:v11];
      if ([(STUIStatusBarBackgroundActivityItem *)self crossfadeForUpdate:v6])
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

      v17 = [v6 styleAttributes];
      v18 = [v17 traitCollection];
      v19 = [(STUIStatusBarBackgroundActivityItem *)self _visualEffectForActivityWithIdentifier:v11 traitCollection:v18];
      [v14 setVisualEffect:v19];

      v20 = [v6 styleAttributes];
      v21 = [v20 traitCollection];
      [v14 setPulsing:{-[STUIStatusBarBackgroundActivityItem _shouldPulseBackgroundForActivityWithIdentifier:traitCollection:](self, "_shouldPulseBackgroundForActivityWithIdentifier:traitCollection:", v11, v21)}];

      v8 = v16;
      v10 = v46;
    }

    v22 = [(STUIStatusBarBackgroundActivityItem *)self iconView];
    v23 = [v6 styleAttributes];
    v24 = [v23 traitCollection];
    [v22 setSymbolPulsing:-[STUIStatusBarBackgroundActivityItem _shouldPulseSymbolForActivityWithIdentifier:traitCollection:](self forUpdate:{"_shouldPulseSymbolForActivityWithIdentifier:traitCollection:", v11, v24), v6}];

    v25 = [(STUIStatusBarBackgroundActivityItem *)self iconView];
    v26 = [v6 styleAttributes];
    v27 = [v26 traitCollection];
    [v25 setRinging:-[STUIStatusBarBackgroundActivityItem _shouldRingForActivityWithIdentifier:traitCollection:](self forUpdate:{"_shouldRingForActivityWithIdentifier:traitCollection:", v11, v27), v6}];
  }

  v28 = objc_opt_class();
  v29 = [v7 identifier];
  if (![v28 _identifierContainsItemImage:v29] || !objc_msgSend(v7, "isEnabled"))
  {
    goto LABEL_18;
  }

  if ([v6 styleAttributesChanged])
  {

LABEL_15:
    v31 = [v6 styleAttributes];
    v29 = [v31 copy];

    [objc_opt_class() _fontSizeAdjustmentForActivityWithIdentifier:v11];
    if (v32 != 0.0)
    {
      v33 = v32;
      v34 = MEMORY[0x277D74300];
      v35 = [v29 font];
      v36 = [v35 fontDescriptor];
      [v29 font];
      v47 = v10;
      v38 = v37 = v8;
      [v38 pointSize];
      v40 = [v34 fontWithDescriptor:v36 size:v33 + v39];
      [v29 setFont:v40];

      v8 = v37;
      v10 = v47;
    }

    [objc_opt_class() _verticalOffsetForActivityWithIdentifier:v11];
    [v7 setCenterOffset:?];
    v48.receiver = self;
    v48.super_class = STUIStatusBarBackgroundActivityItem;
    [(STUIStatusBarItem *)&v48 applyStyleAttributes:v29 toDisplayItem:v7];
LABEL_18:

    goto LABEL_19;
  }

  v30 = [v6 dataChanged];

  if (v30)
  {
    goto LABEL_15;
  }

LABEL_19:
  v41 = objc_opt_class();
  v42 = [v7 identifier];
  if ([v41 _identifierContainsSecondaryItemImage:v42] && objc_msgSend(v7, "isEnabled"))
  {
    v43 = [v6 dataChanged];

    if (!v43)
    {
      goto LABEL_24;
    }

    v42 = [(STUIStatusBarBackgroundActivityItem *)self secondaryImageForUpdate:v6];
    v44 = [(STUIStatusBarBackgroundActivityItem *)self secondaryIconView];
    [v44 setImage:v42];
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

- (void)updatedDisplayItemsWithData:(id)a3
{
  v8.receiver = self;
  v8.super_class = STUIStatusBarBackgroundActivityItem;
  v4 = a3;
  [(STUIStatusBarItem *)&v8 updatedDisplayItemsWithData:v4];
  v5 = [v4 backgroundActivityEntry];

  if (v5)
  {
    v6 = [v5 backgroundActivityIdentifier];
    previousBackgroundActivityIdentifier = self->_previousBackgroundActivityIdentifier;
    self->_previousBackgroundActivityIdentifier = v6;
  }
}

- (void)applyStyleAttributes:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v7 identifier];
  LOBYTE(v8) = [v8 _identifierContainsItemImage:v9];

  if ((v8 & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = STUIStatusBarBackgroundActivityItem;
    [(STUIStatusBarItem *)&v10 applyStyleAttributes:v6 toDisplayItem:v7];
  }
}

- (id)systemImageNameForUpdate:(id)a3
{
  v4 = [a3 data];
  v5 = [v4 backgroundActivityEntry];
  v6 = [v5 backgroundActivityIdentifier];
  v7 = [(STUIStatusBarBackgroundActivityItem *)self _systemImageNameForActivityWithIdentifier:v6];

  return v7;
}

- (id)imageNameForUpdate:(id)a3
{
  v4 = [a3 data];
  v5 = [v4 backgroundActivityEntry];
  v6 = [v5 backgroundActivityIdentifier];
  v7 = [(STUIStatusBarBackgroundActivityItem *)self _imageNameForActivityWithIdentifier:v6];

  return v7;
}

- (id)_systemImageNameForActivityWithIdentifier:(id)a3
{
  v3 = MEMORY[0x277D6B920];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 visualDescriptorForBackgroundActivityWithIdentifier:v4];

  v7 = [v6 systemImageName];

  return v7;
}

- (id)_imageNameForActivityWithIdentifier:(id)a3
{
  v3 = MEMORY[0x277D6B920];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 visualDescriptorForBackgroundActivityWithIdentifier:v4];

  v7 = [v6 imageName];

  return v7;
}

- (id)_textLabelForActivityWithIdentifier:(id)a3
{
  v3 = MEMORY[0x277D6B920];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 visualDescriptorForBackgroundActivityWithIdentifier:v4];

  v7 = [v6 textLabel];

  return v7;
}

- (id)imageForUpdate:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 data];
  v6 = [v5 backgroundActivityEntry];
  v7 = [v6 backgroundActivityIdentifier];

  v8 = [(STUIStatusBarBackgroundActivityItem *)self _textLabelForActivityWithIdentifier:v7];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CCA898]);
    v23[0] = *MEMORY[0x277D740A8];
    v10 = [v4 styleAttributes];
    v11 = [v10 smallFont];
    v24[0] = v11;
    v23[1] = *MEMORY[0x277D740C0];
    v12 = [MEMORY[0x277D75348] whiteColor];
    v24[1] = v12;
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
    v18 = [(STUIStatusBarIndicatorItem *)&v20 imageForUpdate:v4];
  }

  return v18;
}

- (id)secondaryImageForUpdate:(id)a3
{
  v4 = [a3 data];
  v5 = [v4 backgroundActivityEntry];
  v6 = [v5 backgroundActivityIdentifier];
  v7 = [(STUIStatusBarBackgroundActivityItem *)self _secondarySystemImageNameForActivityWithIdentifier:v6];

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

+ (double)_verticalOffsetForActivityWithIdentifier:(id)a3
{
  v3 = MEMORY[0x277D6B920];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 visualDescriptorForBackgroundActivityWithIdentifier:v4];

  [v6 verticalOffset];
  v8 = v7;

  return v8;
}

+ (double)_fontSizeAdjustmentForActivityWithIdentifier:(id)a3
{
  v3 = MEMORY[0x277D6B920];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 visualDescriptorForBackgroundActivityWithIdentifier:v4];

  [v6 fontSizeAdjustment];
  v8 = v7;

  return v8;
}

- (id)_backgroundColorForActivityWithIdentifier:(id)a3
{
  v3 = MEMORY[0x277D6B920];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 visualDescriptorForBackgroundActivityWithIdentifier:v4];

  v7 = [v6 backgroundColor];

  return v7;
}

- (BOOL)_shouldRingForActivityWithIdentifier:(id)a3 traitCollection:(id)a4
{
  v5 = a3;
  if ([a4 userInterfaceIdiom] == 3)
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277D6B920] sharedInstance];
    v8 = [v7 visualDescriptorForBackgroundActivityWithIdentifier:v5];

    v9 = *MEMORY[0x277D6BBD0];
    v10 = [v8 preferredContinuousAnimationName];
    v6 = [v9 isEqualToString:v10];
  }

  return v6;
}

- (BOOL)_shouldPulseBackgroundForActivityWithIdentifier:(id)a3 traitCollection:(id)a4
{
  v5 = a3;
  if ([a4 userInterfaceIdiom] == 3)
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277D6B920] sharedInstance];
    v8 = [v7 visualDescriptorForBackgroundActivityWithIdentifier:v5];

    v9 = *MEMORY[0x277D6BBC0];
    v10 = [v8 preferredContinuousAnimationName];
    v6 = [v9 isEqualToString:v10];
  }

  return v6;
}

- (BOOL)_shouldPulseSymbolForActivityWithIdentifier:(id)a3 traitCollection:(id)a4
{
  v5 = a3;
  if ([a4 userInterfaceIdiom] == 3)
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277D6B920] sharedInstance];
    v8 = [v7 visualDescriptorForBackgroundActivityWithIdentifier:v5];

    v9 = *MEMORY[0x277D6BBC8];
    v10 = [v8 preferredContinuousAnimationName];
    v6 = [v9 isEqualToString:v10];
  }

  return v6;
}

- (id)_visualEffectForActivityWithIdentifier:(id)a3 traitCollection:(id)a4
{
  v5 = a3;
  if ([a4 userInterfaceIdiom] == 3)
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277D6B920] sharedInstance];
    v8 = [v7 visualDescriptorForBackgroundActivityWithIdentifier:v5];

    v6 = [v8 preferredVisualEffect];
  }

  return v6;
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

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() backgroundDisplayIdentifier];

  if (v5 == v4)
  {
    v7 = [(STUIStatusBarBackgroundActivityItem *)self backgroundView];
  }

  else
  {
    v6 = [objc_opt_class() secondaryIconDisplayIdentifier];

    if (v6 == v4)
    {
      v7 = [(STUIStatusBarBackgroundActivityItem *)self secondaryIconView];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = STUIStatusBarBackgroundActivityItem;
      v7 = [(STUIStatusBarIndicatorItem *)&v10 viewForIdentifier:v4];
    }
  }

  v8 = v7;

  return v8;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _STUIStatusBar_BackgroundActivity_Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_26C4DD000, v5, OS_LOG_TYPE_DEFAULT, "Adding default background activity item view with identifier: %@", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = STUIStatusBarBackgroundActivityItem;
  v6 = [(STUIStatusBarItem *)&v8 additionAnimationForDisplayItemWithIdentifier:v4];

  return v6;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _STUIStatusBar_BackgroundActivity_Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_26C4DD000, v5, OS_LOG_TYPE_DEFAULT, "Removing default background activity item view with identifier: %@", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = STUIStatusBarBackgroundActivityItem;
  v6 = [(STUIStatusBarItem *)&v8 removalAnimationForDisplayItemWithIdentifier:v4];

  return v6;
}

- (BOOL)crossfadeForUpdate:(id)a3
{
  v4 = [a3 data];
  v5 = [v4 backgroundActivityEntry];
  v6 = [v5 backgroundActivityIdentifier];

  if (self->_previousBackgroundActivityIdentifier)
  {
    v7 = v6 == 0;
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
    v8 = [MEMORY[0x277D6B920] sharedInstance];
    v9 = [v8 visualDescriptorForBackgroundActivityWithIdentifier:self->_previousBackgroundActivityIdentifier];

    v10 = [v9 canCrossfadeToBackgroundActivityWithIdentifier:v6];
  }

  return v10;
}

@end