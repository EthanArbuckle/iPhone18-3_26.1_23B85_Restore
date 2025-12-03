@interface _UIStatusBarIndicatorQuietModeItem
- (BOOL)shouldUpdateIndicatorForIdentifier:(id)identifier;
- (_UIStatusBarImageView)emphasizedImageView;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)imageViewForIdentifier:(id)identifier;
- (id)systemImageNameForUpdate:(id)update;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_emphasizedImageView;
@end

@implementation _UIStatusBarIndicatorQuietModeItem

- (_UIStatusBarImageView)emphasizedImageView
{
  emphasizedImageView = self->_emphasizedImageView;
  if (!emphasizedImageView)
  {
    [(_UIStatusBarIndicatorQuietModeItem *)self _create_emphasizedImageView];
    emphasizedImageView = self->_emphasizedImageView;
  }

  return emphasizedImageView;
}

- (void)_create_emphasizedImageView
{
  v3 = [_UIStatusBarImageView alloc];
  v4 = [(_UIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  emphasizedImageView = self->_emphasizedImageView;
  self->_emphasizedImageView = v4;

  v6 = self->_emphasizedImageView;

  [(_UIStatusBarImageView *)v6 setFontStyle:1];
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  emphasizedQuietModeIdentifier = [objc_opt_class() emphasizedQuietModeIdentifier];

  if (emphasizedQuietModeIdentifier == identifierCopy)
  {
    emphasizedImageView = [(_UIStatusBarIndicatorQuietModeItem *)self emphasizedImageView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIStatusBarIndicatorQuietModeItem;
    emphasizedImageView = [(_UIStatusBarIndicatorItem *)&v9 viewForIdentifier:identifierCopy];
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
    emphasizedImageView = [(_UIStatusBarIndicatorQuietModeItem *)self emphasizedImageView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIStatusBarIndicatorQuietModeItem;
    emphasizedImageView = [(_UIStatusBarIndicatorItem *)&v9 imageViewForIdentifier:identifierCopy];
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
    v8.super_class = _UIStatusBarIndicatorQuietModeItem;
    v6 = [(_UIStatusBarIndicatorItem *)&v8 shouldUpdateIndicatorForIdentifier:identifierCopy];
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
  v19.super_class = _UIStatusBarIndicatorQuietModeItem;
  v8 = [(_UIStatusBarIndicatorItem *)&v19 applyUpdate:updateCopy toDisplayItem:itemCopy];
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
    v14 = [(_UIStatusBarIndicatorQuietModeItem *)self imageViewForIdentifier:identifier];
    [v14 setUseDisabledAppearanceForAccessibilityHUD:bOOLValue ^ 1u];

    data2 = [updateCopy data];
    quietModeEntry2 = [data2 quietModeEntry];
    focusName = [quietModeEntry2 focusName];
    [(_UIStatusBarIndicatorQuietModeItem *)self setFocusName:focusName];
  }

  return v8;
}

@end