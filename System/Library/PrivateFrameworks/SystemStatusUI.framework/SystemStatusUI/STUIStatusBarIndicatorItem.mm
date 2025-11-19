@interface STUIStatusBarIndicatorItem
- (BOOL)shouldUpdateIndicatorForIdentifier:(id)a3;
- (STUIStatusBarImageView)imageView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)dependentEntryKeys;
- (id)imageForUpdate:(id)a3;
- (void)_create_imageView;
@end

@implementation STUIStatusBarIndicatorItem

- (void)_create_imageView
{
  v3 = objc_alloc([(STUIStatusBarIndicatorItem *)self imageViewClass]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  imageView = self->_imageView;
  self->_imageView = v4;

  v6 = [(STUIStatusBarIndicatorItem *)self fontStyle];
  v7 = self->_imageView;

  [(STUIStatusBarImageView *)v7 setFontStyle:v6];
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
  v3 = [(STUIStatusBarIndicatorItem *)self indicatorEntryKey];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)imageForUpdate:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(STUIStatusBarIndicatorItem *)self systemImageNameForUpdate:v4];
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

    if ([(STUIStatusBarIndicatorItem *)self useMultiColorSystemImageForUpdate:v4])
    {
      v9 = [v7 imageWithRenderingMode:1];

      v7 = v9;
    }
  }

  else
  {
    v6 = [(STUIStatusBarIndicatorItem *)self imageNameForUpdate:v4];
    if (v6)
    {
      v10 = +[STUIStatusBarImageProvider sharedProvider];
      v11 = [v4 styleAttributes];
      v12 = [v10 imageNamed:v6 styleAttributes:v11];

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
    v15 = [v7 imageFlippedForRightToLeftLayoutDirection];

    v7 = v15;
  }

  return v7;
}

- (BOOL)shouldUpdateIndicatorForIdentifier:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() defaultDisplayIdentifier];

  return v4 == v3;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = STUIStatusBarIndicatorItem;
  v8 = [(STUIStatusBarItem *)&v22 applyUpdate:v6 toDisplayItem:v7];
  v9 = [v7 identifier];
  if ([(STUIStatusBarIndicatorItem *)self shouldUpdateIndicatorForIdentifier:v9])
  {
    v10 = [v7 isEnabled];

    if (!v10)
    {
      goto LABEL_15;
    }

    v11 = [objc_opt_class() instanceMethodForSelector:sel_imageForUpdate_];
    v12 = [STUIStatusBarIndicatorItem instanceMethodForSelector:sel_imageForUpdate_];
    v13 = [v6 styleAttributes];
    v9 = [v13 imageNamePrefixes];

    if (([v6 dataChanged] & 1) != 0 || v11 != v12 && (objc_msgSend(v6, "styleAttributesChanged") & 1) != 0 || (BSEqualObjects() & 1) == 0)
    {
      [(STUIStatusBarIndicatorItem *)self setCurrentImageNamePrefixes:v9];
      v14 = [(STUIStatusBarIndicatorItem *)self imageForUpdate:v6];
      if (v14)
      {
        v15 = [v7 identifier];
        v16 = [(STUIStatusBarIndicatorItem *)self imageViewForIdentifier:v15];

        if ([(STUIStatusBarIndicatorItem *)self crossfadeForUpdate:v6])
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
        [v7 setEnabled:0];
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