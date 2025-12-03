@interface MRImageManager
+ (void)cleanupPictureCache;
+ (void)initialize;
- (CGImage)CGImageWithData:(id)data withOriginalSize:(CGSize)size forSize:(CGSize)forSize orientation:(char *)orientation;
- (CGImage)CGImageWithMoviePath:(id)path withOriginalSize:(CGSize)size forSize:(CGSize)forSize atTime:(double)time orientation:(char *)orientation;
- (CGImage)CGImageWithPath:(id)path withOriginalSize:(CGSize)size forSize:(CGSize)forSize orientation:(char *)orientation;
- (MRImageManager)initWithBaseContext:(id)context;
- (id)_lockedMasterForAssetAtPath:(id)path withOptions:(id)options;
- (id)_textureWithSize:(id)size isFBO:(BOOL)o options:(id *)options;
- (id)optimizedPath:(id)path forSize:(CGSize)size;
- (id)retainedByUserImageWithCGContext:(CGContext *)context;
- (id)retainedByUserImageWithSize:(CGSize)size andColor:(const float *)color;
- (id)retainedByUserPlayerForAssetAtPath:(id)path size:(CGSize)size andOptions:(id)options;
- (id)retainedByUserThumbnailForAssetAtPath:(id)path;
- (void)dealloc;
- (void)purgeResources:(BOOL)resources;
- (void)recycleTexture:(id)texture;
@end

@implementation MRImageManager

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___MRImageManager;
  objc_msgSendSuper2(&v2, "initialize");
  if ((byte_1EF2A0 & 1) == 0)
  {
    byte_1EF2A0 = 1;
    [+[NSUserDefaults standardUserDefaults](NSUserDefaults BOOLForKey:"BOOLForKey:", @"MRDrawROIs"];
  }
}

- (MRImageManager)initWithBaseContext:(id)context
{
  v7.receiver = self;
  v7.super_class = MRImageManager;
  v4 = [(MRImageManager *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mBaseContext = context;
    v4->mImageGLContext = [[EAGLContext alloc] initWithAPI:2 sharegroup:{objc_msgSend(objc_msgSend(context, "glContext"), "sharegroup")}];
    v5->mTextures = objc_alloc_init(NSMutableDictionary);
    v5->mAvailableTextures = objc_alloc_init(NSMutableSet);
    v5->mRecyclableTextures = objc_alloc_init(NSMutableSet);
    v5->_assetMasters = objc_alloc_init(NSMutableDictionary);
  }

  return v5;
}

- (void)dealloc
{
  self->mBaseContext = 0;
  mImageGLContext = self->mImageGLContext;
  if (mImageGLContext)
  {

    self->mImageGLContext = 0;
  }

  self->mTextures = 0;
  self->mAvailableTextures = 0;

  self->mRecyclableTextures = 0;
  self->_assetMasters = 0;
  v4.receiver = self;
  v4.super_class = MRImageManager;
  [(MRImageManager *)&v4 dealloc];
}

- (void)purgeResources:(BOOL)resources
{
  resourcesCopy = resources;
  assetMasters = self->_assetMasters;
  objc_sync_enter(assetMasters);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_assetMasters objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v38;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        if ([v11 purgeResources])
        {
          if (!v8)
          {
            v8 = objc_alloc_init(NSMutableArray);
          }

          [v8 addObject:{objc_msgSend(v11, "path")}];
        }
      }

      v7 = [objectEnumerator countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v7);
    if (v8)
    {
      [(NSMutableDictionary *)self->_assetMasters removeObjectsForKeys:v8];
    }
  }

  objc_sync_exit(assetMasters);
  objc_sync_enter(self);
  if (resourcesCopy)
  {
    [(NSMutableSet *)self->mAvailableTextures removeAllObjects];
    [(NSMutableSet *)self->mRecyclableTextures removeAllObjects];
    [(NSMutableDictionary *)self->mTextures removeAllObjects];
  }

  else
  {
    v12 = MRGetCurrentTime();
    v13 = [(NSMutableSet *)self->mAvailableTextures copy];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v14)
    {
      v15 = *v34;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v33 + 1) + 8 * j);
          [v17 timestamp];
          if (v18 < v12 + -60.0)
          {
            if ([v17 isFBO])
            {
              v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"f.%dx%d", [v17 size], objc_msgSend(v17, "size") >> 32);
            }

            else
            {
              v20 = [v17 size];
              v21 = [v17 size];
              pixelFormat = [v17 pixelFormat];
              v23 = 4;
              if (pixelFormat == 40)
              {
                v23 = 1;
              }

              v19 = [NSString stringWithFormat:@"t.%dx%dx%d", v20, HIDWORD(v21), v23];
            }

            v24 = [(NSMutableDictionary *)self->mTextures objectForKey:v19];
            objc_sync_enter(v24);
            [v24 removeObject:v17];
            objc_sync_exit(v24);
            [(NSMutableSet *)self->mAvailableTextures removeObject:v17];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v14);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    mRecyclableTextures = self->mRecyclableTextures;
    v26 = [(NSMutableSet *)mRecyclableTextures countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v26)
    {
      v27 = *v30;
      do
      {
        for (k = 0; k != v26; k = k + 1)
        {
          if (*v30 != v27)
          {
            objc_enumerationMutation(mRecyclableTextures);
          }

          [*(*(&v29 + 1) + 8 * k) setTimestamp:v12];
        }

        v26 = [(NSMutableSet *)mRecyclableTextures countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v26);
    }

    [(NSMutableSet *)self->mAvailableTextures unionSet:self->mRecyclableTextures];
    [(NSMutableSet *)self->mRecyclableTextures removeAllObjects];
  }

  objc_sync_exit(self);
}

- (id)_textureWithSize:(id)size isFBO:(BOOL)o options:(id *)options
{
  oCopy = o;
  if (o)
  {
    v9 = [NSString stringWithFormat:@"f.%dx%d", size, size.var1, v23];
  }

  else
  {
    if (options->var3)
    {
      v10 = 1;
    }

    else
    {
      v10 = 4;
    }

    v9 = [NSString stringWithFormat:@"t.%dx%dx%d", size, size.var1, v10];
  }

  v11 = v9;
  objc_sync_enter(self);
  v12 = [(NSMutableDictionary *)self->mTextures objectForKey:v11];
  v13 = v12;
  if (!v12)
  {
    v13 = objc_alloc_init(NSMutableArray);
    [(NSMutableDictionary *)self->mTextures setObject:v13 forKey:v11];

    objc_sync_exit(self);
LABEL_21:
    v18 = [MRTexture alloc];
    mImageGLContext = self->mImageGLContext;
    if (oCopy)
    {
      v20 = [(MRTexture *)v18 initFBOWithSize:size inGLContext:mImageGLContext options:options];
    }

    else
    {
      v20 = [(MRTexture *)v18 initWithSize:size inGLContext:mImageGLContext options:options];
    }

    v17 = v20;
    if (v20)
    {
      [(MRTexture *)v20 setIsShared:1];
      if (oCopy)
      {
        v21 = @"Marimba FBO";
      }

      else
      {
        v21 = @"Marimba Texture";
      }

      [(MRTexture *)v17 setLabel:v21];
      objc_sync_enter(v13);
      [v13 addObject:v17];
      objc_sync_exit(v13);
    }

    return v17;
  }

  objc_sync_enter(v12);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = *v25;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        if ([(NSMutableSet *)self->mAvailableTextures containsObject:v17])
        {
          [(NSMutableSet *)self->mAvailableTextures removeObject:v17];
          goto LABEL_18;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_18:
  objc_sync_exit(v13);
  objc_sync_exit(self);
  if (!v17)
  {
    goto LABEL_21;
  }

  return v17;
}

- (void)recycleTexture:(id)texture
{
  objc_sync_enter(self);
  [(NSMutableSet *)self->mRecyclableTextures addObject:texture];

  objc_sync_exit(self);
}

- (id)_lockedMasterForAssetAtPath:(id)path withOptions:(id)options
{
  if (!path)
  {
    return 0;
  }

  assetMasters = self->_assetMasters;
  objc_sync_enter(assetMasters);
  v8 = [(NSMutableDictionary *)self->_assetMasters objectForKey:path];
  if (v8 || ((v9 = -[MRContext assetManager](self->mBaseContext, "assetManager"), v10 = [options isEmbeddedAsset], !v10) ? ((objc_msgSend(path, "isEqualToString:", @"liveCamera") & 1) == 0 ? (-[MZMediaManagement resolutionForAssetAtPath:](v9, "resolutionForAssetAtPath:", path), v12 = v16, v14 = v17) : (v14 = 720.0, v12 = 1280.0), v15 = -[MZMediaManagement isSupportedMovieForAssetAtPath:](v9, "isSupportedMovieForAssetAtPath:", path)) : (objc_msgSend(options, "resolutionIfEmbeddedAsset"), v12 = v11, v14 = v13, v15 = 0), v8 = -[MRAssetMaster initWithPath:originalSize:isEmbeddedAsset:isSupportedMovie:andImageManager:]([MRAssetMaster alloc], "initWithPath:originalSize:isEmbeddedAsset:isSupportedMovie:andImageManager:", path, v10, v15, self, v12, v14), -[MRAssetMaster setTimestamp:](v8, "setTimestamp:", 0.0), -[NSMutableDictionary setObject:forKey:](self->_assetMasters, "setObject:forKey:", v8, path), v8, v8))
  {
    objc_sync_enter(v8);
  }

  objc_sync_exit(assetMasters);
  return v8;
}

- (id)retainedByUserPlayerForAssetAtPath:(id)path size:(CGSize)size andOptions:(id)options
{
  if (!path)
  {
    return 0;
  }

  height = size.height;
  width = size.width;
  v8 = [MRImageManager _lockedMasterForAssetAtPath:"_lockedMasterForAssetAtPath:withOptions:" withOptions:?];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [v8 retainedByUserPlayerForSize:options andOptions:{width, height}];
  objc_sync_exit(v9);
  return v10;
}

- (id)retainedByUserThumbnailForAssetAtPath:(id)path
{
  if (!path)
  {
    return 0;
  }

  v3 = [(MRImageManager *)self _lockedMasterForAssetAtPath:path withOptions:0];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [objc_msgSend(v3 "thumbnail")];
  objc_sync_exit(v4);
  return v5;
}

- (id)retainedByUserImageWithCGContext:(CGContext *)context
{
  v4 = [[MRTextureSource alloc] initWithCGContext:context imageManager:self];
  v5 = [MRImage alloc];
  Width = CGBitmapContextGetWidth(context);
  v7 = [(MRImage *)v5 initWithTextureSource:v4 andSize:Width, CGBitmapContextGetHeight(context)];

  [(MRImage *)v7 setLabel:[NSString stringWithFormat:@"Marimba CGContext"]];
  return v7;
}

- (id)retainedByUserImageWithSize:(CGSize)size andColor:(const float *)color
{
  height = size.height;
  width = size.width;
  v7 = [[MRTextureSource alloc] initWithSize:size.width | (size.height << 32) andColor:color imageManager:self];
  height = [[MRImage alloc] initWithTextureSource:v7 andSize:width, height];

  if (color)
  {
    v9 = [NSString stringWithFormat:@"Marimba Color %.2f %.2f %.2f %.2f", *color, color[1], color[2], color[3]];
  }

  else
  {
    v9 = [NSString stringWithFormat:@"Marimba", v11, v12, v13, v14];
  }

  [(MRImage *)height setLabel:v9];

  return height;
}

- (id)optimizedPath:(id)path forSize:(CGSize)size
{
  if (size.width < size.height)
  {
    size.width = size.height;
  }

  if (size.width >= 361.984)
  {
    return path;
  }

  else
  {
    return [NSString stringWithValidatedFormat:path validFormatSpecifiers:@"%d" error:0, 256];
  }
}

- (CGImage)CGImageWithPath:(id)path withOriginalSize:(CGSize)size forSize:(CGSize)forSize orientation:(char *)orientation
{
  height = forSize.height;
  width = forSize.width;
  v8 = size.height;
  v9 = size.width;
  v10 = [(MRImageManager *)self optimizedPath:path forSize:orientation, forSize.width, forSize.height];
  v11 = CGImageSourceCreateWithURL([NSURL fileURLWithPath:v10], 0);
  if (v11)
  {
    v12 = v11;
    v13 = v9 / width;
    if (v9 / width >= v8 / height)
    {
      v13 = v8 / height;
    }

    v14 = v13;
    v15 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{&__kCFBooleanTrue, @"kCGImageSourceShouldPreferRGB32", 0}];
    if (v14 >= 2)
    {
      [v15 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", v14), @"kCGImageSourceSubsampleFactor"}];
    }

    [v15 setObject:kCFBooleanTrue forKey:kCGImageSourceCreateThumbnailWithTransform];
    [v15 setObject:kCFBooleanTrue forKey:kCGImageSourceCreateThumbnailFromImageAlways];
    if (width >= height)
    {
      v16 = width;
    }

    else
    {
      v16 = height;
    }

    [v15 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", v16), kCGImageSourceThumbnailMaxPixelSize}];
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v12, 0, v15);

    CFRelease(v12);
  }

  else
  {
    NSLog(@"Error creating image source for path '%@'.", v10);
    ThumbnailAtIndex = 0;
  }

  return ThumbnailAtIndex;
}

- (CGImage)CGImageWithData:(id)data withOriginalSize:(CGSize)size forSize:(CGSize)forSize orientation:(char *)orientation
{
  height = forSize.height;
  width = forSize.width;
  v9 = size.height;
  v10 = size.width;
  v11 = CGImageSourceCreateWithData(data, 0);
  if (v11)
  {
    v12 = v11;
    v13 = CGImageSourceCopyPropertiesAtIndex(v11, 0, 0);
    if (v13)
    {
      v14 = v13;
      *orientation = [-[__CFDictionary objectForKey:](v13 objectForKey:{kCGImagePropertyOrientation), "intValue"}];
    }

    v15 = v10 / width;
    if (v10 / width >= v9 / height)
    {
      v15 = v9 / height;
    }

    v16 = v15;
    v17 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{&__kCFBooleanTrue, @"kCGImageSourceShouldPreferRGB32", 0}];
    if (v16 >= 2)
    {
      [v17 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", v16), @"kCGImageSourceSubsampleFactor"}];
    }

    [v17 setObject:kCFBooleanTrue forKey:kCGImageSourceCreateThumbnailWithTransform];
    [v17 setObject:kCFBooleanTrue forKey:kCGImageSourceCreateThumbnailFromImageAlways];
    if (width >= height)
    {
      v18 = width;
    }

    else
    {
      v18 = height;
    }

    [v17 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", v18), kCGImageSourceThumbnailMaxPixelSize}];
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v12, 0, v17);

    CFRelease(v12);
  }

  else
  {
    NSLog(@"Error creating image source from data.");
    ThumbnailAtIndex = 0;
  }

  return ThumbnailAtIndex;
}

- (CGImage)CGImageWithMoviePath:(id)path withOriginalSize:(CGSize)size forSize:(CGSize)forSize atTime:(double)time orientation:(char *)orientation
{
  height = forSize.height;
  width = forSize.width;
  v10 = [AVURLAsset URLAssetWithURL:[NSURL URLWithString:path options:orientation, size.width, size.height], 0];
  v11 = [[AVAssetImageGenerator alloc] initWithAsset:v10];
  v12 = v11;
  if (time >= 0.0)
  {
    *timescale = *&kCMTimeZero.value;
    v22 = *timescale;
    epoch = kCMTimeZero.epoch;
    v13 = epoch;
    [v11 setRequestedTimeToleranceBefore:timescale];
    *timescale = v22;
    epoch = v13;
    [v12 setRequestedTimeToleranceAfter:timescale];
  }

  [v12 setMaximumSize:{width, height}];
  [v12 setAppliesPreferredTrackTransform:1];
  v25 = 0;
  memset(timescale, 0, sizeof(timescale));
  epoch = 0;
  if (v10)
  {
    [(AVURLAsset *)v10 duration];
    v14 = timescale[2];
    v15 = *timescale;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v16 = v14 * time;
  if (time < 0.0)
  {
    v16 = 0.0;
  }

  if (v15 <= v16)
  {
    v17 = v15 - 1;
  }

  else
  {
    v17 = v16;
  }

  CMTimeMake(&v24, v17, v14);
  v18 = [v12 copyCGImageAtTime:&v24 actualTime:0 error:&v25];
  if (v25)
  {
    code = [v25 code];
    if (time >= 0.0 && code == -11832)
    {
      v24 = kCMTimePositiveInfinity;
      v23 = *&v24.value;
      v20 = v24.epoch;
      [v12 setRequestedTimeToleranceBefore:&v24];
      *&v24.value = v23;
      v24.epoch = v20;
      [v12 setRequestedTimeToleranceAfter:&v24];
      if (v18)
      {
        CGImageRelease(v18);
      }

      CMTimeMake(&v24, v17, timescale[2]);
      v18 = [v12 copyCGImageAtTime:&v24 actualTime:0 error:&v25];
    }
  }

  return v18;
}

+ (void)cleanupPictureCache
{
  pthread_setname_np("MRImageManager: Cleanup Picture Cache");
  v2 = objc_autoreleasePoolPush();
  [NSThread setThreadPriority:0.1];
  v3 = +[NSUserDefaults standardUserDefaults];
  if ([(NSUserDefaults *)v3 objectForKey:@"MRImageManagerMaxUntouchedAgeForCachedPictures"])
  {
    [(NSUserDefaults *)v3 doubleForKey:@"MRImageManagerMaxUntouchedAgeForCachedPictures"];
    v5 = v4;
  }

  else
  {
    v5 = 3000000.0;
  }

  if ([(NSUserDefaults *)v3 objectForKey:@"MRImageManagerTimeToWaitBeforeCleaningUpPictureCache"])
  {
    [(NSUserDefaults *)v3 doubleForKey:@"MRImageManagerTimeToWaitBeforeCleaningUpPictureCache"];
    v7 = v6;
  }

  else
  {
    v7 = 300;
  }

  sleep(v7);
  v8 = +[NSFileManager defaultManager];
  1uLL = [-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSCachesDirectory 1uLL];
  [(NSFileManager *)v8 createDirectoryAtPath:1uLL withIntermediateDirectories:1 attributes:0 error:0];
  v10 = [(NSFileManager *)v8 subpathsOfDirectoryAtPath:1uLL error:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [1uLL stringByAppendingPathComponent:*(*(&v17 + 1) + 8 * v14)];
        [-[NSDictionary objectForKey:](-[NSFileManager attributesOfItemAtPath:error:](v8 attributesOfItemAtPath:v15 error:{0), "objectForKey:", NSFileModificationDate), "timeIntervalSinceNow"}];
        if (v5 < -v16)
        {
          [(NSFileManager *)v8 removeItemAtPath:v15 error:0];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(v2);
  pthread_setname_np("");
}

@end