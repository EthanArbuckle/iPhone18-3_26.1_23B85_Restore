@interface _UIStatusBarIndicatorItem
- (BOOL)shouldUpdateIndicatorForIdentifier:(id)a3;
- (_UIStatusBarImageView)imageView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)dependentEntryKeys;
- (id)imageForUpdate:(id)a3;
- (void)_create_imageView;
@end

@implementation _UIStatusBarIndicatorItem

- (id)dependentEntryKeys
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(_UIStatusBarIndicatorItem *)self indicatorEntryKey];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)imageForUpdate:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIStatusBarIndicatorItem *)self systemImageNameForUpdate:v4];
  if (v5)
  {
    v6 = v5;
    v7 = [UIImage _systemImageNamed:v5];
    if (!v7)
    {
      v8 = *(__UILogGetCategoryCachedImpl("StatusBar", &imageForUpdate____s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = v6;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "No system image for name %@", &v17, 0xCu);
      }
    }

    if ([(_UIStatusBarIndicatorItem *)self useMultiColorSystemImageForUpdate:v4])
    {
      v9 = [v7 imageWithRenderingMode:1];

      v7 = v9;
    }
  }

  else
  {
    v6 = [(_UIStatusBarIndicatorItem *)self imageNameForUpdate:v4];
    if (v6)
    {
      v10 = +[_UIStatusBarImageProvider sharedProvider];
      v11 = [v4 styleAttributes];
      v12 = [v10 imageNamed:v6 styleAttributes:v11];

      if ([(_UIStatusBarIndicatorItem *)self isTemplateImage])
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

  if ([(_UIStatusBarIndicatorItem *)self flipsForRightToLeftLayoutDirection])
  {
    v15 = [v7 imageFlippedForRightToLeftLayoutDirection];

    v7 = v15;
  }

  return v7;
}

- (_UIStatusBarImageView)imageView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    [(_UIStatusBarIndicatorItem *)self _create_imageView];
    imageView = self->_imageView;
  }

  return imageView;
}

- (void)_create_imageView
{
  v3 = [_UIStatusBarImageView alloc];
  v4 = [(_UIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  imageView = self->_imageView;
  self->_imageView = v4;
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
  v25.receiver = self;
  v25.super_class = _UIStatusBarIndicatorItem;
  v8 = [(_UIStatusBarItem *)&v25 applyUpdate:v6 toDisplayItem:v7];
  v9 = [v7 identifier];
  if (![(_UIStatusBarIndicatorItem *)self shouldUpdateIndicatorForIdentifier:v9])
  {
    goto LABEL_19;
  }

  v10 = [v7 isEnabled];

  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = [objc_opt_class() instanceMethodForSelector:sel_imageForUpdate_];
  v12 = [_UIStatusBarIndicatorItem instanceMethodForSelector:sel_imageForUpdate_];
  v13 = [v6 styleAttributes];
  v9 = [v13 imageNamePrefixes];

  if ([v6 dataChanged] & 1) != 0 || v11 != v12 && (objc_msgSend(v6, "styleAttributesChanged"))
  {
    goto LABEL_12;
  }

  currentImageNamePrefixes = self->_currentImageNamePrefixes;
  v15 = v9;
  v16 = currentImageNamePrefixes;
  v17 = v16;
  if (v15 == v16)
  {
    goto LABEL_17;
  }

  if (!v15 || !v16)
  {

    goto LABEL_12;
  }

  v18 = [(NSArray *)v15 isEqual:v16];

  if ((v18 & 1) == 0)
  {
LABEL_12:
    [(_UIStatusBarIndicatorItem *)self setCurrentImageNamePrefixes:v9];
    v15 = [(_UIStatusBarIndicatorItem *)self imageForUpdate:v6];
    if (!v15)
    {
      [v7 setEnabled:0];
LABEL_18:

      goto LABEL_19;
    }

    v19 = [v7 identifier];
    v17 = [(_UIStatusBarIndicatorItem *)self imageViewForIdentifier:v19];

    if ([(_UIStatusBarIndicatorItem *)self crossfadeForUpdate:v6])
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __55___UIStatusBarIndicatorItem_applyUpdate_toDisplayItem___block_invoke;
      v22[3] = &unk_1E711FA28;
      v23 = v17;
      v24 = v15;
      v20 = [_UIStatusBarAnimation animationWithBlock:v22];

      v8 = v20;
    }

    else
    {
      [v17 setImage:v15];
    }

LABEL_17:

    goto LABEL_18;
  }

  v9 = v15;
LABEL_19:

LABEL_20:

  return v8;
}

@end