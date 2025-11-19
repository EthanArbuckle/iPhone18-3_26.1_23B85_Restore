@interface PXCuratedLibraryOverlayButtonConfiguration
+ (NSCache)tintedImageCache;
+ (id)configurationWithButtonType:(int64_t)a3 spec:(id)a4;
+ (id)configurationWithButtonType:(int64_t)a3 title:(id)a4 spec:(id)a5;
+ (id)configurationWithSystemImageName:(id)a3 spec:(id)a4;
+ (id)configurationWithSystemImageName:(id)a3 title:(id)a4 spec:(id)a5;
+ (id)configurationWithTitle:(id)a3 spec:(id)a4;
- (BOOL)isEqual:(id)a3;
- (PXCuratedLibraryOverlayButtonConfiguration)init;
- (PXCuratedLibraryOverlayButtonConfiguration)initWithSystemImageName:(id)a3 title:(id)a4 spec:(id)a5 buttonType:(int64_t)a6;
- (UIColor)contentColor;
- (UIColor)highlightedContentColor;
- (UIEdgeInsets)hitTestOutsets;
- (UIEdgeInsets)imageEdgeInsets;
- (UIImage)highlightedIconImage;
- (UIImage)iconImage;
- (UIImage)iconImageWithoutConfiguration;
- (UIImage)tintedIconImage;
- (id)_contentColorWhenHighlighted:(BOOL)a3;
- (id)_tintedImage:(id)a3 name:(id)a4 withColor:(id)a5;
- (unint64_t)hash;
- (void)prepareForRender;
- (void)setTintColor:(id)a3;
@end

@implementation PXCuratedLibraryOverlayButtonConfiguration

- (UIEdgeInsets)hitTestOutsets
{
  top = self->_hitTestOutsets.top;
  left = self->_hitTestOutsets.left;
  bottom = self->_hitTestOutsets.bottom;
  right = self->_hitTestOutsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)imageEdgeInsets
{
  top = self->_imageEdgeInsets.top;
  left = self->_imageEdgeInsets.left;
  bottom = self->_imageEdgeInsets.bottom;
  right = self->_imageEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIImage)highlightedIconImage
{
  if (!self->_highlightedIconImage)
  {
    v3 = [(PXCuratedLibraryOverlayButtonConfiguration *)self iconImage];

    if (v3)
    {
      v4 = [(PXCuratedLibraryOverlayButtonConfiguration *)self iconImage];
      v5 = [(PXCuratedLibraryOverlayButtonConfiguration *)self systemImageName];
      v6 = [(PXCuratedLibraryOverlayButtonConfiguration *)self highlightedContentColor];
      v7 = [(PXCuratedLibraryOverlayButtonConfiguration *)self _tintedImage:v4 name:v5 withColor:v6];
      highlightedIconImage = self->_highlightedIconImage;
      self->_highlightedIconImage = v7;
    }
  }

  v9 = self->_highlightedIconImage;

  return v9;
}

- (UIImage)tintedIconImage
{
  if (!self->_tintedIconImage)
  {
    v3 = [(PXCuratedLibraryOverlayButtonConfiguration *)self iconImage];

    if (v3)
    {
      v4 = [(PXCuratedLibraryOverlayButtonConfiguration *)self iconImage];
      v5 = [(PXCuratedLibraryOverlayButtonConfiguration *)self systemImageName];
      v6 = [(PXCuratedLibraryOverlayButtonConfiguration *)self contentColor];
      v7 = [(PXCuratedLibraryOverlayButtonConfiguration *)self _tintedImage:v4 name:v5 withColor:v6];
      tintedIconImage = self->_tintedIconImage;
      self->_tintedIconImage = v7;
    }
  }

  v9 = self->_tintedIconImage;

  return v9;
}

- (id)_tintedImage:(id)a3 name:(id)a4 withColor:(id)a5
{
  v23[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [objc_opt_class() tintedImageCache];
  v12 = [off_1E7721928 alloc];
  v23[0] = v10;
  v23[1] = v9;
  v13 = MEMORY[0x1E696AD98];
  v14 = [(PXCuratedLibraryOverlayButtonConfiguration *)self spec];
  v15 = [v13 numberWithInteger:{objc_msgSend(v14, "userInterfaceStyle")}];
  v23[2] = v15;
  v16 = MEMORY[0x1E696AD98];
  v17 = [(PXCuratedLibraryOverlayButtonConfiguration *)self spec];
  v18 = [v16 numberWithInteger:{objc_msgSend(v17, "userInterfaceLevel")}];
  v23[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];

  v20 = [v12 initWithObjects:v19];
  v21 = [v11 objectForKey:v20];
  if (!v21)
  {
    v21 = [v8 px_tintedImageWithColor:v9];
    [v11 setObject:v21 forKey:v20];
  }

  return v21;
}

- (UIImage)iconImageWithoutConfiguration
{
  iconImageWithoutConfiguration = self->_iconImageWithoutConfiguration;
  if (!iconImageWithoutConfiguration)
  {
    v4 = [(PXCuratedLibraryOverlayButtonConfiguration *)self systemImageName];
    if (v4)
    {
      v5 = [MEMORY[0x1E69DCAB8] px_systemImageNamed:v4];
      v6 = self->_iconImageWithoutConfiguration;
      self->_iconImageWithoutConfiguration = v5;
    }

    iconImageWithoutConfiguration = self->_iconImageWithoutConfiguration;
  }

  return iconImageWithoutConfiguration;
}

- (UIImage)iconImage
{
  v44 = *MEMORY[0x1E69E9840];
  iconImage = self->_iconImage;
  if (!iconImage)
  {
    v4 = [(PXCuratedLibraryOverlayButtonConfiguration *)self iconImageWithoutConfiguration];
    v5 = self;
    if (_PXIconImageSymbolConfiguration_onceToken != -1)
    {
      dispatch_once(&_PXIconImageSymbolConfiguration_onceToken, &__block_literal_global_863_140948);
    }

    v6 = [MEMORY[0x1E69DC668] sharedApplication];
    v7 = [v6 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

    v9 = [(PXCuratedLibraryOverlayButtonConfiguration *)v5 systemImageName];
    v10 = [off_1E7721928 alloc];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXCuratedLibraryOverlayButtonConfiguration style](v5, "style")}];
    v12 = v11;
    if (v9)
    {
      v13 = [MEMORY[0x1E69DC668] sharedApplication];
      v14 = [v13 preferredContentSizeCategory];
      v42 = v14;
      v43 = v9;
      v15 = MEMORY[0x1E695DEC8];
      v16 = 3;
    }

    else
    {
      v13 = [MEMORY[0x1E69DC668] sharedApplication];
      v14 = [v13 preferredContentSizeCategory];
      v42 = v14;
      v15 = MEMORY[0x1E695DEC8];
      v16 = 2;
    }

    v17 = [v15 arrayWithObjects:&v41 count:v16];
    v18 = [v10 initWithObjects:v17];

    v19 = &lastSeenSuggestionsDateAccessor_lastSeenSuggestionsDateAccessor;
    v20 = [_PXIconImageSymbolConfiguration_configsCache objectForKey:v18];
    if (v20)
    {
      goto LABEL_32;
    }

    v21 = [(PXCuratedLibraryOverlayButtonConfiguration *)v5 style];
    if (v21 <= 0xE)
    {
      if (((1 << v21) & 0x6FC0) != 0)
      {
LABEL_10:
        v22 = MEMORY[0x1E69DDC50];
        if (!IsAccessibilityCategory)
        {
          v22 = MEMORY[0x1E69DDC70];
        }

        v23 = *v22;
        v24 = [(PXCuratedLibraryOverlayButtonConfiguration *)v5 spec];
        v25 = [v24 options];

        v26 = MEMORY[0x1E69DDCF8];
        if ((v25 & 4) == 0)
        {
          v26 = MEMORY[0x1E69DDD78];
        }

        v27 = *v26;
        v28 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:v27 maxContentSizeCategory:v23 withSymbolicTraits:32770];
        if ((v25 & 4) != 0 || ([v9 isEqualToString:@"person.fill"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"person.2.fill"))
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        v30 = MEMORY[0x1E69DCAD8];
        [v28 pointSize];
        v20 = [v30 configurationWithPointSize:6 weight:v29 scale:?];

        v19 = &lastSeenSuggestionsDateAccessor_lastSeenSuggestionsDateAccessor;
        goto LABEL_30;
      }

      if (((1 << v21) & 0x30) != 0)
      {
        v23 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] maxContentSizeCategory:*MEMORY[0x1E69DDC58] withSymbolicTraits:4096];
        v31 = MEMORY[0x1E69DCAD8];
        [v23 pointSize];
        v33 = v32 + 2.0;
LABEL_25:
        v35 = v31;
        v36 = 6;
        goto LABEL_29;
      }

      if (v21 == 12)
      {
        v34 = MEMORY[0x1E69DDC50];
        if (!IsAccessibilityCategory)
        {
          v34 = MEMORY[0x1E69DDC70];
        }

        v23 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD78] maxContentSizeCategory:*v34 withSymbolicTraits:32770];
        v31 = MEMORY[0x1E69DCAD8];
        [v23 pointSize];
        goto LABEL_25;
      }
    }

    if (v21 < 2)
    {
      goto LABEL_10;
    }

    if (v21 - 2 > 1)
    {
      v20 = 0;
      goto LABEL_31;
    }

    v23 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] maxContentSizeCategory:*MEMORY[0x1E69DDC58] withSymbolicTraits:4096];
    v37 = MEMORY[0x1E69DCAD8];
    [v23 pointSize];
    v35 = v37;
    v36 = 4;
LABEL_29:
    v20 = [v35 configurationWithPointSize:v36 weight:3 scale:v33];
LABEL_30:

LABEL_31:
    [v19[118] setObject:v20 forKey:v18];
LABEL_32:

    v38 = [v4 imageWithSymbolConfiguration:v20];
    v39 = self->_iconImage;
    self->_iconImage = v38;

    iconImage = self->_iconImage;
  }

  return iconImage;
}

- (UIColor)highlightedContentColor
{
  highlightedContentColor = self->_highlightedContentColor;
  if (!highlightedContentColor)
  {
    v4 = [(PXCuratedLibraryOverlayButtonConfiguration *)self _contentColorWhenHighlighted:1];
    v5 = self->_highlightedContentColor;
    self->_highlightedContentColor = v4;

    highlightedContentColor = self->_highlightedContentColor;
  }

  return highlightedContentColor;
}

- (UIColor)contentColor
{
  contentColor = self->_contentColor;
  if (!contentColor)
  {
    v4 = [(PXCuratedLibraryOverlayButtonConfiguration *)self _contentColorWhenHighlighted:0];
    v5 = self->_contentColor;
    self->_contentColor = v4;

    contentColor = self->_contentColor;
  }

  return contentColor;
}

- (id)_contentColorWhenHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXCuratedLibraryOverlayButtonConfiguration *)self actionPerformer];
  if (v5 || ([(PXCuratedLibraryOverlayButtonConfiguration *)self actionHandler], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v11 = [(PXCuratedLibraryOverlayButtonConfiguration *)self menuActionHandler];

    if (!v11)
    {
      v12 = [MEMORY[0x1E69DC888] labelColor];
      v7 = [v12 colorWithAlphaComponent:0.3];

      goto LABEL_12;
    }
  }

  if ([(PXCuratedLibraryOverlayButtonConfiguration *)self style]== 8)
  {
    v6 = [MEMORY[0x1E69DC888] labelColor];
    v7 = v6;
    if (!v3)
    {
      v8 = [v6 colorWithAlphaComponent:0.5];

      v7 = v8;
    }
  }

  else
  {
    if ([(PXCuratedLibraryOverlayButtonConfiguration *)self style]== 10 || !v3)
    {
      v9 = [(PXCuratedLibraryOverlayButtonConfiguration *)self tintColor];
    }

    else
    {
      v9 = [MEMORY[0x1E69DC888] _vibrantLightFillBurnColor];
    }

    v7 = v9;
  }

LABEL_12:

  return v7;
}

- (void)setTintColor:(id)a3
{
  v4 = a3;
  if (self->_tintColor != v4)
  {
    v7 = v4;
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = +[PXCuratedLibraryOverlayButton defaultTitleColor];
    }

    tintColor = self->_tintColor;
    self->_tintColor = v5;

    v4 = v7;
  }
}

- (void)prepareForRender
{
  [(PXCuratedLibraryOverlayButtonConfiguration *)self contentColor];

  [(PXCuratedLibraryOverlayButtonConfiguration *)self highlightedContentColor];
  [(PXCuratedLibraryOverlayButtonConfiguration *)self iconImage];

  [(PXCuratedLibraryOverlayButtonConfiguration *)self iconImageWithoutConfiguration];
  [(PXCuratedLibraryOverlayButtonConfiguration *)self tintedIconImage];

  v3 = [(PXCuratedLibraryOverlayButtonConfiguration *)self highlightedIconImage];
}

- (unint64_t)hash
{
  [(PXCuratedLibraryOverlayButtonConfiguration *)self imageEdgeInsets];
  v35 = v3;
  v32 = v4;
  v27 = v6;
  v29 = v5;
  v37 = [(PXCuratedLibraryOverlayButtonConfiguration *)self style];
  v34 = [(PXCuratedLibraryOverlayButtonConfiguration *)self segment];
  v38 = [(PXCuratedLibraryOverlayButtonConfiguration *)self systemImageName];
  v31 = [v38 hash];
  v7.f64[0] = v29;
  v7.f64[1] = v27;
  v8.f64[0] = v35;
  v8.f64[1] = v32;
  v9 = vdupq_n_s64(0x4059000000000000uLL);
  v26 = vcvtq_u64_f64(vmulq_f64(v8, v9));
  v28 = vcvtq_u64_f64(vmulq_f64(v7, v9));
  v36 = [(PXCuratedLibraryOverlayButtonConfiguration *)self title];
  v25 = [v36 hash];
  v33 = [(PXCuratedLibraryOverlayButtonConfiguration *)self possibleTitles];
  v24 = [v33 hash];
  v30 = [(PXCuratedLibraryOverlayButtonConfiguration *)self caption];
  v23 = [v30 hash];
  v10 = [(PXCuratedLibraryOverlayButtonConfiguration *)self actionPerformer];
  v11 = [v10 hash];
  v12 = [(PXCuratedLibraryOverlayButtonConfiguration *)self actionHandler];
  v13 = [(PXCuratedLibraryOverlayButtonConfiguration *)self spec];
  v14 = [v13 hash];
  v15 = [(PXCuratedLibraryOverlayButtonConfiguration *)self tintColor];
  v16 = [v15 hash];
  v17 = [(PXCuratedLibraryOverlayButtonConfiguration *)self backgroundColor];
  v18 = [v17 hash];
  v19 = [(PXCuratedLibraryOverlayButtonConfiguration *)self forcePointerInteractionEnabled];
  v20 = veorq_s8(v26, v28);
  v21 = *&veor_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)) ^ v19;

  return v21 ^ v18 ^ v16 ^ v14 ^ v12 ^ v11 ^ v23 ^ v24 ^ v25 ^ v31 ^ v37 ^ v34;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXCuratedLibraryOverlayButtonConfiguration *)v5 style];
      if (v6 == [(PXCuratedLibraryOverlayButtonConfiguration *)self style])
      {
        v7 = [(PXCuratedLibraryOverlayButtonConfiguration *)self segment];
        if (v7 == [(PXCuratedLibraryOverlayButtonConfiguration *)v5 segment])
        {
          [(PXCuratedLibraryOverlayButtonConfiguration *)self imageEdgeInsets];
          [(PXCuratedLibraryOverlayButtonConfiguration *)v5 imageEdgeInsets];
          PXEdgeInsetsEqualToEdgeInsets();
        }
      }

      v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (PXCuratedLibraryOverlayButtonConfiguration)initWithSystemImageName:(id)a3 title:(id)a4 spec:(id)a5 buttonType:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v29.receiver = self;
  v29.super_class = PXCuratedLibraryOverlayButtonConfiguration;
  v13 = [(PXCuratedLibraryOverlayButtonConfiguration *)&v29 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_34;
  }

  objc_storeStrong(&v13->_spec, a5);
  v15 = [v11 copy];
  title = v14->_title;
  v14->_title = v15;

  *&v14->_hitTestOutsets.top = PXDefaultButtonHitTestOutsets;
  *&v14->_hitTestOutsets.bottom = unk_1A5382138;
  v17 = +[PXCuratedLibraryOverlayButton defaultTitleColor];
  tintColor = v14->_tintColor;
  v14->_tintColor = v17;

  v14->_buttonType = a6;
  switch(a6)
  {
    case 1:
      v19 = @"PXCuratedLibraryEllipsisButtonAXLabel";
      break;
    case 6:
      v19 = @"PXCuratedLibrarySquareGridButtonAXLabel";
      break;
    case 5:
      v19 = @"PXCuratedLibraryAspectGridButtonAXLabel";
      break;
    default:
      v20 = 0;
      goto LABEL_10;
  }

  v20 = PXLocalizedStringFromTable(v19, @"PhotosUICore");
LABEL_10:
  accessibilityTitle = v14->_accessibilityTitle;
  v14->_accessibilityTitle = v20;

  if (a6)
  {
    v22 = v12;
    v23 = v22;
    v24 = 0;
    if (a6 > 3)
    {
      switch(a6)
      {
        case 4:
          v24 = @"chevron.down";
          break;
        case 5:
          v24 = @"rectangle.arrowtriangle.2.inward";
          break;
        case 6:
          v24 = @"rectangle.arrowtriangle.2.outward";
          break;
      }
    }

    else
    {
      switch(a6)
      {
        case 1:
          if ([v22 ellipsisButtonSpecialTreatment] && objc_msgSend(v23, "isFloating"))
          {
            v25 = [v23 variant];
            v26 = @"ellipsis";
            if (v25 == 2)
            {
              v26 = @"person.fill";
            }

            if (v25 == 3)
            {
              v26 = @"person.2.fill";
            }

            v24 = v26;
          }

          else
          {
            v24 = @"ellipsis";
          }

          break;
        case 2:
          v24 = @"square.and.arrow.up";
          break;
        case 3:
          v24 = @"trash";
          break;
      }
    }
  }

  else
  {
    v24 = [v10 copy];
  }

  systemImageName = v14->_systemImageName;
  v14->_systemImageName = &v24->isa;

LABEL_34:
  return v14;
}

- (PXCuratedLibraryOverlayButtonConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:367 description:{@"%s is not available as initializer", "-[PXCuratedLibraryOverlayButtonConfiguration init]"}];

  abort();
}

+ (NSCache)tintedImageCache
{
  if (tintedImageCache_onceToken != -1)
  {
    dispatch_once(&tintedImageCache_onceToken, &__block_literal_global_141230);
  }

  v3 = tintedImageCache_cache;

  return v3;
}

void __62__PXCuratedLibraryOverlayButtonConfiguration_tintedImageCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = tintedImageCache_cache;
  tintedImageCache_cache = v0;
}

+ (id)configurationWithButtonType:(int64_t)a3 title:(id)a4 spec:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[PXCuratedLibraryOverlayButtonConfiguration alloc] initWithSystemImageName:0 title:v8 spec:v7 buttonType:a3];

  return v9;
}

+ (id)configurationWithButtonType:(int64_t)a3 spec:(id)a4
{
  v5 = a4;
  v6 = [[PXCuratedLibraryOverlayButtonConfiguration alloc] initWithSystemImageName:0 title:0 spec:v5 buttonType:a3];

  return v6;
}

+ (id)configurationWithSystemImageName:(id)a3 title:(id)a4 spec:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[PXCuratedLibraryOverlayButtonConfiguration alloc] initWithSystemImageName:v9 title:v8 spec:v7 buttonType:0];

  return v10;
}

+ (id)configurationWithTitle:(id)a3 spec:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PXCuratedLibraryOverlayButtonConfiguration alloc] initWithSystemImageName:0 title:v6 spec:v5 buttonType:0];

  return v7;
}

+ (id)configurationWithSystemImageName:(id)a3 spec:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PXCuratedLibraryOverlayButtonConfiguration alloc] initWithSystemImageName:v6 title:0 spec:v5 buttonType:0];

  return v7;
}

@end