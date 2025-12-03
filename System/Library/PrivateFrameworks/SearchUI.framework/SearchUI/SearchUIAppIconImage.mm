@interface SearchUIAppIconImage
+ (CGSize)sizeForVariant:(unint64_t)variant;
+ (id)appIconForBundleIdentifier:(id)identifier isOnenessApp:(BOOL)app variant:(unint64_t)variant contentType:(id)type;
+ (id)appIconForResult:(id)result variant:(unint64_t)variant;
+ (id)appIconForURL:(id)l variant:(unint64_t)variant;
+ (id)appIconImageForBundleIdentifier:(id)identifier;
+ (id)descriptorNameForVariant:(unint64_t)variant;
+ (id)homeScreenService;
+ (id)imageForIcon:(id)icon descriptor:(id)descriptor;
+ (unint64_t)bestVariantForSize:(CGSize)size;
- (BOOL)isEqual:(id)equal;
- (BOOL)needsTinting;
- (BOOL)shouldInvalidateAppIconForChangedBundleIdentifier:(id)identifier;
- (SearchUIAppIconImage)initWithBundleIdentifier:(id)identifier isOnenessApp:(BOOL)app variant:(unint64_t)variant contentType:(id)type;
- (id)descriptorWithScale:(double)scale isDarkStyle:(BOOL)style;
- (id)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style;
- (unint64_t)hash;
@end

@implementation SearchUIAppIconImage

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[SearchUIAppIconImage isOnenessApp](self, "isOnenessApp")}];
  v4 = [v3 hash];
  contentType = [(SearchUIAppIconImage *)self contentType];
  v6 = [contentType hash];
  bundleIdentifier = [(SearchUIAppIconImage *)self bundleIdentifier];
  v8 = v6 ^ [bundleIdentifier hash];
  v9 = v8 ^ (13 * [(SearchUIAppIconImage *)self variant]);

  return v9 ^ v4;
}

+ (id)homeScreenService
{
  if (homeScreenService_onceToken != -1)
  {
    +[SearchUIAppIconImage homeScreenService];
  }

  v3 = homeScreenService_homeScreenService;

  return v3;
}

- (BOOL)needsTinting
{
  bundleIdentifier = [(SearchUIAppIconImage *)self bundleIdentifier];
  v3 = [SearchUIUtilities bundleIdentifierIsBlockedForScreenTimeExpiration:bundleIdentifier];

  return v3;
}

+ (unint64_t)bestVariantForSize:(CGSize)size
{
  width = size.width;
  if (size.width == *MEMORY[0x1E695F060] && size.height == *(MEMORY[0x1E695F060] + 8))
  {
    return 4;
  }

  for (i = 0; i != 7; ++i)
  {
    [SearchUIAppIconImage sizeForVariant:i];
    if (width <= v6)
    {
      break;
    }
  }

  return i;
}

+ (id)appIconForResult:(id)result variant:(unint64_t)variant
{
  resultCopy = result;
  applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
  v8 = [SearchUIUtilities bundleIdentifierForApp:0];
  v9 = [applicationBundleIdentifier isEqualToString:v8];

  if (v9)
  {
    v10 = MEMORY[0x1E69DD2B8];
    identifier = [resultCopy identifier];

    applicationBundleIdentifier2 = [v10 webClipWithIdentifier:identifier];

    v13 = [[SearchUIWebClipIconImage alloc] initWithWebClip:applicationBundleIdentifier2 variant:variant];
  }

  else
  {
    applicationBundleIdentifier2 = [resultCopy applicationBundleIdentifier];

    v13 = [self appIconForBundleIdentifier:applicationBundleIdentifier2 variant:variant];
  }

  v14 = v13;

  return v14;
}

+ (id)appIconForBundleIdentifier:(id)identifier isOnenessApp:(BOOL)app variant:(unint64_t)variant contentType:(id)type
{
  appCopy = app;
  identifierCopy = identifier;
  typeCopy = type;
  v11 = [SearchUIUtilities bundleIdentifierForApp:4];
  v12 = [identifierCopy isEqualToString:v11];

  if (v12)
  {
    v13 = [[SearchUICalendarIconImage alloc] initWithCurrentDateAndVariant:variant];
  }

  else
  {
    v13 = [[SearchUIAppIconImage alloc] initWithBundleIdentifier:identifierCopy isOnenessApp:appCopy variant:variant contentType:typeCopy];
  }

  v14 = v13;

  return v14;
}

+ (id)appIconForURL:(id)l variant:(unint64_t)variant
{
  lCopy = l;
  uRLByStandardizingPath = [lCopy URLByStandardizingPath];
  absoluteString = [uRLByStandardizingPath absoluteString];
  v9 = [absoluteString isEqualToString:@"file:///System/Applications/Calendar.app/"];

  if (v9)
  {
    v10 = [[SearchUICalendarIconImage alloc] initWithCurrentDateAndVariant:variant];
  }

  else
  {
    v10 = [self appIconForBundleIdentifier:0 variant:variant];
    [(SearchUIAppIconImage *)v10 setUrl:lCopy];
  }

  return v10;
}

- (SearchUIAppIconImage)initWithBundleIdentifier:(id)identifier isOnenessApp:(BOOL)app variant:(unint64_t)variant contentType:(id)type
{
  appCopy = app;
  identifierCopy = identifier;
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = SearchUIAppIconImage;
  v12 = [(SearchUIAppIconImage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(SearchUIAppIconImage *)v12 setBundleIdentifier:identifierCopy];
    [(SearchUIAppIconImage *)v13 setIsOnenessApp:appCopy];
    [(SearchUIAppIconImage *)v13 setContentType:typeCopy];
    [(SearchUIAppIconImage *)v13 setVariant:variant];
    [objc_opt_class() sizeForVariant:variant];
    [(SearchUIAppIconImage *)v13 setSize:?];
    [(SearchUIImage *)v13 setSupportsFastPathShadow:1];
  }

  return v13;
}

- (BOOL)shouldInvalidateAppIconForChangedBundleIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 1;
  }

  identifierCopy = identifier;
  bundleIdentifier = [(SearchUIAppIconImage *)self bundleIdentifier];
  v6 = [bundleIdentifier isEqualToString:identifierCopy];

  return v6;
}

+ (id)descriptorNameForVariant:(unint64_t)variant
{
  v4 = *MEMORY[0x1E69A8A78];
  if (variant <= 1)
  {
    v5 = *MEMORY[0x1E69A8A90];

    v4 = v5;
    goto LABEL_5;
  }

  if (variant != 2)
  {
LABEL_5:
    v7 = !+[SearchUIUtilities isWideScreen];
    if (variant == 4)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v6 = MEMORY[0x1E69A8A98];
    if (variant != 3 && !v8)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v6 = MEMORY[0x1E69A8AA0];
LABEL_10:
  v9 = *v6;

  v4 = v9;
LABEL_11:

  return v4;
}

+ (id)appIconImageForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  [v4 setBundleIdentifier:identifierCopy];

  return v4;
}

+ (CGSize)sizeForVariant:(unint64_t)variant
{
  if (sizeForVariant__onceToken != -1)
  {
    +[SearchUIAppIconImage sizeForVariant:];
  }

  v5 = sizeForVariant__sizeCache;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:variant];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    if (variant)
    {
      v8 = *MEMORY[0x1E695F060];
      v9 = *(MEMORY[0x1E695F060] + 8);
      if (variant == 5)
      {
        v13 = objc_opt_new();
        v14 = [v13 layoutForIconLocation:*MEMORY[0x1E69D4158]];
        [v14 iconImageInfo];
        v11 = v15;
        v10 = v16;
      }

      else
      {
        v10 = *(MEMORY[0x1E695F060] + 8);
        v11 = *MEMORY[0x1E695F060];
        if (variant == 4)
        {
          [MEMORY[0x1E69D91A8] maxThumbnailSize];
          v10 = v12;
          v11 = v12;
LABEL_16:
          v7 = [MEMORY[0x1E696B098] valueWithSize:{v11, v10}];
          v23 = sizeForVariant__sizeCache;
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:variant];
          [v23 setObject:v7 forKey:v24];

          goto LABEL_17;
        }
      }

      if (v11 == v8 && v10 == v9)
      {
        v18 = MEMORY[0x1E69A8A30];
        v19 = [self descriptorNameForVariant:variant];
        v20 = [v18 imageDescriptorNamed:v19];
        [v20 size];
        v11 = v21;
        v10 = v22;
      }

      goto LABEL_16;
    }

    v10 = 16.0;
    v11 = 16.0;
    goto LABEL_16;
  }

LABEL_17:
  [v7 sizeValue];
  v26 = v25;
  v28 = v27;

  v29 = v26;
  v30 = v28;
  result.height = v30;
  result.width = v29;
  return result;
}

uint64_t __39__SearchUIAppIconImage_sizeForVariant___block_invoke()
{
  sizeForVariant__sizeCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style
{
  styleCopy = style;
  if (loadImageWithScale_isDarkStyle__onceToken != -1)
  {
    [SearchUIAppIconImage loadImageWithScale:isDarkStyle:];
  }

  contentType = [(SearchUIAppIconImage *)self contentType];
  bundleIdentifier = [(SearchUIAppIconImage *)self bundleIdentifier];
  if (contentType)
  {
    v9 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithType:contentType];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(SearchUIAppIconImage *)self url];
  v11 = v10;
  if (!v9)
  {
    if (bundleIdentifier | v10)
    {
      v14 = [loadImageWithScale_isDarkStyle__appIconOverrides objectForKey:bundleIdentifier];
      if (v14)
      {
        v15 = v14;
        v16 = MEMORY[0x1E69DCAB8];
        imageName = [v14 imageName];
        bundle = [v15 bundle];
        if (bundle)
        {
          v19 = [v16 imageNamed:imageName inBundle:bundle compatibleWithTraitCollection:0];
        }

        else
        {
          v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v19 = [v16 imageNamed:imageName inBundle:v30 compatibleWithTraitCollection:0];
        }

        v9 = 0;
        v20 = 0;
        goto LABEL_15;
      }

      if ([(SearchUIAppIconImage *)self isOnenessApp])
      {
        v22 = objc_alloc(MEMORY[0x1E69635F8]);
        bundleIdentifier2 = [(SearchUIAppIconImage *)self bundleIdentifier];
        v31 = 0;
        v24 = [v22 initWithRemotePlaceholderBundleIdentifier:bundleIdentifier2 error:&v31];
        v25 = v31;

        if (!v24 && v25)
        {
          v26 = SearchUIGeneralLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [SearchUIAppIconImage loadImageWithScale:v25 isDarkStyle:v26];
          }
        }

        v27 = [v24 URL];

        v11 = v27;
      }

      v28 = objc_alloc(MEMORY[0x1E69A8A00]);
      if (v11)
      {
        v29 = [v28 initWithURL:v11];
      }

      else
      {
        v29 = [v28 initWithBundleIdentifier:bundleIdentifier];
      }

      v9 = v29;
      if (v29)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v13 = 0;
    goto LABEL_14;
  }

LABEL_7:
  v12 = [(SearchUIAppIconImage *)self descriptorWithScale:styleCopy isDarkStyle:scale];
  v13 = [objc_opt_class() imageForIcon:v9 descriptor:v12];

LABEL_14:
  v20 = v13;
  v19 = v20;
LABEL_15:

  return v19;
}

void __55__SearchUIAppIconImage_loadImageWithScale_isDarkStyle___block_invoke()
{
  v0 = loadImageWithScale_isDarkStyle__appIconOverrides;
  loadImageWithScale_isDarkStyle__appIconOverrides = MEMORY[0x1E695E0F8];
}

- (id)descriptorWithScale:(double)scale isDarkStyle:(BOOL)style
{
  styleCopy = style;
  v6 = objc_alloc(MEMORY[0x1E69A8A30]);
  [(SearchUIImage *)self size];
  v7 = [v6 initWithSize:? scale:?];
  homeScreenService = [objc_opt_class() homeScreenService];
  homeScreenIconStyleConfiguration = [homeScreenService homeScreenIconStyleConfiguration];

  if ([MEMORY[0x1E69D9240] isRenderingForRemoteDevice])
  {
    v10 = 0;
  }

  else
  {
    bestAppearanceForSystem = [MEMORY[0x1E69D9108] bestAppearanceForSystem];
    styleCopy = [bestAppearanceForSystem isDark];

    v10 = [homeScreenIconStyleConfiguration iconServicesAppearanceVariantUsingDarkInterfaceStyle:styleCopy];
  }

  [v7 setAppearance:{objc_msgSend(homeScreenIconStyleConfiguration, "iconServicesAppearanceUsingDarkInterfaceStyle:", styleCopy)}];
  [v7 setAppearanceVariant:v10];
  tintColor = [homeScreenIconStyleConfiguration tintColor];
  cGColor = [tintColor CGColor];

  if (cGColor)
  {
    v14 = [objc_alloc(MEMORY[0x1E69A8968]) initWithCGColor:cGColor];
    [v7 setTintColor:v14];
  }

  return v7;
}

uint64_t __41__SearchUIAppIconImage_homeScreenService__block_invoke()
{
  homeScreenService_homeScreenService = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)imageForIcon:(id)icon descriptor:(id)descriptor
{
  v4 = [icon prepareImageForDescriptor:descriptor];
  v5 = v4;
  if (v4)
  {
    cGImage = [v4 CGImage];
    v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:cGImage];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    bundleIdentifier = [equalCopy bundleIdentifier];
    if (bundleIdentifier)
    {
      bundleIdentifier2 = [equalCopy bundleIdentifier];
      bundleIdentifier3 = [(SearchUIAppIconImage *)self bundleIdentifier];
      if (([bundleIdentifier2 isEqualToString:bundleIdentifier3] & 1) == 0)
      {
        v10 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      bundleIdentifier4 = [(SearchUIAppIconImage *)self bundleIdentifier];
      if (bundleIdentifier4)
      {
        bundleIdentifier2 = bundleIdentifier4;
        v10 = 0;
        goto LABEL_28;
      }
    }

    contentType = [equalCopy contentType];
    if (contentType)
    {
      contentType2 = [equalCopy contentType];
      contentType3 = [(SearchUIAppIconImage *)self contentType];
      if (([contentType2 isEqualToString:contentType3] & 1) == 0)
      {
        v10 = 0;
        goto LABEL_22;
      }

LABEL_14:
      variant = [equalCopy variant];
      if (variant == -[SearchUIAppIconImage variant](self, "variant") && ([equalCopy size], v16 = v15, v18 = v17, -[SearchUIImage size](self, "size"), v16 == v20) && v18 == v19 && (-[SearchUIImage scale](self, "scale"), v22 = v21, objc_msgSend(equalCopy, "scale"), v22 == v23) && (v24 = -[SearchUIImage cornerRoundingStyle](self, "cornerRoundingStyle"), v24 == objc_msgSend(equalCopy, "cornerRoundingStyle")))
      {
        badgingImage = [equalCopy badgingImage];
        if (badgingImage)
        {
          badgingImage2 = [equalCopy badgingImage];
          [(SearchUIImage *)self badgingImage];
          v27 = v30 = badgingImage;
          v10 = [badgingImage2 isEqual:v27];

          badgingImage = v30;
        }

        else
        {
          badgingImage2 = [(SearchUIImage *)self badgingImage];
          v10 = badgingImage2 == 0;
        }

        v28 = v10;
        if (!contentType)
        {
LABEL_26:
          v10 = v28;
          if (!bundleIdentifier)
          {
LABEL_29:

            goto LABEL_30;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v10 = 0;
        v28 = 0;
        if (!contentType)
        {
          goto LABEL_26;
        }
      }

LABEL_22:

      if (!bundleIdentifier)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    contentType4 = [(SearchUIAppIconImage *)self contentType];
    if (!contentType4)
    {
      goto LABEL_14;
    }

    v10 = 0;
    if (bundleIdentifier)
    {
      goto LABEL_27;
    }

    bundleIdentifier2 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v10 = 0;
LABEL_30:

  return v10;
}

- (void)loadImageWithScale:(uint64_t)a1 isDarkStyle:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve remote app record for icon: %@", &v2, 0xCu);
}

@end