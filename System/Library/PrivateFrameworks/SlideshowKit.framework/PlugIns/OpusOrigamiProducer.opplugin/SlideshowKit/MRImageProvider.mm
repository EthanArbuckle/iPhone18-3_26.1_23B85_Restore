@interface MRImageProvider
- (BOOL)endLiveUpdate;
- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (CGSize)defaultSize;
- (CGSize)imageSizeForAspectRatio:(float)ratio;
- (CGSize)originalImageSize;
- (CGSize)requestedSize;
- (MRImageProvider)init;
- (MRLayerEffect)effectLayer;
- (double)imageAspectRatio;
- (id)patchworkAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (id)retainedByUserRenderedImageAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (void)_computeImageSizeInContext:(id)context withArguments:(id)arguments;
- (void)_unloadIfNotUpdatingLive;
- (void)cancelLoading;
- (void)cleanup;
- (void)dealloc;
- (void)imageIsAvailableFromAssetPlayer:(id)player;
- (void)loadForTime:(double)time inContext:(id)context withArguments:(id)arguments now:(BOOL)now;
- (void)loadWithArguments:(id)arguments;
- (void)setAssetPath:(id)path;
- (void)setDefaultSize:(CGSize)size;
- (void)setEffectAttributes:(id)attributes;
- (void)setEffectLayer:(id)layer;
- (void)setImageSizeScript:(id)script;
- (void)setOriginalImageSize:(CGSize)size;
- (void)setWantsMipmap:(BOOL)mipmap;
- (void)setWantsMonochromatic:(BOOL)monochromatic;
- (void)setWantsPowerOfTwo:(BOOL)two;
- (void)unload;
@end

@implementation MRImageProvider

- (MRImageProvider)init
{
  v6.receiver = self;
  v6.super_class = MRImageProvider;
  v2 = [(MRImageProvider *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->mShowDuration = -1.0;
    v2->mIsCleanedUp = 0;
    v4 = objc_alloc_init(NSLock);
    v3->mPreloadOperationLock = v4;
    [(NSLock *)v4 setName:@"MRImageProvider.preloadOperationLock"];
  }

  return v3;
}

- (void)dealloc
{
  [(MRImageProvider *)self cleanup];

  self->mPreloadOperationLock = 0;
  v3.receiver = self;
  v3.super_class = MRImageProvider;
  [(MRImageProvider *)&v3 dealloc];
}

- (void)cleanup
{
  objc_sync_enter(self);
  if (!self->mIsCleanedUp)
  {
    self->mIsCleanedUp = 1;
    self->_effectLayer = 0;
    [(MRImageProvider *)self unload];
    [(MRImageProvider *)self setAssetPath:0];
    self->mOriginalImageSize = CGSizeZero;

    self->mEffectAttributes = 0;
    self->mImageSizeScript = 0;
  }

  objc_sync_exit(self);
}

- (void)setDefaultSize:(CGSize)size
{
  if (size.width != self->mDefaultSize.width || size.height != self->mDefaultSize.height)
  {
    self->mDefaultSize = size;
    [(MRImageProvider *)self _unloadIfNotUpdatingLive];
  }
}

- (void)setWantsMonochromatic:(BOOL)monochromatic
{
  mFlags = self->mFlags;
  if (((((mFlags & 0x40) == 0) ^ monochromatic) & 1) == 0)
  {
    v4 = mFlags & 0xBF;
    if (monochromatic)
    {
      v5 = 64;
    }

    else
    {
      v5 = 0;
    }

    LOBYTE(self->mFlags) = v4 | v5;
    [(MRImageProvider *)self unload];
  }
}

- (void)setWantsMipmap:(BOOL)mipmap
{
  mFlags = self->mFlags;
  if (((((mFlags & 0x20) == 0) ^ mipmap) & 1) == 0)
  {
    v4 = mFlags & 0xDF;
    if (mipmap)
    {
      v5 = 32;
    }

    else
    {
      v5 = 0;
    }

    LOBYTE(self->mFlags) = v4 | v5;
    [(MRImageProvider *)self unload];
  }
}

- (void)setWantsPowerOfTwo:(BOOL)two
{
  mFlags = self->mFlags;
  if (((((mFlags & 0x10) == 0) ^ two) & 1) == 0)
  {
    v4 = mFlags & 0xEF;
    if (two)
    {
      v5 = 16;
    }

    else
    {
      v5 = 0;
    }

    LOBYTE(self->mFlags) = v4 | v5;
    [(MRImageProvider *)self unload];
  }
}

- (void)setOriginalImageSize:(CGSize)size
{
  if (size.width != self->mOriginalImageSize.width || size.height != self->mOriginalImageSize.height)
  {
    self->mOriginalImageSize = size;
    BYTE2(self->mFlags) |= 2u;
  }
}

- (double)imageAspectRatio
{
  height = self->mOriginalImageSize.height;
  result = 1.0;
  if (height > 0.0)
  {
    return self->mOriginalImageSize.width / height;
  }

  return result;
}

- (void)setImageSizeScript:(id)script
{
  if (([script isEqualToString:self->mImageSizeScript] & 1) == 0)
  {

    self->mImageSizeScript = script;
    self->mRequestedSize = CGSizeZero;
  }
}

- (void)setEffectAttributes:(id)attributes
{
  mEffectAttributes = self->mEffectAttributes;
  if (mEffectAttributes != attributes)
  {

    self->mEffectAttributes = attributes;
    self->mRequestedSize = CGSizeZero;
  }
}

- (CGSize)imageSizeForAspectRatio:(float)ratio
{
  width = self->mDefaultSize.width;
  height = self->mDefaultSize.height;
  if (self->mImageSizeScript)
  {
    ratioCopy = ratio;
    v7 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", width), @"layerWidth", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", height), @"layerHeight", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", ratio), @"imageAspectRatio", 0}];
    v8 = [MRUtilities executeScript:self->mImageSizeScript withHeader:v7 andAttributes:self->mEffectAttributes];

    if (v8)
    {
      v9 = CGSizeFromString(v8);
      width = v9.width;
      height = v9.height;
    }

    else
    {
      v10 = self->mDefaultSize.width;
      height = self->mDefaultSize.height;
      width = height * ratioCopy;
      if (height * ratioCopy > v10)
      {
        width = self->mDefaultSize.width;
        height = v10 / ratioCopy;
      }
    }
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setAssetPath:(id)path
{
  if (self->mAssetPath != path)
  {
    [(MRImageProvider *)self unload];

    self->mAssetPath = [path copy];
  }
}

- (BOOL)endLiveUpdate
{
  BYTE1(self->mFlags) &= ~0x10u;
  if ((self->mFlags & 0x200000) != 0)
  {
    BYTE2(self->mFlags) &= ~0x20u;
    [(MRImageProvider *)self unload];
  }

  return 1;
}

- (void)_unloadIfNotUpdatingLive
{
  if ((self->mFlags & 0x1000) != 0)
  {
    BYTE2(self->mFlags) |= 0x20u;
    objc_sync_enter(self);
    self->mRequestedSize = CGSizeZero;
    BYTE2(self->mFlags) |= 2u;

    objc_sync_exit(self);
  }

  else
  {

    [(MRImageProvider *)self unload];
  }
}

- (MRLayerEffect)effectLayer
{
  objc_sync_enter(self);
  v3 = self->_effectLayer;
  objc_sync_exit(self);
  return v3;
}

- (void)setEffectLayer:(id)layer
{
  objc_sync_enter(self);
  self->_effectLayer = layer;

  objc_sync_exit(self);
}

- (void)loadForTime:(double)time inContext:(id)context withArguments:(id)arguments now:(BOOL)now
{
  if ((self->mFlags & 3) == 0)
  {
    LOBYTE(self->mFlags) |= 2u;
    if (self->mAssetPath)
    {
      nowCopy = now;
      v10 = objc_alloc_init(MRAssetPlayerOptions);
      [(MRAssetPlayerOptions *)v10 setWantsMonochromatic:(LOBYTE(self->mFlags) >> 6) & 1];
      [(MRAssetPlayerOptions *)v10 setWantsMipmap:(LOBYTE(self->mFlags) >> 5) & 1];
      if ([(MRAssetPlayerOptions *)v10 wantsMipmap])
      {
        v11 = 1;
      }

      else
      {
        v11 = (LOBYTE(self->mFlags) >> 4) & 1;
      }

      [(MRAssetPlayerOptions *)v10 setWantsPowerOfTwo:v11];
      [(MRAssetPlayerOptions *)v10 setResolutionIfEmbeddedAsset:self->mOriginalImageSize.width, self->mOriginalImageSize.height];
      thumbnailPolicy = [arguments thumbnailPolicy];
      v13 = !nowCopy;
      if (thumbnailPolicy != 1)
      {
        v13 = 0;
      }

      if (thumbnailPolicy)
      {
        v14 = v13;
      }

      else
      {
        v14 = 1;
      }

      [(MRAssetPlayerOptions *)v10 setThumbnailIsOK:v14];
      self->mSlidePlayer = [objc_msgSend(context "imageManager")];

      [(MRAssetPlayer *)self->mSlidePlayer setDelegate:self];
      objc_sync_enter(self);
      if (!self->mIsCleanedUp)
      {
        [(NSLock *)self->mPreloadOperationLock lock];
        if (!self->mPreloadOperation)
        {
          preloadQueue = [arguments preloadQueue];
          if (preloadQueue)
          {
            copyForPreloading = [arguments copyForPreloading];
            v17 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", self->mShowTime), @"time", context, @"context", objc_msgSend(context, "imageManager"), @"imageManager", copyForPreloading, @"renderArguments", self->mSlidePlayer, @"slidePlayer", 0}];
            v18 = [[NSInvocationOperation alloc] initWithTarget:self selector:"loadWithArguments:" object:v17];
            self->mPreloadOperation = v18;
            if (nowCopy)
            {
              v19 = 33;
            }

            else
            {
              v19 = 9;
            }

            [(NSInvocationOperation *)v18 setQualityOfService:v19];
            [v17 setObject:+[NSValue valueWithPointer:](NSValue forKey:{"valueWithPointer:", self->mPreloadOperation), @"preloadOperationPointer"}];
            [preloadQueue addOperation:self->mPreloadOperation];
          }
        }

        if (nowCopy)
        {
          v20 = 8;
        }

        else
        {
          v20 = 0;
        }

        [(NSInvocationOperation *)self->mPreloadOperation setQueuePriority:v20];
        [(NSLock *)self->mPreloadOperationLock unlock];
      }

      objc_sync_exit(self);
    }
  }
}

- (void)loadWithArguments:(id)arguments
{
  pthread_setname_np([[NSString stringWithFormat:?];
  v5 = [objc_msgSend(arguments objectForKey:{@"preloadOperationPointer", "pointerValue"}];
  if (self->mPreloadOperation == v5 && (self->mFlags & 1) == 0)
  {
    v6 = v5;
    v7 = [arguments objectForKey:@"renderArguments"];
    [objc_msgSend(v7 "renderer")];
    [objc_msgSend(arguments objectForKey:{@"slidePlayer", "loadForTime:", 0.0}];
    [(NSLock *)self->mPreloadOperationLock lock];
    mPreloadOperation = self->mPreloadOperation;
    if (mPreloadOperation == v6 && (self->mFlags & 1) == 0)
    {
      LOBYTE(self->mFlags) = self->mFlags & 0xFC | 1;
      BYTE1(self->mFlags) &= ~0x80u;

      self->mPreloadOperation = 0;
    }

    [(NSLock *)self->mPreloadOperationLock unlock];
    [objc_msgSend(v7 "renderer")];
  }

  pthread_setname_np("");
}

- (void)unload
{
  if ((self->mFlags & 3) != 0)
  {
    objc_sync_enter(self);
    [(MRImageProvider *)self cancelLoading];
    LOBYTE(self->mFlags) &= ~1u;
    mOriginalImage = self->mOriginalImage;
    if (mOriginalImage)
    {
      [(MRImage *)mOriginalImage releaseByUser];
      self->mOriginalImage = 0;
    }

    mSlidePlayer = self->mSlidePlayer;
    if (mSlidePlayer)
    {
      [(MRAssetPlayer *)mSlidePlayer releaseByUser];
      self->mSlidePlayer = 0;
    }

    v5 = CGSizeZero;
    self->mImageSize = CGSizeZero;
    self->mLastImageSize = v5;
    self->mRequestedSize = v5;
    BYTE2(self->mFlags) |= 2u;

    objc_sync_exit(self);
  }
}

- (void)cancelLoading
{
  [(NSLock *)self->mPreloadOperationLock lock];
  mPreloadOperation = self->mPreloadOperation;
  if (mPreloadOperation)
  {
    [(NSInvocationOperation *)mPreloadOperation cancel];

    self->mPreloadOperation = 0;
  }

  LOBYTE(self->mFlags) &= ~2u;
  mPreloadOperationLock = self->mPreloadOperationLock;

  [(NSLock *)mPreloadOperationLock unlock];
}

- (void)_computeImageSizeInContext:(id)context withArguments:(id)arguments
{
  p_mRequestedSize = &self->mRequestedSize;
  height = CGSizeZero.height;
  if (self->mRequestedSize.width == CGSizeZero.width && self->mRequestedSize.height == height)
  {
    v9 = self->mOriginalImageSize.height;
    v10 = 1.0;
    if (v9 > 0.0)
    {
      v10 = self->mOriginalImageSize.width / v9;
    }

    *&v9 = v10;
    [(MRImageProvider *)self imageSizeForAspectRatio:context, v9];
    self->mRequestedSize.width = v11;
    self->mRequestedSize.height = v12;
    if (v11 == 0.0)
    {
      p_mRequestedSize->width = v10 * v12;
    }

    else if (v12 == 0.0)
    {
      self->mRequestedSize.height = v11 / v10;
    }

    BYTE2(self->mFlags) |= 2u;
  }

  v13 = self->mImageSize.width == CGSizeZero.width && self->mImageSize.height == height;
  if (v13 || (self->mFlags & 0x1000) == 0 && ([arguments freezesSizeOfImageRequests] & 1) == 0)
  {
    self->mImageSize = *p_mRequestedSize;
    BYTE2(self->mFlags) &= ~2u;
  }
}

- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  if (self->mSlidePlayer || self->mAssetPath)
  {
    height = CGSizeZero.height;
    if (self->mOriginalImageSize.width == CGSizeZero.width && self->mOriginalImageSize.height == height)
    {
      [objc_msgSend(context "assetManager")];
      self->mOriginalImageSize.width = v11;
      self->mOriginalImageSize.height = v12;
    }

    mFlags = self->mFlags;
    mShowTime = self->mShowTime;
    mShowDuration = self->mShowDuration;
    v16 = mShowTime + -10.0;
    if (mShowDuration < 0.0)
    {
      mShowDuration = 1.0e10;
    }

    width = mShowTime + mShowDuration;
    if (v16 <= time && width > time)
    {
      if ((self->mFlags & 0x20000) != 0)
      {
        [(MRImageProvider *)self _computeImageSizeInContext:context withArguments:arguments];
      }

      mSlidePlayer = self->mSlidePlayer;
      if (mSlidePlayer)
      {
        width = self->mLastImageSize.width;
        v22 = self->mLastImageSize.height;
        if (width != CGSizeZero.width || v22 != height)
        {
          if (width != self->mImageSize.width || (width = self->mImageSize.height, v22 != width))
          {
            [(MRAssetPlayer *)mSlidePlayer releaseByUser];
            self->mSlidePlayer = 0;
          }
        }
      }

      if ((mFlags & 1) == 0)
      {
        v24 = self->mShowTime;
        if ((mFlags & 2) != 0)
        {
          if (v24 <= time)
          {
            [(NSLock *)self->mPreloadOperationLock lock];
            [(NSInvocationOperation *)self->mPreloadOperation setQueuePriority:8];
            [(NSLock *)self->mPreloadOperationLock unlock];
          }
        }

        else
        {
          [(MRImageProvider *)self loadForTime:context inContext:arguments withArguments:v24 <= time now:time, width];
        }
      }

      if (self->mShowTime <= time)
      {
        v26 = BYTE2(self->mFlags);
        BYTE2(self->mFlags) = v26 & 0xEF;
        return (v26 >> 4) & 1;
      }
    }

    else if ((self->mFlags & 3) != 0)
    {
      v19 = width + 2.0;
      if (v16 > time || v19 <= time)
      {
        [(MRImageProvider *)self unload];
      }
    }
  }

  LOBYTE(v25) = 0;
  return v25;
}

- (id)retainedByUserRenderedImageAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  mSlidePlayer = self->mSlidePlayer;
  if (!mSlidePlayer)
  {
    LOBYTE(self->mFlags) |= 1u;
    return 0;
  }

  v7 = time - self->mShowTime;
  if (v7 < 0.0 || ((mShowDuration = self->mShowDuration, mShowDuration >= 0.0) ? (v9 = v7 < mShowDuration) : (v9 = 1), !v9))
  {
    NSLog(@"Slide provider %@ called outside of its time window", a2, context, arguments, self);
    return 0;
  }

  [arguments displayLinkTimestamp];
  v11 = [(MRAssetPlayer *)mSlidePlayer retainedByUserImageAtTime:v7 displayLinkTimestamp:v10];
  if (v11)
  {
    v12 = v11;
    mOriginalImage = self->mOriginalImage;
    if (v12 == mOriginalImage)
    {
      [(MRImage *)v12 releaseByUser];
    }

    else
    {
      if (mOriginalImage)
      {
        [(MRImage *)mOriginalImage releaseByUser];
      }

      self->mOriginalImage = v12;
    }

    self->mLastImageSize = self->mImageSize;
  }

  v15 = self->mOriginalImage;

  return [(MRImage *)v15 retainByUser];
}

- (id)patchworkAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  v6 = [(MRImageProvider *)self retainedByUserRenderedImageAtTime:context inContext:arguments withArguments:time];
  v7 = 2.0 / (self->mDefaultSize.width / self->mDefaultSize.height);
  v8 = [[NSDictionary alloc] initWithObjectsAndKeys:{objc_msgSend(v6, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", -1.0, v7 * -0.5, 2.0, v7), @"rectangle", 0}];
  v9 = [NSArray arrayWithObject:v8];

  [v6 releaseByUser];
  return v9;
}

- (void)imageIsAvailableFromAssetPlayer:(id)player
{
  BYTE2(self->mFlags) |= 0x10u;
  effectLayer = [(MRImageProvider *)self effectLayer];
  if (effectLayer)
  {
    v4 = effectLayer;
    if ([(MRLayer *)effectLayer isActivated])
    {

      [(MRLayerEffect *)v4 _requestRendering];
    }
  }
}

- (CGSize)defaultSize
{
  width = self->mDefaultSize.width;
  height = self->mDefaultSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)requestedSize
{
  width = self->mRequestedSize.width;
  height = self->mRequestedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)originalImageSize
{
  width = self->mOriginalImageSize.width;
  height = self->mOriginalImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end