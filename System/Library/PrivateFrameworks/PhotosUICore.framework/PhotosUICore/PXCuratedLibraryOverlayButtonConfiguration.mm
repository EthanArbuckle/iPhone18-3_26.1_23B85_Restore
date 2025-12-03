@interface PXCuratedLibraryOverlayButtonConfiguration
+ (NSCache)tintedImageCache;
+ (id)configurationWithButtonType:(int64_t)type spec:(id)spec;
+ (id)configurationWithButtonType:(int64_t)type title:(id)title spec:(id)spec;
+ (id)configurationWithSystemImageName:(id)name spec:(id)spec;
+ (id)configurationWithSystemImageName:(id)name title:(id)title spec:(id)spec;
+ (id)configurationWithTitle:(id)title spec:(id)spec;
- (BOOL)isEqual:(id)equal;
- (PXCuratedLibraryOverlayButtonConfiguration)init;
- (PXCuratedLibraryOverlayButtonConfiguration)initWithSystemImageName:(id)name title:(id)title spec:(id)spec buttonType:(int64_t)type;
- (UIColor)contentColor;
- (UIColor)highlightedContentColor;
- (UIEdgeInsets)hitTestOutsets;
- (UIEdgeInsets)imageEdgeInsets;
- (UIImage)highlightedIconImage;
- (UIImage)iconImage;
- (UIImage)iconImageWithoutConfiguration;
- (UIImage)tintedIconImage;
- (id)_contentColorWhenHighlighted:(BOOL)highlighted;
- (id)_tintedImage:(id)image name:(id)name withColor:(id)color;
- (unint64_t)hash;
- (void)prepareForRender;
- (void)setTintColor:(id)color;
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
    iconImage = [(PXCuratedLibraryOverlayButtonConfiguration *)self iconImage];

    if (iconImage)
    {
      iconImage2 = [(PXCuratedLibraryOverlayButtonConfiguration *)self iconImage];
      systemImageName = [(PXCuratedLibraryOverlayButtonConfiguration *)self systemImageName];
      highlightedContentColor = [(PXCuratedLibraryOverlayButtonConfiguration *)self highlightedContentColor];
      v7 = [(PXCuratedLibraryOverlayButtonConfiguration *)self _tintedImage:iconImage2 name:systemImageName withColor:highlightedContentColor];
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
    iconImage = [(PXCuratedLibraryOverlayButtonConfiguration *)self iconImage];

    if (iconImage)
    {
      iconImage2 = [(PXCuratedLibraryOverlayButtonConfiguration *)self iconImage];
      systemImageName = [(PXCuratedLibraryOverlayButtonConfiguration *)self systemImageName];
      contentColor = [(PXCuratedLibraryOverlayButtonConfiguration *)self contentColor];
      v7 = [(PXCuratedLibraryOverlayButtonConfiguration *)self _tintedImage:iconImage2 name:systemImageName withColor:contentColor];
      tintedIconImage = self->_tintedIconImage;
      self->_tintedIconImage = v7;
    }
  }

  v9 = self->_tintedIconImage;

  return v9;
}

- (id)_tintedImage:(id)image name:(id)name withColor:(id)color
{
  v23[4] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  colorCopy = color;
  nameCopy = name;
  tintedImageCache = [objc_opt_class() tintedImageCache];
  v12 = [off_1E7721928 alloc];
  v23[0] = nameCopy;
  v23[1] = colorCopy;
  v13 = MEMORY[0x1E696AD98];
  spec = [(PXCuratedLibraryOverlayButtonConfiguration *)self spec];
  v15 = [v13 numberWithInteger:{objc_msgSend(spec, "userInterfaceStyle")}];
  v23[2] = v15;
  v16 = MEMORY[0x1E696AD98];
  spec2 = [(PXCuratedLibraryOverlayButtonConfiguration *)self spec];
  v18 = [v16 numberWithInteger:{objc_msgSend(spec2, "userInterfaceLevel")}];
  v23[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];

  v20 = [v12 initWithObjects:v19];
  v21 = [tintedImageCache objectForKey:v20];
  if (!v21)
  {
    v21 = [imageCopy px_tintedImageWithColor:colorCopy];
    [tintedImageCache setObject:v21 forKey:v20];
  }

  return v21;
}

- (UIImage)iconImageWithoutConfiguration
{
  iconImageWithoutConfiguration = self->_iconImageWithoutConfiguration;
  if (!iconImageWithoutConfiguration)
  {
    systemImageName = [(PXCuratedLibraryOverlayButtonConfiguration *)self systemImageName];
    if (systemImageName)
    {
      v5 = [MEMORY[0x1E69DCAB8] px_systemImageNamed:systemImageName];
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
    iconImageWithoutConfiguration = [(PXCuratedLibraryOverlayButtonConfiguration *)self iconImageWithoutConfiguration];
    selfCopy = self;
    if (_PXIconImageSymbolConfiguration_onceToken != -1)
    {
      dispatch_once(&_PXIconImageSymbolConfiguration_onceToken, &__block_literal_global_863_140948);
    }

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    systemImageName = [(PXCuratedLibraryOverlayButtonConfiguration *)selfCopy systemImageName];
    v10 = [off_1E7721928 alloc];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXCuratedLibraryOverlayButtonConfiguration style](selfCopy, "style")}];
    v12 = v11;
    if (systemImageName)
    {
      mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
      preferredContentSizeCategory2 = [mEMORY[0x1E69DC668]2 preferredContentSizeCategory];
      v42 = preferredContentSizeCategory2;
      v43 = systemImageName;
      v15 = MEMORY[0x1E695DEC8];
      v16 = 3;
    }

    else
    {
      mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
      preferredContentSizeCategory2 = [mEMORY[0x1E69DC668]2 preferredContentSizeCategory];
      v42 = preferredContentSizeCategory2;
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

    style = [(PXCuratedLibraryOverlayButtonConfiguration *)selfCopy style];
    if (style <= 0xE)
    {
      if (((1 << style) & 0x6FC0) != 0)
      {
LABEL_10:
        v22 = MEMORY[0x1E69DDC50];
        if (!IsAccessibilityCategory)
        {
          v22 = MEMORY[0x1E69DDC70];
        }

        v23 = *v22;
        spec = [(PXCuratedLibraryOverlayButtonConfiguration *)selfCopy spec];
        options = [spec options];

        v26 = MEMORY[0x1E69DDCF8];
        if ((options & 4) == 0)
        {
          v26 = MEMORY[0x1E69DDD78];
        }

        v27 = *v26;
        v28 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:v27 maxContentSizeCategory:v23 withSymbolicTraits:32770];
        if ((options & 4) != 0 || ([systemImageName isEqualToString:@"person.fill"] & 1) != 0 || objc_msgSend(systemImageName, "isEqualToString:", @"person.2.fill"))
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

      if (((1 << style) & 0x30) != 0)
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

      if (style == 12)
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

    if (style < 2)
    {
      goto LABEL_10;
    }

    if (style - 2 > 1)
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

    v38 = [iconImageWithoutConfiguration imageWithSymbolConfiguration:v20];
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

- (id)_contentColorWhenHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  actionPerformer = [(PXCuratedLibraryOverlayButtonConfiguration *)self actionPerformer];
  if (actionPerformer || ([(PXCuratedLibraryOverlayButtonConfiguration *)self actionHandler], (actionPerformer = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    menuActionHandler = [(PXCuratedLibraryOverlayButtonConfiguration *)self menuActionHandler];

    if (!menuActionHandler)
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      v7 = [labelColor colorWithAlphaComponent:0.3];

      goto LABEL_12;
    }
  }

  if ([(PXCuratedLibraryOverlayButtonConfiguration *)self style]== 8)
  {
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    v7 = labelColor2;
    if (!highlightedCopy)
    {
      v8 = [labelColor2 colorWithAlphaComponent:0.5];

      v7 = v8;
    }
  }

  else
  {
    if ([(PXCuratedLibraryOverlayButtonConfiguration *)self style]== 10 || !highlightedCopy)
    {
      tintColor = [(PXCuratedLibraryOverlayButtonConfiguration *)self tintColor];
    }

    else
    {
      tintColor = [MEMORY[0x1E69DC888] _vibrantLightFillBurnColor];
    }

    v7 = tintColor;
  }

LABEL_12:

  return v7;
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  if (self->_tintColor != colorCopy)
  {
    v7 = colorCopy;
    if (colorCopy)
    {
      v5 = colorCopy;
    }

    else
    {
      v5 = +[PXCuratedLibraryOverlayButton defaultTitleColor];
    }

    tintColor = self->_tintColor;
    self->_tintColor = v5;

    colorCopy = v7;
  }
}

- (void)prepareForRender
{
  [(PXCuratedLibraryOverlayButtonConfiguration *)self contentColor];

  [(PXCuratedLibraryOverlayButtonConfiguration *)self highlightedContentColor];
  [(PXCuratedLibraryOverlayButtonConfiguration *)self iconImage];

  [(PXCuratedLibraryOverlayButtonConfiguration *)self iconImageWithoutConfiguration];
  [(PXCuratedLibraryOverlayButtonConfiguration *)self tintedIconImage];

  highlightedIconImage = [(PXCuratedLibraryOverlayButtonConfiguration *)self highlightedIconImage];
}

- (unint64_t)hash
{
  [(PXCuratedLibraryOverlayButtonConfiguration *)self imageEdgeInsets];
  v35 = v3;
  v32 = v4;
  v27 = v6;
  v29 = v5;
  style = [(PXCuratedLibraryOverlayButtonConfiguration *)self style];
  segment = [(PXCuratedLibraryOverlayButtonConfiguration *)self segment];
  systemImageName = [(PXCuratedLibraryOverlayButtonConfiguration *)self systemImageName];
  v31 = [systemImageName hash];
  v7.f64[0] = v29;
  v7.f64[1] = v27;
  v8.f64[0] = v35;
  v8.f64[1] = v32;
  v9 = vdupq_n_s64(0x4059000000000000uLL);
  v26 = vcvtq_u64_f64(vmulq_f64(v8, v9));
  v28 = vcvtq_u64_f64(vmulq_f64(v7, v9));
  title = [(PXCuratedLibraryOverlayButtonConfiguration *)self title];
  v25 = [title hash];
  possibleTitles = [(PXCuratedLibraryOverlayButtonConfiguration *)self possibleTitles];
  v24 = [possibleTitles hash];
  caption = [(PXCuratedLibraryOverlayButtonConfiguration *)self caption];
  v23 = [caption hash];
  actionPerformer = [(PXCuratedLibraryOverlayButtonConfiguration *)self actionPerformer];
  v11 = [actionPerformer hash];
  actionHandler = [(PXCuratedLibraryOverlayButtonConfiguration *)self actionHandler];
  spec = [(PXCuratedLibraryOverlayButtonConfiguration *)self spec];
  v14 = [spec hash];
  tintColor = [(PXCuratedLibraryOverlayButtonConfiguration *)self tintColor];
  v16 = [tintColor hash];
  backgroundColor = [(PXCuratedLibraryOverlayButtonConfiguration *)self backgroundColor];
  v18 = [backgroundColor hash];
  forcePointerInteractionEnabled = [(PXCuratedLibraryOverlayButtonConfiguration *)self forcePointerInteractionEnabled];
  v20 = veorq_s8(v26, v28);
  v21 = *&veor_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)) ^ forcePointerInteractionEnabled;

  return v21 ^ v18 ^ v16 ^ v14 ^ actionHandler ^ v11 ^ v23 ^ v24 ^ v25 ^ v31 ^ style ^ segment;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      style = [(PXCuratedLibraryOverlayButtonConfiguration *)v5 style];
      if (style == [(PXCuratedLibraryOverlayButtonConfiguration *)self style])
      {
        segment = [(PXCuratedLibraryOverlayButtonConfiguration *)self segment];
        if (segment == [(PXCuratedLibraryOverlayButtonConfiguration *)v5 segment])
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

- (PXCuratedLibraryOverlayButtonConfiguration)initWithSystemImageName:(id)name title:(id)title spec:(id)spec buttonType:(int64_t)type
{
  nameCopy = name;
  titleCopy = title;
  specCopy = spec;
  v29.receiver = self;
  v29.super_class = PXCuratedLibraryOverlayButtonConfiguration;
  v13 = [(PXCuratedLibraryOverlayButtonConfiguration *)&v29 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_34;
  }

  objc_storeStrong(&v13->_spec, spec);
  v15 = [titleCopy copy];
  title = v14->_title;
  v14->_title = v15;

  *&v14->_hitTestOutsets.top = PXDefaultButtonHitTestOutsets;
  *&v14->_hitTestOutsets.bottom = unk_1A5382138;
  v17 = +[PXCuratedLibraryOverlayButton defaultTitleColor];
  tintColor = v14->_tintColor;
  v14->_tintColor = v17;

  v14->_buttonType = type;
  switch(type)
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

  if (type)
  {
    v22 = specCopy;
    v23 = v22;
    v24 = 0;
    if (type > 3)
    {
      switch(type)
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
      switch(type)
      {
        case 1:
          if ([v22 ellipsisButtonSpecialTreatment] && objc_msgSend(v23, "isFloating"))
          {
            variant = [v23 variant];
            v26 = @"ellipsis";
            if (variant == 2)
            {
              v26 = @"person.fill";
            }

            if (variant == 3)
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
    v24 = [nameCopy copy];
  }

  systemImageName = v14->_systemImageName;
  v14->_systemImageName = &v24->isa;

LABEL_34:
  return v14;
}

- (PXCuratedLibraryOverlayButtonConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:367 description:{@"%s is not available as initializer", "-[PXCuratedLibraryOverlayButtonConfiguration init]"}];

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

+ (id)configurationWithButtonType:(int64_t)type title:(id)title spec:(id)spec
{
  specCopy = spec;
  titleCopy = title;
  v9 = [[PXCuratedLibraryOverlayButtonConfiguration alloc] initWithSystemImageName:0 title:titleCopy spec:specCopy buttonType:type];

  return v9;
}

+ (id)configurationWithButtonType:(int64_t)type spec:(id)spec
{
  specCopy = spec;
  v6 = [[PXCuratedLibraryOverlayButtonConfiguration alloc] initWithSystemImageName:0 title:0 spec:specCopy buttonType:type];

  return v6;
}

+ (id)configurationWithSystemImageName:(id)name title:(id)title spec:(id)spec
{
  specCopy = spec;
  titleCopy = title;
  nameCopy = name;
  v10 = [[PXCuratedLibraryOverlayButtonConfiguration alloc] initWithSystemImageName:nameCopy title:titleCopy spec:specCopy buttonType:0];

  return v10;
}

+ (id)configurationWithTitle:(id)title spec:(id)spec
{
  specCopy = spec;
  titleCopy = title;
  v7 = [[PXCuratedLibraryOverlayButtonConfiguration alloc] initWithSystemImageName:0 title:titleCopy spec:specCopy buttonType:0];

  return v7;
}

+ (id)configurationWithSystemImageName:(id)name spec:(id)spec
{
  specCopy = spec;
  nameCopy = name;
  v7 = [[PXCuratedLibraryOverlayButtonConfiguration alloc] initWithSystemImageName:nameCopy title:0 spec:specCopy buttonType:0];

  return v7;
}

@end