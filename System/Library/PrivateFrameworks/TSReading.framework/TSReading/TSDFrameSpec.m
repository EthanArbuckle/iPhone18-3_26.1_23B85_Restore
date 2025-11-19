@interface TSDFrameSpec
+ (TSDFrameSpec)frameSpecWithName:(id)a3;
+ (id)frameSpecs;
+ (id)p_imageKeys;
- (CGPoint)i_adornmentPosition;
- (CGSize)i_adornmentSize;
- (TSDFrameSpec)initWithBundle:(id)a3 isVolatile:(BOOL)a4;
- (id)i_providerForIndex:(int)a3 mask:(BOOL)a4;
- (id)p_imageDataForKey:(id)a3;
- (id)p_infoDictionary;
- (void)dealloc;
- (void)i_removeInterestInProviders;
- (void)p_loadImageMetrics;
@end

@implementation TSDFrameSpec

+ (id)frameSpecs
{
  v18 = *MEMORY[0x277D85DE8];
  result = frameSpecs_sFrameSpecs;
  if (!frameSpecs_sFrameSpecs)
  {
    objc_sync_enter(a1);
    if (!frameSpecs_sFrameSpecs)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v5 = [TSDBundle() pathsForResourcesOfType:@"sfrframe" inDirectory:@"Frames"];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = *v14;
        do
        {
          v8 = 0;
          do
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:*(*(&v13 + 1) + 8 * v8)];
            v10 = [[TSDFrameSpec alloc] initWithBundle:v9 isVolatile:0];
            if (v10)
            {
              [v4 addObject:v10];
            }

            ++v8;
          }

          while (v6 != v8);
          v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v6);
      }

      __dmb(0xBu);
      frameSpecs_sFrameSpecs = v4;
      if (!v4)
      {
        v11 = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDFrameSpec frameSpecs]"];
        [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameSpec.m"), 66, @"Couldn't initialize lazy variable %s", "sFrameSpecs"}];
      }
    }

    objc_sync_exit(a1);
    return frameSpecs_sFrameSpecs;
  }

  return result;
}

+ (TSDFrameSpec)frameSpecWithName:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = frameSpecWithName__sReadableNameToSpecMap;
  if (!frameSpecWithName__sReadableNameToSpecMap)
  {
    obj = a1;
    objc_sync_enter(a1);
    if (!frameSpecWithName__sReadableNameToSpecMap)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v17 = a3;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = [obj frameSpecs];
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = *v20;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v19 + 1) + 8 * i);
            v12 = [v11 frameName];
            if ([v6 objectForKey:v12])
            {
              v16 = v12;
              TSULogErrorInFunction();
            }

            [v6 setObject:v11 forKey:{v12, v16}];
          }

          v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v8);
      }

      __dmb(0xBu);
      frameSpecWithName__sReadableNameToSpecMap = v6;
      a3 = v17;
      if (!v6)
      {
        v13 = [MEMORY[0x277D6C290] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDFrameSpec frameSpecWithName:]"];
        [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameSpec.m"), 90, @"Couldn't initialize lazy variable %s", "sReadableNameToSpecMap"}];
      }
    }

    objc_sync_exit(obj);
    v5 = frameSpecWithName__sReadableNameToSpecMap;
  }

  result = [v5 objectForKey:a3];
  if (!result)
  {
    return [frameSpecWithName__sReadableNameToSpecMap objectForKey:@"None"];
  }

  return result;
}

- (TSDFrameSpec)initWithBundle:(id)a3 isVolatile:(BOOL)a4
{
  if (!a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameSpec initWithBundle:isVolatile:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameSpec.m"), 103, @"invalid nil value for '%s'", "bundle"}];
  }

  v15.receiver = self;
  v15.super_class = TSDFrameSpec;
  v8 = [(TSDFrameSpec *)&v15 init];
  if (v8)
  {
    v8->mBundle = a3;
    v9 = [(TSDFrameSpec *)v8 p_infoDictionary];
    objc_opt_class();
    [v9 objectForKey:@"name"];
    v10 = TSUDynamicCast();
    if (!v10)
    {
      v10 = [objc_msgSend(objc_msgSend(a3 "bundlePath")];
    }

    v8->mFrameName = [v10 copy];
    v8->mDisplayInPicker = [objc_msgSend(v9 objectForKey:{@"Display", "BOOLValue"}];
    v8->mLeftInset = [objc_msgSend(v9 objectForKey:{@"Left Frame Inset", "intValue"}];
    v8->mRightInset = [objc_msgSend(v9 objectForKey:{@"Right Frame Inset", "intValue"}];
    v8->mTopInset = [objc_msgSend(v9 objectForKey:{@"Top Frame Inset", "intValue"}];
    v8->mBottomInset = [objc_msgSend(v9 objectForKey:{@"Bottom Frame Inset", "intValue"}];
    v8->mTilingMode = [objc_msgSend(v9 objectForKey:{@"Stretch Tiles", "intValue"}];
    if ([v9 objectForKey:@"Minimum Asset Scale"])
    {
      [objc_msgSend(v9 objectForKey:{@"Minimum Asset Scale", "floatValue"}];
      TSUClamp();
    }

    else
    {
      v11 = 1.0;
    }

    v8->mMinimumAssetScale = v11;
    if ([v9 objectForKey:@"Adornment Location Relative"])
    {
      [objc_msgSend(v9 objectForKey:{@"Adornment Location Relative", "floatValue"}];
      v8->mAdornmentPosition.x = v12;
      [objc_msgSend(v9 objectForKey:{@"Adornment Location Absolute", "floatValue"}];
      v8->mAdornmentPosition.y = v13;
    }

    v8->mHasImages = [v9 objectForKey:@"Top Left"] != 0;
    v8->mHasMask = [v9 objectForKey:@"Top Left Mask"] != 0;
    v8->mHasAdornment = [v9 objectForKey:@"Adornment"] != 0;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDFrameSpec;
  [(TSDFrameSpec *)&v3 dealloc];
}

- (id)p_infoDictionary
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [(NSBundle *)self->mBundle pathForResource:@"index" ofType:@"plist"];

  return [v2 dictionaryWithContentsOfFile:v3];
}

+ (id)p_imageKeys
{
  result = p_imageKeys_sImageKeys;
  if (!p_imageKeys_sImageKeys)
  {
    objc_sync_enter(a1);
    if (!p_imageKeys_sImageKeys)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"Top Left", @"Top", @"Top Right", @"Right", @"Bottom Right", @"Bottom", @"Bottom Left", @"Left", @"Adornment", 0}];
      __dmb(0xBu);
      p_imageKeys_sImageKeys = v4;
      if (!v4)
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDFrameSpec p_imageKeys]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameSpec.m"), 173, @"Couldn't initialize lazy variable %s", "sImageKeys"}];
      }
    }

    objc_sync_exit(a1);
    return p_imageKeys_sImageKeys;
  }

  return result;
}

- (id)p_imageDataForKey:(id)a3
{
  result = [-[TSDFrameSpec p_infoDictionary](self "p_infoDictionary")];
  if (result)
  {
    v5 = [(NSURL *)[(NSBundle *)self->mBundle resourceURL] URLByAppendingPathComponent:result];

    return [TSPData readOnlyDataFromURL:v5 context:0];
  }

  return result;
}

- (void)p_loadImageMetrics
{
  if (!self->mLoadedImageMetrics)
  {
    objc_sync_enter(self);
    if (!self->mLoadedImageMetrics)
    {
      if ([(TSDFrameSpec *)self i_hasImages])
      {
        v3 = [(TSDFrameSpec *)self i_providerForIndex:6 mask:0];
        v4 = [(TSDFrameSpec *)self i_providerForIndex:2 mask:0];
        [v3 naturalSize];
        v6 = v5;
        v8 = v7;
        [v4 naturalSize];
        v10 = v9;
        v12 = v11;
        objc_opt_class();
        v13 = TSUDynamicCast();
        if (v13)
        {
          v14 = [v13 imageDPI];
          if (v14 >= 0x49)
          {
            v15 = 72.0 / v14;
            v6 = TSDMultiplySizeScalar(v6, v8, v15);
            v8 = v16;
            v10 = TSDMultiplySizeScalar(v10, v12, v15);
            v12 = v17;
          }
        }

        self->mLeftWidth = v6;
        self->mRightWidth = v10;
        self->mTopHeight = v12;
        self->mBottomHeight = v8;
      }

      if ([(TSDFrameSpec *)self i_hasAdornment])
      {
        [-[TSDFrameSpec i_providerForIndex:mask:](self i_providerForIndex:8 mask:{0), "naturalSize"}];
        v19 = v18;
        v21 = v20;
        objc_opt_class();
        v22 = TSUDynamicCast();
        if (v22)
        {
          v23 = [v22 imageDPI];
          if (v23 >= 0x49)
          {
            v19 = TSDMultiplySizeScalar(v19, v21, 72.0 / v23);
            v21 = v24;
          }
        }

        self->mAdornmentSize.width = v19;
        self->mAdornmentSize.height = v21;
      }

      __dmb(0xBu);
      self->mLoadedImageMetrics = 1;
    }

    objc_sync_exit(self);
  }
}

- (void)i_removeInterestInProviders
{
  v12 = *MEMORY[0x277D85DE8];
  atomic_fetch_add(&self->mInterest, 0xFFFFFFFF);
  if (!self->mInterest)
  {
    objc_sync_enter(self);
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(NSMutableDictionary *)self->mProvidersByKey allValues];
    v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v4)
    {
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v7 + 1) + 8 * v6++) flush];
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    [(NSMutableDictionary *)self->mProvidersByKey removeAllObjects];
    objc_sync_exit(self);
  }
}

- (id)i_providerForIndex:(int)a3 mask:(BOOL)a4
{
  v4 = a4;
  if (a3 == 8 && a4)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameSpec(Internal) i_providerForIndex:mask:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameSpec.m"), 296, @"Masks for adornments are unsupported."}];
  }

  v9 = [objc_msgSend(objc_opt_class() "p_imageKeys")];
  v10 = v9;
  if (v4)
  {
    v10 = [v9 stringByAppendingString:@" Mask"];
  }

  objc_sync_enter(self);
  v11 = [(NSMutableDictionary *)self->mProvidersByKey objectForKey:v10];
  if (!v11)
  {
    v11 = [(TSDFrameSpec *)self p_imageDataForKey:v10];
    if (v11)
    {
      [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
      objc_opt_class();
      v11 = TSUDynamicCast();
      mProvidersByKey = self->mProvidersByKey;
      if (!mProvidersByKey)
      {
        mProvidersByKey = objc_alloc_init(MEMORY[0x277CBEB38]);
        self->mProvidersByKey = mProvidersByKey;
      }

      [(NSMutableDictionary *)mProvidersByKey setObject:v11 forKey:v10];
    }
  }

  objc_sync_exit(self);
  return v11;
}

- (CGSize)i_adornmentSize
{
  [(TSDFrameSpec *)self p_loadImageMetrics];
  width = self->mAdornmentSize.width;
  height = self->mAdornmentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)i_adornmentPosition
{
  x = self->mAdornmentPosition.x;
  y = self->mAdornmentPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end