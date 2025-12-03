@interface WeatherImageLoader
+ (id)cachedImageNamed:(id)named completion:(id)completion;
+ (id)colorForImageColor:(id)color lighter:(BOOL)lighter;
+ (id)conditionImageNameWithConditionIndex:(int64_t)index;
+ (id)conditionImageNamed:(id)named size:(CGSize)size cloudAligned:(BOOL)aligned stroke:(BOOL)stroke strokeAlpha:(double)alpha lighterColors:(BOOL)colors;
+ (id)conditionImageNamed:(id)named style:(int64_t)style;
+ (id)conditionImageWithConditionIndex:(int64_t)index;
+ (id)conditionImageWithConditionIndex:(int64_t)index style:(int64_t)style;
+ (id)sharedImageLoader;
+ (void)cacheImageIfNecessary:(id)necessary;
+ (void)preloadImages;
- (WeatherImageLoader)init;
- (id)cachedImageForKey:(id)key;
- (void)setImage:(id)image forKey:(id)key;
@end

@implementation WeatherImageLoader

- (WeatherImageLoader)init
{
  v45 = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = WeatherImageLoader;
  v2 = [(WeatherImageLoader *)&v40 init];
  if (v2)
  {
    v3 = +[WeatherPreferences sharedPreferences];
    v4 = [v3 readDefaultValueForKey:@"HasMigratedDataProtectionClassTake2"];
    bOOLValue = [v4 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      userLibraryDirectory = [mEMORY[0x277D75128] userLibraryDirectory];
      MigrateDataProtectionClassOfPath(userLibraryDirectory);

      mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
      userCachesDirectory = [mEMORY[0x277D75128]2 userCachesDirectory];
      MigrateDataProtectionClassOfPath(userCachesDirectory);

      mEMORY[0x277D75128]3 = [MEMORY[0x277D75128] sharedApplication];
      userCachesDirectory2 = [mEMORY[0x277D75128]3 userCachesDirectory];
      v12 = [userCachesDirectory2 stringByAppendingPathComponent:@"Weather"];
      MigrateDataProtectionClassOfPath(v12);

      v13 = _WAWeatherIconCachePath();
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v39 = 0;
      [defaultManager removeItemAtPath:v13 error:&v39];
      v15 = v39;
      v16 = WALogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v42 = v13;
        v43 = 2112;
        v44 = v15;
        _os_log_impl(&dword_272ACF000, v16, OS_LOG_TYPE_DEFAULT, "Removed: %@ Error: %@", buf, 0x16u);
      }

      mEMORY[0x277D75128]4 = [MEMORY[0x277D75128] sharedApplication];
      userCachesDirectory3 = [mEMORY[0x277D75128]4 userCachesDirectory];
      v19 = [userCachesDirectory3 stringByAppendingPathComponent:@"Weather/Labels"];

      v38 = 0;
      [defaultManager removeItemAtPath:v19 error:&v38];
      v20 = v38;
      v21 = WALogForCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v42 = v19;
        v43 = 2112;
        v44 = v20;
        _os_log_impl(&dword_272ACF000, v21, OS_LOG_TYPE_DEFAULT, "Removed: %@ Error: %@", buf, 0x16u);
      }

      [v3 writeDefaultValue:MEMORY[0x277CBEC38] forKey:@"HasMigratedDataProtectionClassTake2"];
    }

    v22 = objc_alloc(MEMORY[0x277CEC598]);
    v23 = _WAWeatherIconCachePath();
    v24 = [v22 initWithPath:v23 version:13];
    store = v2->_store;
    v2->_store = v24;

    version = [(CPBitmapStore *)v2->_store version];
    v27 = v2->_store;
    if (version == 13)
    {
      if ([(CPBitmapStore *)v27 version]!= -1)
      {
LABEL_13:
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen scale];
        v2->_scale = v33;

        v34 = objc_alloc_init(MEMORY[0x277CBEA78]);
        conditionImagesCache = v2->_conditionImagesCache;
        v2->_conditionImagesCache = v34;

        [(NSCache *)v2->_conditionImagesCache setEvictsObjectsWhenApplicationEntersBackground:0];
        goto LABEL_14;
      }
    }

    else
    {
      [(CPBitmapStore *)v27 purge];
      v28 = objc_alloc(MEMORY[0x277CEC598]);
      v29 = _WAWeatherIconCachePath();
      v30 = [v28 initWithPath:v29 version:13];
      v31 = v2->_store;
      v2->_store = v30;
    }

    [(CPBitmapStore *)v2->_store setVersion:13 withOptions:0x10000000];
    goto LABEL_13;
  }

LABEL_14:
  v36 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (void)preloadImages
{
  for (i = 0; i != 48; ++i)
  {
    v3 = [WeatherImageLoader conditionImageWithConditionIndex:i];
  }
}

- (id)cachedImageForKey:(id)key
{
  keyCopy = key;
  conditionImagesCache = [(WeatherImageLoader *)self conditionImagesCache];
  v6 = [conditionImagesCache objectForKey:keyCopy];

  if (!v6)
  {
    v7 = [(CPBitmapStore *)self->_store copyImageForKey:keyCopy inGroup:&stru_2882270E8];
    if (v7)
    {
      v8 = v7;
      v6 = [MEMORY[0x277D755B8] imageWithCGImage:v7 scale:0 orientation:self->_scale];
      conditionImagesCache2 = [(WeatherImageLoader *)self conditionImagesCache];
      [conditionImagesCache2 setObject:v6 forKey:keyCopy];

      CGImageRelease(v8);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)setImage:(id)image forKey:(id)key
{
  imageCopy = image;
  keyCopy = key;
  v7 = imageCopy;
  if ([imageCopy CGImage])
  {
    -[CPBitmapStore storeImageForKey:inGroup:opaque:image:](self->_store, "storeImageForKey:inGroup:opaque:image:", keyCopy, &stru_2882270E8, 0, [imageCopy CGImage]);
  }
}

+ (id)sharedImageLoader
{
  v2 = sharedImageLoader___sharedImageLoader;
  if (!sharedImageLoader___sharedImageLoader)
  {
    v3 = objc_alloc_init(WeatherImageLoader);
    v4 = sharedImageLoader___sharedImageLoader;
    sharedImageLoader___sharedImageLoader = v3;

    v2 = sharedImageLoader___sharedImageLoader;
  }

  return v2;
}

+ (void)cacheImageIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v4 = +[WeatherImageLoader sharedImageLoader];
  v5 = [v4 cachedImageForKey:necessaryCopy];

  if (!v5)
  {
    v6 = MEMORY[0x277D755B8];
    conditionImageBundle = [self conditionImageBundle];
    v8 = [v6 imageNamed:necessaryCopy inBundle:conditionImageBundle];
    wAImageLoaderPreCacheImage = [v8 WAImageLoaderPreCacheImage];

    [v4 setImage:wAImageLoaderPreCacheImage forKey:necessaryCopy];
  }
}

+ (id)conditionImageWithConditionIndex:(int64_t)index
{
  v3 = [self conditionImageNameWithConditionIndex:index];
  v4 = [WeatherImageLoader conditionImageNamed:v3 style:4];

  return v4;
}

+ (id)conditionImageWithConditionIndex:(int64_t)index style:(int64_t)style
{
  v5 = [self conditionImageNameWithConditionIndex:index];
  v6 = [WeatherImageLoader conditionImageNamed:v5 style:style];

  return v6;
}

+ (id)conditionImageNamed:(id)named style:(int64_t)style
{
  namedCopy = named;
  v7 = UIAccessibilityDarkerSystemColorsEnabled();
  v8 = 0;
  v9 = 40.0;
  v10 = 0.58;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  if (style <= 1)
  {
    if (style)
    {
      v7 = 0;
      v12 = 0;
      if (style != 1)
      {
        goto LABEL_13;
      }

      v8 = 1;
      v10 = 1.0;
    }

    v12 = 0;
    v7 = v8;
    v9 = 60.0;
    LOBYTE(v8) = 0;
    goto LABEL_13;
  }

  switch(style)
  {
    case 2:
LABEL_11:
      v12 = v8;
      LOBYTE(v8) = v7 || IsReduceTransparencyEnabled;
      v13 = 0x4059000000000000;
      goto LABEL_12;
    case 3:
      v8 = 1;
      goto LABEL_11;
    case 5:
      LOBYTE(v8) = 0;
      v7 = 0;
      v12 = 1;
      v13 = 0x4044000000000000;
LABEL_12:
      v9 = *&v13;
      goto LABEL_13;
  }

  v7 = 0;
  v12 = 0;
LABEL_13:
  v14 = [self conditionImageNamed:namedCopy size:v12 cloudAligned:v7 stroke:v8 & 1 strokeAlpha:v9 lighterColors:{v9, v10}];

  return v14;
}

+ (id)conditionImageNamed:(id)named size:(CGSize)size cloudAligned:(BOOL)aligned stroke:(BOOL)stroke strokeAlpha:(double)alpha lighterColors:(BOOL)colors
{
  colorsCopy = colors;
  strokeCopy = stroke;
  alignedCopy = aligned;
  height = size.height;
  width = size.width;
  namedCopy = named;
  v16 = WASmallWeatherIconsMap();
  v17 = [v16 objectForKey:namedCopy];

  v18 = [v17 objectForKey:@"WeatherMapColors"];
  if ([v18 count])
  {
    v52 = v17;
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__0;
    v70 = __Block_byref_object_dispose__0;
    v19 = MEMORY[0x277D755B8];
    v20 = MEMORY[0x277CCACA8];
    v53 = v18;
    firstObject = [v18 firstObject];
    v22 = [v20 stringWithFormat:@"%@_%@", namedCopy, firstObject];
    selfCopy = self;
    [self conditionImageBundle];
    v25 = v24 = colorsCopy;
    v71 = [v19 imageNamed:v22 inBundle:v25];

    v26 = MEMORY[0x277CCACA8];
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:width];
    v28 = v27;
    v29 = @"vert";
    if (alignedCopy)
    {
      v29 = @"hor";
    }

    v30 = &stru_2882270E8;
    v31 = @"-stroke";
    if (!strokeCopy)
    {
      v31 = &stru_2882270E8;
    }

    if (v24)
    {
      v30 = @"l";
    }

    v32 = [v26 stringWithFormat:@"%@-%@-%@%@%@", namedCopy, v29, v27, v31, v30];

    v33 = +[WeatherImageLoader sharedImageLoader];
    v34 = [v33 cachedImageForKey:v32];

    if (v34)
    {
      v35 = v34;
    }

    else
    {
      [v67[5] size];
      v37 = v36;
      [v67[5] size];
      v39 = v38;
      [v67[5] size];
      v41 = v40;
      v42 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{width, height}];
      v43 = width * 0.125;
      v44 = (width + width * 0.125 * -2.0) / v37;
      v45 = v44 * v39;
      v46 = v44 * v41;
      v47 = (height - v44 * v41) * 0.5;
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __93__WeatherImageLoader_conditionImageNamed_size_cloudAligned_stroke_strokeAlpha_lighterColors___block_invoke;
      v54[3] = &unk_279E680B8;
      v64 = strokeCopy;
      v55 = namedCopy;
      v58 = selfCopy;
      alphaCopy = alpha;
      v60 = v43;
      v61 = v47;
      v62 = v45;
      v63 = v46;
      v56 = v53;
      v57 = &v66;
      v65 = v24;
      v48 = [v42 imageWithActions:v54];
      wAImageLoaderPreCacheImage = [v48 WAImageLoaderPreCacheImage];

      v50 = +[WeatherImageLoader sharedImageLoader];
      [v50 setImage:wAImageLoaderPreCacheImage forKey:v32];

      v35 = wAImageLoaderPreCacheImage;
    }

    v17 = v52;

    _Block_object_dispose(&v66, 8);
    v18 = v53;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

void __93__WeatherImageLoader_conditionImageNamed_size_cloudAligned_stroke_strokeAlpha_lighterColors___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = a2;
  if (*(a1 + 104) == 1)
  {
    v3 = MEMORY[0x277D755B8];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_stroke", *(a1 + 32)];
    v5 = [*(a1 + 56) conditionImageBundle];
    v6 = [v3 imageNamed:v4 inBundle:v5];
    v7 = [v6 imageWithRenderingMode:2];

    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:*(a1 + 64)];
    [v8 set];

    [v7 drawPDFInRect:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = MEMORY[0x277D755B8];
        v16 = *(a1 + 32);
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v16, v14];
        v18 = [*(a1 + 56) conditionImageBundle];
        v19 = [v15 imageNamed:v17 inBundle:v18];
        v20 = [v19 imageWithRenderingMode:2];
        v21 = *(*(a1 + 48) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;

        v23 = [*(a1 + 56) colorForImageColor:v14 lighter:*(a1 + 105)];
        [v23 set];

        [*(*(*(a1 + 48) + 8) + 40) drawPDFInRect:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (id)colorForImageColor:(id)color lighter:(BOOL)lighter
{
  lighterCopy = lighter;
  colorCopy = color;
  if ([colorCopy containsString:@"white"])
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    goto LABEL_6;
  }

  if ([colorCopy containsString:@"blue"])
  {
    v7 = MEMORY[0x277D75348];
    v8 = 0.352941176;
    v9 = 0.784313725;
    v10 = 0.980392157;
LABEL_5:
    whiteColor = [v7 colorWithRed:v8 green:v9 blue:v10 alpha:1.0];
    goto LABEL_6;
  }

  if ([colorCopy containsString:@"yellow"])
  {
    v7 = MEMORY[0x277D75348];
    if (lighterCopy)
    {
      v8 = 0.984313725;
      v9 = 0.91372549;
      v10 = 0.380392157;
    }

    else
    {
      v8 = 0.996078431;
      v9 = 0.843137255;
      v10 = 0.192156863;
    }

    goto LABEL_5;
  }

  v13 = [colorCopy containsString:@"red"];
  v7 = MEMORY[0x277D75348];
  if (v13)
  {
    v9 = 0.22745098;
    v10 = 0.184313725;
    v8 = 1.0;
    goto LABEL_5;
  }

  whiteColor = [MEMORY[0x277D75348] clearColor];
LABEL_6:
  v11 = whiteColor;

  return v11;
}

+ (id)cachedImageNamed:(id)named completion:(id)completion
{
  namedCopy = named;
  completionCopy = completion;
  v7 = +[WeatherImageLoader sharedImageLoader];
  v8 = [v7 cachedImageForKey:namedCopy];
  v9 = v8;
  if (completionCopy && !v8)
  {
    v9 = completionCopy[2](completionCopy);
    [v7 setImage:v9 forKey:namedCopy];
  }

  return v9;
}

+ (id)conditionImageNameWithConditionIndex:(int64_t)index
{
  indexCopy = 44;
  if (index <= 0x2F)
  {
    indexCopy = index;
  }

  return *(&smallWeatherIcons + indexCopy);
}

@end