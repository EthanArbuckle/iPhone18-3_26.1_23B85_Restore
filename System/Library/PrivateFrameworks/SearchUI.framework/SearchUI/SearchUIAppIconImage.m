@interface SearchUIAppIconImage
+ (CGSize)sizeForVariant:(unint64_t)a3;
+ (id)appIconForBundleIdentifier:(id)a3 isOnenessApp:(BOOL)a4 variant:(unint64_t)a5 contentType:(id)a6;
+ (id)appIconForResult:(id)a3 variant:(unint64_t)a4;
+ (id)appIconForURL:(id)a3 variant:(unint64_t)a4;
+ (id)appIconImageForBundleIdentifier:(id)a3;
+ (id)descriptorNameForVariant:(unint64_t)a3;
+ (id)homeScreenService;
+ (id)imageForIcon:(id)a3 descriptor:(id)a4;
+ (unint64_t)bestVariantForSize:(CGSize)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)needsTinting;
- (BOOL)shouldInvalidateAppIconForChangedBundleIdentifier:(id)a3;
- (SearchUIAppIconImage)initWithBundleIdentifier:(id)a3 isOnenessApp:(BOOL)a4 variant:(unint64_t)a5 contentType:(id)a6;
- (id)descriptorWithScale:(double)a3 isDarkStyle:(BOOL)a4;
- (id)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4;
- (unint64_t)hash;
@end

@implementation SearchUIAppIconImage

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[SearchUIAppIconImage isOnenessApp](self, "isOnenessApp")}];
  v4 = [v3 hash];
  v5 = [(SearchUIAppIconImage *)self contentType];
  v6 = [v5 hash];
  v7 = [(SearchUIAppIconImage *)self bundleIdentifier];
  v8 = v6 ^ [v7 hash];
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
  v2 = [(SearchUIAppIconImage *)self bundleIdentifier];
  v3 = [SearchUIUtilities bundleIdentifierIsBlockedForScreenTimeExpiration:v2];

  return v3;
}

+ (unint64_t)bestVariantForSize:(CGSize)a3
{
  width = a3.width;
  if (a3.width == *MEMORY[0x1E695F060] && a3.height == *(MEMORY[0x1E695F060] + 8))
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

+ (id)appIconForResult:(id)a3 variant:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 applicationBundleIdentifier];
  v8 = [SearchUIUtilities bundleIdentifierForApp:0];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = MEMORY[0x1E69DD2B8];
    v11 = [v6 identifier];

    v12 = [v10 webClipWithIdentifier:v11];

    v13 = [[SearchUIWebClipIconImage alloc] initWithWebClip:v12 variant:a4];
  }

  else
  {
    v12 = [v6 applicationBundleIdentifier];

    v13 = [a1 appIconForBundleIdentifier:v12 variant:a4];
  }

  v14 = v13;

  return v14;
}

+ (id)appIconForBundleIdentifier:(id)a3 isOnenessApp:(BOOL)a4 variant:(unint64_t)a5 contentType:(id)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a6;
  v11 = [SearchUIUtilities bundleIdentifierForApp:4];
  v12 = [v9 isEqualToString:v11];

  if (v12)
  {
    v13 = [[SearchUICalendarIconImage alloc] initWithCurrentDateAndVariant:a5];
  }

  else
  {
    v13 = [[SearchUIAppIconImage alloc] initWithBundleIdentifier:v9 isOnenessApp:v8 variant:a5 contentType:v10];
  }

  v14 = v13;

  return v14;
}

+ (id)appIconForURL:(id)a3 variant:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 URLByStandardizingPath];
  v8 = [v7 absoluteString];
  v9 = [v8 isEqualToString:@"file:///System/Applications/Calendar.app/"];

  if (v9)
  {
    v10 = [[SearchUICalendarIconImage alloc] initWithCurrentDateAndVariant:a4];
  }

  else
  {
    v10 = [a1 appIconForBundleIdentifier:0 variant:a4];
    [(SearchUIAppIconImage *)v10 setUrl:v6];
  }

  return v10;
}

- (SearchUIAppIconImage)initWithBundleIdentifier:(id)a3 isOnenessApp:(BOOL)a4 variant:(unint64_t)a5 contentType:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v15.receiver = self;
  v15.super_class = SearchUIAppIconImage;
  v12 = [(SearchUIAppIconImage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(SearchUIAppIconImage *)v12 setBundleIdentifier:v10];
    [(SearchUIAppIconImage *)v13 setIsOnenessApp:v8];
    [(SearchUIAppIconImage *)v13 setContentType:v11];
    [(SearchUIAppIconImage *)v13 setVariant:a5];
    [objc_opt_class() sizeForVariant:a5];
    [(SearchUIAppIconImage *)v13 setSize:?];
    [(SearchUIImage *)v13 setSupportsFastPathShadow:1];
  }

  return v13;
}

- (BOOL)shouldInvalidateAppIconForChangedBundleIdentifier:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(SearchUIAppIconImage *)self bundleIdentifier];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

+ (id)descriptorNameForVariant:(unint64_t)a3
{
  v4 = *MEMORY[0x1E69A8A78];
  if (a3 <= 1)
  {
    v5 = *MEMORY[0x1E69A8A90];

    v4 = v5;
    goto LABEL_5;
  }

  if (a3 != 2)
  {
LABEL_5:
    v7 = !+[SearchUIUtilities isWideScreen];
    if (a3 == 4)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v6 = MEMORY[0x1E69A8A98];
    if (a3 != 3 && !v8)
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

+ (id)appIconImageForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setBundleIdentifier:v3];

  return v4;
}

+ (CGSize)sizeForVariant:(unint64_t)a3
{
  if (sizeForVariant__onceToken != -1)
  {
    +[SearchUIAppIconImage sizeForVariant:];
  }

  v5 = sizeForVariant__sizeCache;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    if (a3)
    {
      v8 = *MEMORY[0x1E695F060];
      v9 = *(MEMORY[0x1E695F060] + 8);
      if (a3 == 5)
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
        if (a3 == 4)
        {
          [MEMORY[0x1E69D91A8] maxThumbnailSize];
          v10 = v12;
          v11 = v12;
LABEL_16:
          v7 = [MEMORY[0x1E696B098] valueWithSize:{v11, v10}];
          v23 = sizeForVariant__sizeCache;
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
          [v23 setObject:v7 forKey:v24];

          goto LABEL_17;
        }
      }

      if (v11 == v8 && v10 == v9)
      {
        v18 = MEMORY[0x1E69A8A30];
        v19 = [a1 descriptorNameForVariant:a3];
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

- (id)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4
{
  v4 = a4;
  if (loadImageWithScale_isDarkStyle__onceToken != -1)
  {
    [SearchUIAppIconImage loadImageWithScale:isDarkStyle:];
  }

  v7 = [(SearchUIAppIconImage *)self contentType];
  v8 = [(SearchUIAppIconImage *)self bundleIdentifier];
  if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithType:v7];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(SearchUIAppIconImage *)self url];
  v11 = v10;
  if (!v9)
  {
    if (v8 | v10)
    {
      v14 = [loadImageWithScale_isDarkStyle__appIconOverrides objectForKey:v8];
      if (v14)
      {
        v15 = v14;
        v16 = MEMORY[0x1E69DCAB8];
        v17 = [v14 imageName];
        v18 = [v15 bundle];
        if (v18)
        {
          v19 = [v16 imageNamed:v17 inBundle:v18 compatibleWithTraitCollection:0];
        }

        else
        {
          v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v19 = [v16 imageNamed:v17 inBundle:v30 compatibleWithTraitCollection:0];
        }

        v9 = 0;
        v20 = 0;
        goto LABEL_15;
      }

      if ([(SearchUIAppIconImage *)self isOnenessApp])
      {
        v22 = objc_alloc(MEMORY[0x1E69635F8]);
        v23 = [(SearchUIAppIconImage *)self bundleIdentifier];
        v31 = 0;
        v24 = [v22 initWithRemotePlaceholderBundleIdentifier:v23 error:&v31];
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
        v29 = [v28 initWithBundleIdentifier:v8];
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
  v12 = [(SearchUIAppIconImage *)self descriptorWithScale:v4 isDarkStyle:a3];
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

- (id)descriptorWithScale:(double)a3 isDarkStyle:(BOOL)a4
{
  v4 = a4;
  v6 = objc_alloc(MEMORY[0x1E69A8A30]);
  [(SearchUIImage *)self size];
  v7 = [v6 initWithSize:? scale:?];
  v8 = [objc_opt_class() homeScreenService];
  v9 = [v8 homeScreenIconStyleConfiguration];

  if ([MEMORY[0x1E69D9240] isRenderingForRemoteDevice])
  {
    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E69D9108] bestAppearanceForSystem];
    v4 = [v11 isDark];

    v10 = [v9 iconServicesAppearanceVariantUsingDarkInterfaceStyle:v4];
  }

  [v7 setAppearance:{objc_msgSend(v9, "iconServicesAppearanceUsingDarkInterfaceStyle:", v4)}];
  [v7 setAppearanceVariant:v10];
  v12 = [v9 tintColor];
  v13 = [v12 CGColor];

  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x1E69A8968]) initWithCGColor:v13];
    [v7 setTintColor:v14];
  }

  return v7;
}

uint64_t __41__SearchUIAppIconImage_homeScreenService__block_invoke()
{
  homeScreenService_homeScreenService = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)imageForIcon:(id)a3 descriptor:(id)a4
{
  v4 = [a3 prepareImageForDescriptor:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 CGImage];
    v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if ([v8 isMemberOfClass:objc_opt_class()])
  {
    v9 = [v8 bundleIdentifier];
    if (v9)
    {
      v3 = [v8 bundleIdentifier];
      v4 = [(SearchUIAppIconImage *)self bundleIdentifier];
      if (([v3 isEqualToString:v4] & 1) == 0)
      {
        v10 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      v11 = [(SearchUIAppIconImage *)self bundleIdentifier];
      if (v11)
      {
        v3 = v11;
        v10 = 0;
        goto LABEL_28;
      }
    }

    v12 = [v8 contentType];
    if (v12)
    {
      v5 = [v8 contentType];
      v6 = [(SearchUIAppIconImage *)self contentType];
      if (([v5 isEqualToString:v6] & 1) == 0)
      {
        v10 = 0;
        goto LABEL_22;
      }

LABEL_14:
      v14 = [v8 variant];
      if (v14 == -[SearchUIAppIconImage variant](self, "variant") && ([v8 size], v16 = v15, v18 = v17, -[SearchUIImage size](self, "size"), v16 == v20) && v18 == v19 && (-[SearchUIImage scale](self, "scale"), v22 = v21, objc_msgSend(v8, "scale"), v22 == v23) && (v24 = -[SearchUIImage cornerRoundingStyle](self, "cornerRoundingStyle"), v24 == objc_msgSend(v8, "cornerRoundingStyle")))
      {
        v25 = [v8 badgingImage];
        if (v25)
        {
          v26 = [v8 badgingImage];
          [(SearchUIImage *)self badgingImage];
          v27 = v30 = v25;
          v10 = [v26 isEqual:v27];

          v25 = v30;
        }

        else
        {
          v26 = [(SearchUIImage *)self badgingImage];
          v10 = v26 == 0;
        }

        v28 = v10;
        if (!v12)
        {
LABEL_26:
          v10 = v28;
          if (!v9)
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
        if (!v12)
        {
          goto LABEL_26;
        }
      }

LABEL_22:

      if (!v9)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    v13 = [(SearchUIAppIconImage *)self contentType];
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = 0;
    if (v9)
    {
      goto LABEL_27;
    }

    v3 = 0;
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