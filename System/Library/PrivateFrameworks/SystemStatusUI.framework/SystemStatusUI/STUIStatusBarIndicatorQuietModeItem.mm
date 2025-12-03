@interface STUIStatusBarIndicatorQuietModeItem
- (BOOL)shouldUpdateIndicatorForIdentifier:(id)identifier;
- (STUIStatusBarImageView)emphasizedImageView;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)imageViewForIdentifier:(id)identifier;
- (id)systemImageNameForUpdate:(id)update;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_emphasizedImageView;
@end

@implementation STUIStatusBarIndicatorQuietModeItem

- (STUIStatusBarImageView)emphasizedImageView
{
  emphasizedImageView = self->_emphasizedImageView;
  if (!emphasizedImageView)
  {
    [(STUIStatusBarIndicatorQuietModeItem *)self _create_emphasizedImageView];
    emphasizedImageView = self->_emphasizedImageView;
  }

  return emphasizedImageView;
}

- (void)_create_emphasizedImageView
{
  v3 = [STUIStatusBarImageView alloc];
  v4 = [(STUIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  emphasizedImageView = self->_emphasizedImageView;
  self->_emphasizedImageView = v4;

  v6 = self->_emphasizedImageView;

  [(STUIStatusBarImageView *)v6 setFontStyle:1];
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  emphasizedQuietModeIdentifier = [objc_opt_class() emphasizedQuietModeIdentifier];

  if (emphasizedQuietModeIdentifier == identifierCopy)
  {
    emphasizedImageView = [(STUIStatusBarIndicatorQuietModeItem *)self emphasizedImageView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarIndicatorQuietModeItem;
    emphasizedImageView = [(STUIStatusBarIndicatorItem *)&v9 viewForIdentifier:identifierCopy];
  }

  v7 = emphasizedImageView;

  return v7;
}

- (id)imageViewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  emphasizedQuietModeIdentifier = [objc_opt_class() emphasizedQuietModeIdentifier];

  if (emphasizedQuietModeIdentifier == identifierCopy)
  {
    emphasizedImageView = [(STUIStatusBarIndicatorQuietModeItem *)self emphasizedImageView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarIndicatorQuietModeItem;
    emphasizedImageView = [(STUIStatusBarIndicatorItem *)&v9 imageViewForIdentifier:identifierCopy];
  }

  v7 = emphasizedImageView;

  return v7;
}

- (BOOL)shouldUpdateIndicatorForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  emphasizedQuietModeIdentifier = [objc_opt_class() emphasizedQuietModeIdentifier];
  if (emphasizedQuietModeIdentifier == identifierCopy)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = STUIStatusBarIndicatorQuietModeItem;
    v6 = [(STUIStatusBarIndicatorItem *)&v8 shouldUpdateIndicatorForIdentifier:identifierCopy];
  }

  return v6;
}

- (id)systemImageNameForUpdate:(id)update
{
  data = [update data];
  quietModeEntry = [data quietModeEntry];
  imageName = [quietModeEntry imageName];
  v6 = imageName;
  if (imageName)
  {
    v7 = imageName;
  }

  else
  {
    v7 = @"moon.fill";
  }

  v8 = v7;

  return v7;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v19.receiver = self;
  v19.super_class = STUIStatusBarIndicatorQuietModeItem;
  v8 = [(STUIStatusBarIndicatorItem *)&v19 applyUpdate:updateCopy toDisplayItem:itemCopy];
  if ([updateCopy dataChanged])
  {
    data = [updateCopy data];
    quietModeEntry = [data quietModeEntry];
    bOOLValue = [quietModeEntry BOOLValue];

    v12 = 0.3;
    if (bOOLValue)
    {
      v12 = 1.0;
    }

    [itemCopy setViewAlpha:v12];
    identifier = [itemCopy identifier];
    v14 = [(STUIStatusBarIndicatorQuietModeItem *)self imageViewForIdentifier:identifier];
    [v14 setUseDisabledAppearanceForAccessibilityHUD:bOOLValue ^ 1u];

    data2 = [updateCopy data];
    quietModeEntry2 = [data2 quietModeEntry];
    focusName = [quietModeEntry2 focusName];
    [(STUIStatusBarIndicatorQuietModeItem *)self setFocusName:focusName];
  }

  return v8;
}

@end