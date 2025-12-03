@interface STUIStatusBarIndicatorItem
- (BOOL)shouldUpdateIndicatorForIdentifier:(id)identifier;
- (STUIStatusBarImageView)imageView;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)dependentEntryKeys;
- (id)imageForUpdate:(id)update;
- (void)_create_imageView;
@end

@implementation STUIStatusBarIndicatorItem

- (void)_create_imageView
{
  v3 = objc_alloc([(STUIStatusBarIndicatorItem *)self imageViewClass]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  imageView = self->_imageView;
  self->_imageView = v4;

  fontStyle = [(STUIStatusBarIndicatorItem *)self fontStyle];
  v7 = self->_imageView;

  [(STUIStatusBarImageView *)v7 setFontStyle:fontStyle];
}

- (STUIStatusBarImageView)imageView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    [(STUIStatusBarIndicatorItem *)self _create_imageView];
    imageView = self->_imageView;
  }

  return imageView;
}

- (id)dependentEntryKeys
{
  v2 = MEMORY[0x277CBEB98];
  indicatorEntryKey = [(STUIStatusBarIndicatorItem *)self indicatorEntryKey];
  v4 = [v2 setWithObject:indicatorEntryKey];

  return v4;
}

- (id)imageForUpdate:(id)update
{
  v19 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = [(STUIStatusBarIndicatorItem *)self systemImageNameForUpdate:updateCopy];
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x277D755B8] _systemImageNamed:v5];
    if (!v7)
    {
      v8 = _STUIStatusBar_Log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = v6;
        _os_log_impl(&dword_26C4DD000, v8, OS_LOG_TYPE_ERROR, "No system image for name %@", &v17, 0xCu);
      }
    }

    if ([(STUIStatusBarIndicatorItem *)self useMultiColorSystemImageForUpdate:updateCopy])
    {
      v9 = [v7 imageWithRenderingMode:1];

      v7 = v9;
    }
  }

  else
  {
    v6 = [(STUIStatusBarIndicatorItem *)self imageNameForUpdate:updateCopy];
    if (v6)
    {
      v10 = +[STUIStatusBarImageProvider sharedProvider];
      styleAttributes = [updateCopy styleAttributes];
      v12 = [v10 imageNamed:v6 styleAttributes:styleAttributes];

      if ([(STUIStatusBarIndicatorItem *)self isTemplateImage])
      {
        v13 = v12;
        v14 = 2;
      }

      else
      {
        v13 = v12;
        v14 = 1;
      }

      v7 = [v13 imageWithRenderingMode:v14];
    }

    else
    {
      v7 = 0;
    }
  }

  if ([(STUIStatusBarIndicatorItem *)self flipsForRightToLeftLayoutDirection])
  {
    imageFlippedForRightToLeftLayoutDirection = [v7 imageFlippedForRightToLeftLayoutDirection];

    v7 = imageFlippedForRightToLeftLayoutDirection;
  }

  return v7;
}

- (BOOL)shouldUpdateIndicatorForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  defaultDisplayIdentifier = [objc_opt_class() defaultDisplayIdentifier];

  return defaultDisplayIdentifier == identifierCopy;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v22.receiver = self;
  v22.super_class = STUIStatusBarIndicatorItem;
  v8 = [(STUIStatusBarItem *)&v22 applyUpdate:updateCopy toDisplayItem:itemCopy];
  identifier = [itemCopy identifier];
  if ([(STUIStatusBarIndicatorItem *)self shouldUpdateIndicatorForIdentifier:identifier])
  {
    isEnabled = [itemCopy isEnabled];

    if (!isEnabled)
    {
      goto LABEL_15;
    }

    v11 = [objc_opt_class() instanceMethodForSelector:sel_imageForUpdate_];
    v12 = [STUIStatusBarIndicatorItem instanceMethodForSelector:sel_imageForUpdate_];
    styleAttributes = [updateCopy styleAttributes];
    identifier = [styleAttributes imageNamePrefixes];

    if (([updateCopy dataChanged] & 1) != 0 || v11 != v12 && (objc_msgSend(updateCopy, "styleAttributesChanged") & 1) != 0 || (BSEqualObjects() & 1) == 0)
    {
      [(STUIStatusBarIndicatorItem *)self setCurrentImageNamePrefixes:identifier];
      v14 = [(STUIStatusBarIndicatorItem *)self imageForUpdate:updateCopy];
      if (v14)
      {
        identifier2 = [itemCopy identifier];
        v16 = [(STUIStatusBarIndicatorItem *)self imageViewForIdentifier:identifier2];

        if ([(STUIStatusBarIndicatorItem *)self crossfadeForUpdate:updateCopy])
        {
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __56__STUIStatusBarIndicatorItem_applyUpdate_toDisplayItem___block_invoke;
          v19[3] = &unk_279D38740;
          v20 = v16;
          v21 = v14;
          v17 = [STUIStatusBarAnimation animationWithBlock:v19];

          v8 = v17;
        }

        else
        {
          [v16 setImage:v14];
        }
      }

      else
      {
        [itemCopy setEnabled:0];
      }
    }
  }

LABEL_15:

  return v8;
}

void __56__STUIStatusBarIndicatorItem_applyUpdate_toDisplayItem___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__STUIStatusBarIndicatorItem_applyUpdate_toDisplayItem___block_invoke_2;
  v7[3] = &unk_279D38150;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  [v6 animateWithDuration:0 delay:v7 options:a4 animations:0.333 completion:0.0];
}

@end