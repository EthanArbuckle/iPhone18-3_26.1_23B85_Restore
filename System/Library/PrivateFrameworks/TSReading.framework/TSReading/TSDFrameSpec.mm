@interface TSDFrameSpec
+ (TSDFrameSpec)frameSpecWithName:(id)name;
+ (id)frameSpecs;
+ (id)p_imageKeys;
- (CGPoint)i_adornmentPosition;
- (CGSize)i_adornmentSize;
- (TSDFrameSpec)initWithBundle:(id)bundle isVolatile:(BOOL)volatile;
- (id)i_providerForIndex:(int)index mask:(BOOL)mask;
- (id)p_imageDataForKey:(id)key;
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
    objc_sync_enter(self);
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
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDFrameSpec frameSpecs]"];
        [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameSpec.m"), 66, @"Couldn't initialize lazy variable %s", "sFrameSpecs"}];
      }
    }

    objc_sync_exit(self);
    return frameSpecs_sFrameSpecs;
  }

  return result;
}

+ (TSDFrameSpec)frameSpecWithName:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = frameSpecWithName__sReadableNameToSpecMap;
  if (!frameSpecWithName__sReadableNameToSpecMap)
  {
    obj = self;
    objc_sync_enter(self);
    if (!frameSpecWithName__sReadableNameToSpecMap)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      nameCopy = name;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      frameSpecs = [obj frameSpecs];
      v8 = [frameSpecs countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = *v20;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(frameSpecs);
            }

            v11 = *(*(&v19 + 1) + 8 * i);
            frameName = [v11 frameName];
            if ([v6 objectForKey:frameName])
            {
              v16 = frameName;
              TSULogErrorInFunction();
            }

            [v6 setObject:v11 forKey:{frameName, v16}];
          }

          v8 = [frameSpecs countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v8);
      }

      __dmb(0xBu);
      frameSpecWithName__sReadableNameToSpecMap = v6;
      name = nameCopy;
      if (!v6)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDFrameSpec frameSpecWithName:]"];
        [currentHandler handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameSpec.m"), 90, @"Couldn't initialize lazy variable %s", "sReadableNameToSpecMap"}];
      }
    }

    objc_sync_exit(obj);
    v5 = frameSpecWithName__sReadableNameToSpecMap;
  }

  result = [v5 objectForKey:name];
  if (!result)
  {
    return [frameSpecWithName__sReadableNameToSpecMap objectForKey:@"None"];
  }

  return result;
}

- (TSDFrameSpec)initWithBundle:(id)bundle isVolatile:(BOOL)volatile
{
  if (!bundle)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameSpec initWithBundle:isVolatile:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameSpec.m"), 103, @"invalid nil value for '%s'", "bundle"}];
  }

  v15.receiver = self;
  v15.super_class = TSDFrameSpec;
  v8 = [(TSDFrameSpec *)&v15 init];
  if (v8)
  {
    v8->mBundle = bundle;
    p_infoDictionary = [(TSDFrameSpec *)v8 p_infoDictionary];
    objc_opt_class();
    [p_infoDictionary objectForKey:@"name"];
    v10 = TSUDynamicCast();
    if (!v10)
    {
      v10 = [objc_msgSend(objc_msgSend(bundle "bundlePath")];
    }

    v8->mFrameName = [v10 copy];
    v8->mDisplayInPicker = [objc_msgSend(p_infoDictionary objectForKey:{@"Display", "BOOLValue"}];
    v8->mLeftInset = [objc_msgSend(p_infoDictionary objectForKey:{@"Left Frame Inset", "intValue"}];
    v8->mRightInset = [objc_msgSend(p_infoDictionary objectForKey:{@"Right Frame Inset", "intValue"}];
    v8->mTopInset = [objc_msgSend(p_infoDictionary objectForKey:{@"Top Frame Inset", "intValue"}];
    v8->mBottomInset = [objc_msgSend(p_infoDictionary objectForKey:{@"Bottom Frame Inset", "intValue"}];
    v8->mTilingMode = [objc_msgSend(p_infoDictionary objectForKey:{@"Stretch Tiles", "intValue"}];
    if ([p_infoDictionary objectForKey:@"Minimum Asset Scale"])
    {
      [objc_msgSend(p_infoDictionary objectForKey:{@"Minimum Asset Scale", "floatValue"}];
      TSUClamp();
    }

    else
    {
      v11 = 1.0;
    }

    v8->mMinimumAssetScale = v11;
    if ([p_infoDictionary objectForKey:@"Adornment Location Relative"])
    {
      [objc_msgSend(p_infoDictionary objectForKey:{@"Adornment Location Relative", "floatValue"}];
      v8->mAdornmentPosition.x = v12;
      [objc_msgSend(p_infoDictionary objectForKey:{@"Adornment Location Absolute", "floatValue"}];
      v8->mAdornmentPosition.y = v13;
    }

    v8->mHasImages = [p_infoDictionary objectForKey:@"Top Left"] != 0;
    v8->mHasMask = [p_infoDictionary objectForKey:@"Top Left Mask"] != 0;
    v8->mHasAdornment = [p_infoDictionary objectForKey:@"Adornment"] != 0;
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
    objc_sync_enter(self);
    if (!p_imageKeys_sImageKeys)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"Top Left", @"Top", @"Top Right", @"Right", @"Bottom Right", @"Bottom", @"Bottom Left", @"Left", @"Adornment", 0}];
      __dmb(0xBu);
      p_imageKeys_sImageKeys = v4;
      if (!v4)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDFrameSpec p_imageKeys]"];
        [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameSpec.m"), 173, @"Couldn't initialize lazy variable %s", "sImageKeys"}];
      }
    }

    objc_sync_exit(self);
    return p_imageKeys_sImageKeys;
  }

  return result;
}

- (id)p_imageDataForKey:(id)key
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
          imageDPI = [v13 imageDPI];
          if (imageDPI >= 0x49)
          {
            v15 = 72.0 / imageDPI;
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
          imageDPI2 = [v22 imageDPI];
          if (imageDPI2 >= 0x49)
          {
            v19 = TSDMultiplySizeScalar(v19, v21, 72.0 / imageDPI2);
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
    allValues = [(NSMutableDictionary *)self->mProvidersByKey allValues];
    v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [*(*(&v7 + 1) + 8 * v6++) flush];
        }

        while (v4 != v6);
        v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    [(NSMutableDictionary *)self->mProvidersByKey removeAllObjects];
    objc_sync_exit(self);
  }
}

- (id)i_providerForIndex:(int)index mask:(BOOL)mask
{
  maskCopy = mask;
  if (index == 8 && mask)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameSpec(Internal) i_providerForIndex:mask:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameSpec.m"), 296, @"Masks for adornments are unsupported."}];
  }

  v9 = [objc_msgSend(objc_opt_class() "p_imageKeys")];
  v10 = v9;
  if (maskCopy)
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