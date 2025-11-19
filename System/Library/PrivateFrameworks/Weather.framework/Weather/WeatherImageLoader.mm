@interface WeatherImageLoader
+ (id)cachedImageNamed:(id)a3 completion:(id)a4;
+ (id)colorForImageColor:(id)a3 lighter:(BOOL)a4;
+ (id)conditionImageNameWithConditionIndex:(int64_t)a3;
+ (id)conditionImageNamed:(id)a3 size:(CGSize)a4 cloudAligned:(BOOL)a5 stroke:(BOOL)a6 strokeAlpha:(double)a7 lighterColors:(BOOL)a8;
+ (id)conditionImageNamed:(id)a3 style:(int64_t)a4;
+ (id)conditionImageWithConditionIndex:(int64_t)a3;
+ (id)conditionImageWithConditionIndex:(int64_t)a3 style:(int64_t)a4;
+ (id)sharedImageLoader;
+ (void)cacheImageIfNecessary:(id)a3;
+ (void)preloadImages;
- (WeatherImageLoader)init;
- (id)cachedImageForKey:(id)a3;
- (void)setImage:(id)a3 forKey:(id)a4;
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
    v5 = [v4 BOOLValue];

    if ((v5 & 1) == 0)
    {
      v6 = [MEMORY[0x277D75128] sharedApplication];
      v7 = [v6 userLibraryDirectory];
      MigrateDataProtectionClassOfPath(v7);

      v8 = [MEMORY[0x277D75128] sharedApplication];
      v9 = [v8 userCachesDirectory];
      MigrateDataProtectionClassOfPath(v9);

      v10 = [MEMORY[0x277D75128] sharedApplication];
      v11 = [v10 userCachesDirectory];
      v12 = [v11 stringByAppendingPathComponent:@"Weather"];
      MigrateDataProtectionClassOfPath(v12);

      v13 = _WAWeatherIconCachePath();
      v14 = [MEMORY[0x277CCAA00] defaultManager];
      v39 = 0;
      [v14 removeItemAtPath:v13 error:&v39];
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

      v17 = [MEMORY[0x277D75128] sharedApplication];
      v18 = [v17 userCachesDirectory];
      v19 = [v18 stringByAppendingPathComponent:@"Weather/Labels"];

      v38 = 0;
      [v14 removeItemAtPath:v19 error:&v38];
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

    v26 = [(CPBitmapStore *)v2->_store version];
    v27 = v2->_store;
    if (v26 == 13)
    {
      if ([(CPBitmapStore *)v27 version]!= -1)
      {
LABEL_13:
        v32 = [MEMORY[0x277D759A0] mainScreen];
        [v32 scale];
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

- (id)cachedImageForKey:(id)a3
{
  v4 = a3;
  v5 = [(WeatherImageLoader *)self conditionImagesCache];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = [(CPBitmapStore *)self->_store copyImageForKey:v4 inGroup:&stru_2882270E8];
    if (v7)
    {
      v8 = v7;
      v6 = [MEMORY[0x277D755B8] imageWithCGImage:v7 scale:0 orientation:self->_scale];
      v9 = [(WeatherImageLoader *)self conditionImagesCache];
      [v9 setObject:v6 forKey:v4];

      CGImageRelease(v8);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)setImage:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = v8;
  if ([v8 CGImage])
  {
    -[CPBitmapStore storeImageForKey:inGroup:opaque:image:](self->_store, "storeImageForKey:inGroup:opaque:image:", v6, &stru_2882270E8, 0, [v8 CGImage]);
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

+ (void)cacheImageIfNecessary:(id)a3
{
  v10 = a3;
  v4 = +[WeatherImageLoader sharedImageLoader];
  v5 = [v4 cachedImageForKey:v10];

  if (!v5)
  {
    v6 = MEMORY[0x277D755B8];
    v7 = [a1 conditionImageBundle];
    v8 = [v6 imageNamed:v10 inBundle:v7];
    v9 = [v8 WAImageLoaderPreCacheImage];

    [v4 setImage:v9 forKey:v10];
  }
}

+ (id)conditionImageWithConditionIndex:(int64_t)a3
{
  v3 = [a1 conditionImageNameWithConditionIndex:a3];
  v4 = [WeatherImageLoader conditionImageNamed:v3 style:4];

  return v4;
}

+ (id)conditionImageWithConditionIndex:(int64_t)a3 style:(int64_t)a4
{
  v5 = [a1 conditionImageNameWithConditionIndex:a3];
  v6 = [WeatherImageLoader conditionImageNamed:v5 style:a4];

  return v6;
}

+ (id)conditionImageNamed:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = UIAccessibilityDarkerSystemColorsEnabled();
  v8 = 0;
  v9 = 40.0;
  v10 = 0.58;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  if (a4 <= 1)
  {
    if (a4)
    {
      v7 = 0;
      v12 = 0;
      if (a4 != 1)
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

  switch(a4)
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
  v14 = [a1 conditionImageNamed:v6 size:v12 cloudAligned:v7 stroke:v8 & 1 strokeAlpha:v9 lighterColors:{v9, v10}];

  return v14;
}

+ (id)conditionImageNamed:(id)a3 size:(CGSize)a4 cloudAligned:(BOOL)a5 stroke:(BOOL)a6 strokeAlpha:(double)a7 lighterColors:(BOOL)a8
{
  v8 = a8;
  v10 = a6;
  v11 = a5;
  height = a4.height;
  width = a4.width;
  v15 = a3;
  v16 = WASmallWeatherIconsMap();
  v17 = [v16 objectForKey:v15];

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
    v21 = [v18 firstObject];
    v22 = [v20 stringWithFormat:@"%@_%@", v15, v21];
    v23 = a1;
    [a1 conditionImageBundle];
    v25 = v24 = v8;
    v71 = [v19 imageNamed:v22 inBundle:v25];

    v26 = MEMORY[0x277CCACA8];
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:width];
    v28 = v27;
    v29 = @"vert";
    if (v11)
    {
      v29 = @"hor";
    }

    v30 = &stru_2882270E8;
    v31 = @"-stroke";
    if (!v10)
    {
      v31 = &stru_2882270E8;
    }

    if (v24)
    {
      v30 = @"l";
    }

    v32 = [v26 stringWithFormat:@"%@-%@-%@%@%@", v15, v29, v27, v31, v30];

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
      v64 = v10;
      v55 = v15;
      v58 = v23;
      v59 = a7;
      v60 = v43;
      v61 = v47;
      v62 = v45;
      v63 = v46;
      v56 = v53;
      v57 = &v66;
      v65 = v24;
      v48 = [v42 imageWithActions:v54];
      v49 = [v48 WAImageLoaderPreCacheImage];

      v50 = +[WeatherImageLoader sharedImageLoader];
      [v50 setImage:v49 forKey:v32];

      v35 = v49;
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

+ (id)colorForImageColor:(id)a3 lighter:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([v5 containsString:@"white"])
  {
    v6 = [MEMORY[0x277D75348] whiteColor];
    goto LABEL_6;
  }

  if ([v5 containsString:@"blue"])
  {
    v7 = MEMORY[0x277D75348];
    v8 = 0.352941176;
    v9 = 0.784313725;
    v10 = 0.980392157;
LABEL_5:
    v6 = [v7 colorWithRed:v8 green:v9 blue:v10 alpha:1.0];
    goto LABEL_6;
  }

  if ([v5 containsString:@"yellow"])
  {
    v7 = MEMORY[0x277D75348];
    if (v4)
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

  v13 = [v5 containsString:@"red"];
  v7 = MEMORY[0x277D75348];
  if (v13)
  {
    v9 = 0.22745098;
    v10 = 0.184313725;
    v8 = 1.0;
    goto LABEL_5;
  }

  v6 = [MEMORY[0x277D75348] clearColor];
LABEL_6:
  v11 = v6;

  return v11;
}

+ (id)cachedImageNamed:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[WeatherImageLoader sharedImageLoader];
  v8 = [v7 cachedImageForKey:v5];
  v9 = v8;
  if (v6 && !v8)
  {
    v9 = v6[2](v6);
    [v7 setImage:v9 forKey:v5];
  }

  return v9;
}

+ (id)conditionImageNameWithConditionIndex:(int64_t)a3
{
  v3 = 44;
  if (a3 <= 0x2F)
  {
    v3 = a3;
  }

  return *(&smallWeatherIcons + v3);
}

@end