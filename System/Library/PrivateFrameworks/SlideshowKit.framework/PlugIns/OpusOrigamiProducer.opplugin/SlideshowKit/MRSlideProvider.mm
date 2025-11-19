@interface MRSlideProvider
- (BOOL)canPlay;
- (BOOL)endLiveUpdate;
- (BOOL)isOpaque;
- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (BOOL)updateStuffWithAssetManager:(id)a3;
- (CGPoint)center;
- (CGSize)defaultSize;
- (CGSize)framedImageSizeAtIndex:(unsigned int)a3 aspectRatio:(float)a4;
- (CGSize)requestedSize;
- (CGSize)sizeFactor;
- (CGSize)unframedImageSizeForAspectRatio:(float)a3 frameID:(id)a4 andFrameAttributes:(id)a5 atIndex:(unsigned int)a6 framedImageSize:(CGSize *)a7;
- (MRSlideProvider)initWithEffectLayer:(id)a3;
- (id)currentSlideInfo;
- (id)patchworkAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (id)retainedByUserRenderedImageAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (void)_computeImageSizeInContext:(id)a3 withArguments:(id)a4;
- (void)_unloadIfNotUpdatingLive;
- (void)applyKenBurnsAtTime:(double)a3 withTargetSize:(CGSize)a4 kenBurnsType:(int)a5 translation:(CGPoint *)a6 scale:(double *)a7 rotation:(double *)a8;
- (void)cancelLoading;
- (void)cleanup;
- (void)dealloc;
- (void)imageIsAvailableFromAssetPlayer:(id)a3;
- (void)loadForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5 now:(BOOL)a6;
- (void)loadWithArguments:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAssetPath:(id)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setCenterAnimationPath:(id)a3;
- (void)setDefaultSize:(CGSize)a3;
- (void)setEffectAttributes:(id)a3;
- (void)setImageSizeScript:(id)a3;
- (void)setIsMuted:(BOOL)a3;
- (void)setIsPlaying:(BOOL)a3;
- (void)setIsStill:(BOOL)a3;
- (void)setNeedsToUpdateLayout:(BOOL)a3;
- (void)setRotation:(double)a3;
- (void)setRotationAnimationPath:(id)a3;
- (void)setScale:(double)a3;
- (void)setScaleAnimationPath:(id)a3;
- (void)setShowDuration:(double)a3;
- (void)setSlide:(id)a3;
- (void)setSlideIsReadonly:(BOOL)a3;
- (void)setTime:(double)a3;
- (void)setWantsMipmap:(BOOL)a3;
- (void)setWantsMonochromatic:(BOOL)a3;
- (void)unload;
- (void)updateShowTimeAndDurationWithPlugTiming:(id)a3 andAttributes:(id)a4;
@end

@implementation MRSlideProvider

- (MRSlideProvider)initWithEffectLayer:(id)a3
{
  v14.receiver = self;
  v14.super_class = MRSlideProvider;
  v4 = [(MRSlideProvider *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->mEffectLayer = a3;
    v4->mKenBurnsType = 1;
    v4->mLastTime = -1.0;
    __asm { FMOV            V0.2D, #1.0 }

    v4->mSizeFactor = _Q0;
    v4->mDefaultSize = CGSizeZero;
    v4->mOriginalImageAspectRatio = 1.0;
    v11 = objc_alloc_init(NSLock);
    v5->mPreloadOperationLock = v11;
    [(NSLock *)v11 setName:@"MRSlideProvider.preloadOperationLock"];
    v5->mSlideIndex = 0x7FFFFFFFFFFFFFFFLL;
    v5->_scale = 1.0;
    v5->_rotationAnimationPathTriggerTime = -1.0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v5->_centerAnimationPathTriggerTime = _Q0;
  }

  return v5;
}

- (void)dealloc
{
  [(MRSlideProvider *)self cleanup];

  self->mPreloadOperationLock = 0;
  v3.receiver = self;
  v3.super_class = MRSlideProvider;
  [(MRSlideProvider *)&v3 dealloc];
}

- (void)cleanup
{
  objc_sync_enter(self);
  if (self->mEffectLayer)
  {
    [(MRSlideProvider *)self setSlide:0];
    [(MRSlideProvider *)self setAssetPath:0];
    self->mEffectLayer = 0;

    self->mEffectAttributes = 0;
    self->mImageSizeScript = 0;

    self->mShowTimeScript = 0;
  }

  objc_sync_exit(self);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"asset.path", a4, a5, a6}])
  {
    v8 = 2;
LABEL_6:
    BYTE1(self->mFlags) |= v8;
    goto LABEL_7;
  }

  if (([a3 isEqualToString:@"startTime"] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"duration"))
  {
    v8 = 1;
    goto LABEL_6;
  }

LABEL_7:
  if ([a3 isEqualToString:@"frameID"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"frameAttributes"))
  {
    v9 = 64;
LABEL_17:
    BYTE2(self->mFlags) |= v9;
    return;
  }

  if ([a3 isEqualToString:@"animationPaths"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"kenBurnsType") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"center") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"scale") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"rotation") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"filters"))
  {
    v9 = 0x80;
    goto LABEL_17;
  }

  if ([a3 isEqualToString:@"builtVolume"])
  {
    v9 = 4;
    goto LABEL_17;
  }
}

- (void)setDefaultSize:(CGSize)a3
{
  if (a3.width != self->mDefaultSize.width || a3.height != self->mDefaultSize.height)
  {
    self->mDefaultSize = a3;
    [(MRSlideProvider *)self _unloadIfNotUpdatingLive];
  }
}

- (void)setWantsMonochromatic:(BOOL)a3
{
  mFlags = self->mFlags;
  if (((((mFlags & 0x40) == 0) ^ a3) & 1) == 0)
  {
    v4 = mFlags & 0xBF;
    if (a3)
    {
      v5 = 64;
    }

    else
    {
      v5 = 0;
    }

    LOBYTE(self->mFlags) = v4 | v5;
    [(MRSlideProvider *)self unload];
  }
}

- (void)setWantsMipmap:(BOOL)a3
{
  mFlags = self->mFlags;
  if (((((mFlags & 0x20) == 0) ^ a3) & 1) == 0)
  {
    v4 = mFlags & 0xDF;
    if (a3)
    {
      v5 = 32;
    }

    else
    {
      v5 = 0;
    }

    LOBYTE(self->mFlags) = v4 | v5;
    [(MRSlideProvider *)self unload];
  }
}

- (void)setImageSizeScript:(id)a3
{
  if (self->mImageSizeScript != a3 && ([a3 isEqualToString:?] & 1) == 0)
  {

    self->mImageSizeScript = [a3 copy];

    [(MRSlideProvider *)self _unloadIfNotUpdatingLive];
  }
}

- (void)setEffectAttributes:(id)a3
{
  mEffectAttributes = self->mEffectAttributes;
  if (mEffectAttributes != a3)
  {

    self->mEffectAttributes = a3;

    [(MRSlideProvider *)self _unloadIfNotUpdatingLive];
  }
}

- (void)setIsStill:(BOOL)a3
{
  mFlags = self->mFlags;
  if (((((mFlags & 8) == 0) ^ a3) & 1) == 0)
  {
    v4 = mFlags & 0xF7;
    if (a3)
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    LOBYTE(self->mFlags) = v4 | v5;
    [(MRSlideProvider *)self unload];
  }
}

- (void)setSlideIsReadonly:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  BYTE1(self->mFlags) = BYTE1(self->mFlags) & 0xBF | v3;
}

- (void)setIsMuted:(BOOL)a3
{
  if (a3)
  {
    v4 = 32;
  }

  else
  {
    v4 = 0;
  }

  BYTE1(self->mFlags) = BYTE1(self->mFlags) & 0xDF | v4;
  mSlidePlayer = self->mSlidePlayer;
  if (mSlidePlayer)
  {
    v6 = a3;
    if ([(MRAssetPlayer *)mSlidePlayer conformsToProtocol:&OBJC_PROTOCOL___MRAudioPlayer])
    {
      v7 = self->mSlidePlayer;

      [(MRAssetPlayer *)v7 setIsMuted:v6];
    }
  }
}

- (BOOL)canPlay
{
  if ((self->mFlags & 4) != 0)
  {
    LOBYTE(mSlideLayer) = 1;
  }

  else
  {
    mSlideLayer = self->mSlideLayer;
    if (mSlideLayer)
    {
      LOBYTE(mSlideLayer) = [(MRLayer *)mSlideLayer hasSomethingToRender];
    }
  }

  return mSlideLayer;
}

- (void)setNeedsToUpdateLayout:(BOOL)a3
{
  if (a3 && [(MCSlide *)self->_slide countOfLayouts]>= 2)
  {
    BYTE1(self->mFlags) |= 2u;
  }
}

- (CGSize)framedImageSizeAtIndex:(unsigned int)a3 aspectRatio:(float)a4
{
  width = self->mDefaultSize.width;
  height = self->mDefaultSize.height;
  if (self->mImageSizeScript)
  {
    v9 = [NSDictionary alloc];
    *&v10 = width;
    v11 = [NSNumber numberWithFloat:v10];
    *&v12 = height;
    v13 = [NSNumber numberWithFloat:v12];
    LODWORD(v14) = 1.0;
    v15 = [NSNumber numberWithFloat:v14];
    *&v16 = a3;
    v17 = [NSNumber numberWithFloat:v16];
    *&v18 = a4;
    v19 = [v9 initWithObjectsAndKeys:{v11, @"layerWidth", v13, @"layerHeight", v15, @"numOfImages", v17, @"indexOfImage", +[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v18), @"imageAspectRatio", 0}];
    v20 = [MRUtilities executeScript:self->mImageSizeScript withHeader:v19 andAttributes:self->mEffectAttributes];

    if (v20)
    {
      v21 = CGSizeFromString(v20);
      width = v21.width;
      height = v21.height;
    }
  }

  v22 = width;
  v23 = height;
  result.height = v23;
  result.width = v22;
  return result;
}

- (CGSize)unframedImageSizeForAspectRatio:(float)a3 frameID:(id)a4 andFrameAttributes:(id)a5 atIndex:(unsigned int)a6 framedImageSize:(CGSize *)a7
{
  [(MRSlideProvider *)self framedImageSizeAtIndex:*&a6 aspectRatio:?];
  width = v11;
  height = v12;
  if (a7)
  {
    a7->width = v11;
    a7->height = v12;
  }

  v15 = [+[MRFrameManager sharedManager](MRFrameManager "sharedManager")];
  if (v15)
  {
    v16 = v15;
    v17 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", width), @"layerWidth", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", height), @"layerHeight", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", a3), @"imageAspectRatio", 0}];
    v18 = [MRUtilities executeScript:v16 withHeader:v17 andAttributes:a5];

    if (v18)
    {
      v19 = CGSizeFromString(v18);
      if (v19.width >= 0.0)
      {
        width = v19.width;
      }

      else
      {
        width = 0.0;
      }

      if (v19.height >= 0.0)
      {
        height = v19.height;
      }

      else
      {
        height = 0.0;
      }
    }
  }

  v20 = width;
  v21 = height;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)setShowDuration:(double)a3
{
  self->_showDuration = a3;
  audioDucker = self->_audioDucker;
  if (audioDucker)
  {
    [(MRAudioDucker *)audioDucker setParentDuration:?];
  }
}

- (void)updateShowTimeAndDurationWithPlugTiming:(id)a3 andAttributes:(id)a4
{
  [a3 phaseInDuration];
  v8 = v7;
  [a3 loopDuration];
  v10 = v9;
  [a3 phaseOutDuration];
  v12 = v11;
  if (self->mShowTimeScript && (v13 = [NSDictionary alloc], v14 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v8), v15 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v10), v16 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v12), [a3 fullDuration], v17 = objc_msgSend(v13, "initWithObjectsAndKeys:", v14, @"phaseInDuration", v15, @"mainDuration", v16, @"phaseOutDuration", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:"), @"fullDuration", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", -[MCSlide index](self->_slide, "index")), @"indexOfImage", 0), v18 = +[MRUtilities executeScript:withHeader:andAttributes:](MRUtilities, "executeScript:withHeader:andAttributes:", self->mShowTimeScript, v17, a4), v17, v18))
  {
    v19 = CGSizeFromString(v18);
    self->_showTime = v19.width;
    height = v8 + v10 + v12 - v19.width;
    if (v19.height >= 0.0)
    {
      height = v19.height;
    }
  }

  else
  {
    self->_showTime = 0.0;
    height = v8 + v10 + v12;
  }

  self->_showDuration = height;
  audioDucker = self->_audioDucker;
  if (audioDucker)
  {

    [(MRAudioDucker *)audioDucker setParentDuration:?];
  }
}

- (void)setSlide:(id)a3
{
  if (self->_slide != a3)
  {
    [(MRSlideProvider *)self unload];
    slide = self->_slide;
    if (slide)
    {
      if ((self->mFlags & 0x4000) == 0)
      {
        v6 = [(MCObject *)slide isSnapshot];
        slide = self->_slide;
        if ((v6 & 1) == 0)
        {
          [(MCSlide *)slide removeObserver:self forKeyPath:@"startTime"];
          [(MCSlide *)self->_slide removeObserver:self forKeyPath:@"duration"];
          [(MCSlide *)self->_slide removeObserver:self forKeyPath:@"frameID"];
          [(MCSlide *)self->_slide removeObserver:self forKeyPath:@"frameAttributes"];
          [(MCSlide *)self->_slide removeObserver:self forKeyPath:@"index"];
          [(MCSlide *)self->_slide removeObserver:self forKeyPath:@"kenBurnsType"];
          [(MCSlide *)self->_slide removeObserver:self forKeyPath:@"animationPaths"];
          [(MCSlide *)self->_slide removeObserver:self forKeyPath:@"center"];
          [(MCSlide *)self->_slide removeObserver:self forKeyPath:@"scale"];
          [(MCSlide *)self->_slide removeObserver:self forKeyPath:@"rotation"];
          [(MCSlide *)self->_slide removeObserver:self forKeyPath:@"asset.path"];
          [(MCSlide *)self->_slide removeObserver:self forKeyPath:@"filters"];
          [(MCSlide *)self->_slide removeObserver:self forKeyPath:@"builtVolume"];
          slide = self->_slide;
        }
      }

      self->_slide = 0;
    }

    if (a3)
    {
      v7 = a3;
      self->_slide = v7;
      if ((self->mFlags & 0x4000) == 0 && ![(MCObject *)v7 isSnapshot])
      {
        [(MCSlide *)self->_slide addObserver:self forKeyPath:@"startTime" options:0 context:0];
        [(MCSlide *)self->_slide addObserver:self forKeyPath:@"duration" options:0 context:0];
        [(MCSlide *)self->_slide addObserver:self forKeyPath:@"frameID" options:0 context:0];
        [(MCSlide *)self->_slide addObserver:self forKeyPath:@"frameAttributes" options:0 context:0];
        [(MCSlide *)self->_slide addObserver:self forKeyPath:@"index" options:0 context:0];
        [(MCSlide *)self->_slide addObserver:self forKeyPath:@"animationPaths" options:0 context:0];
        [(MCSlide *)self->_slide addObserver:self forKeyPath:@"center" options:0 context:0];
        [(MCSlide *)self->_slide addObserver:self forKeyPath:@"scale" options:0 context:0];
        [(MCSlide *)self->_slide addObserver:self forKeyPath:@"rotation" options:0 context:0];
        [(MCSlide *)self->_slide addObserver:self forKeyPath:@"kenBurnsType" options:0 context:0];
        [(MCSlide *)self->_slide addObserver:self forKeyPath:@"asset.path" options:0 context:0];
        [(MCSlide *)self->_slide addObserver:self forKeyPath:@"filters" options:0 context:0];
        [(MCSlide *)self->_slide addObserver:self forKeyPath:@"builtVolume" options:0 context:0];
      }
    }

    BYTE1(self->mFlags) |= 2u;
    BYTE2(self->mFlags) |= 0x40u;
  }
}

- (void)setAssetPath:(id)a3
{
  if (self->_assetPath != a3)
  {
    [(MRSlideProvider *)self unload];

    self->_assetPath = a3;
    BYTE1(self->mFlags) |= 2u;
    BYTE2(self->mFlags) |= 0x40u;
  }
}

- (void)setCenter:(CGPoint)a3
{
  self->_center = a3;
  if (self->_centerAnimationPath)
  {
    [(MRSlideProvider *)self setCenterAnimationPath:0];
  }

  BYTE1(self->mFlags) |= 8u;
}

- (void)setScale:(double)a3
{
  self->_scale = a3;
  if (self->_scaleAnimationPath)
  {
    [(MRSlideProvider *)self setScaleAnimationPath:0];
  }

  BYTE1(self->mFlags) |= 8u;
}

- (void)setRotation:(double)a3
{
  self->_rotation = a3;
  if (self->_rotationAnimationPath)
  {
    [(MRSlideProvider *)self setRotationAnimationPath:0];
  }

  BYTE1(self->mFlags) |= 8u;
}

- (void)setCenterAnimationPath:(id)a3
{
  centerAnimationPath = self->_centerAnimationPath;
  if (centerAnimationPath != a3)
  {

    self->_centerAnimationPath = a3;
    self->_centerAnimationPathTriggerTime = -1.0;
  }
}

- (void)setScaleAnimationPath:(id)a3
{
  scaleAnimationPath = self->_scaleAnimationPath;
  if (scaleAnimationPath != a3)
  {

    self->_scaleAnimationPath = a3;
    self->_scaleAnimationPathTriggerTime = -1.0;
  }
}

- (void)setRotationAnimationPath:(id)a3
{
  rotationAnimationPath = self->_rotationAnimationPath;
  if (rotationAnimationPath != a3)
  {

    self->_rotationAnimationPath = a3;
    self->_rotationAnimationPathTriggerTime = -1.0;
  }
}

- (void)setIsPlaying:(BOOL)a3
{
  mFlags = self->mFlags;
  if ((mFlags & 8) == 0)
  {
    v4 = a3;
    v6 = a3 ? 0x80 : 0;
    BYTE1(self->mFlags) = v6 & 0x80 | BYTE1(self->mFlags) & 0x7F;
    if (mFlags)
    {
      mSlidePlayer = self->mSlidePlayer;
      if (mSlidePlayer)
      {
        if ([(MRAssetPlayer *)mSlidePlayer conformsToProtocol:&OBJC_PROTOCOL___MRAssetPlayerTimeSupport])
        {
          v8 = self->mSlidePlayer;

          [(MRAssetPlayer *)v8 setIsPlaying:v4];
        }
      }

      else
      {
        mSlideLayer = self->mSlideLayer;
        if (mSlideLayer)
        {
          v10 = [(MRLayer *)mSlideLayer clock];
          if (v4)
          {

            [(MRLayerClock *)v10 resumeOnNextUpdate];
          }

          else
          {

            [(MRLayerClock *)v10 pauseOnNextUpdate];
          }
        }
      }
    }
  }
}

- (void)setTime:(double)a3
{
  v4 = a3 - self->_showTime;
  mSlidePlayer = self->mSlidePlayer;
  if (mSlidePlayer)
  {
    if ([(MRAssetPlayer *)mSlidePlayer conformsToProtocol:&OBJC_PROTOCOL___MRAssetPlayerTimeSupport])
    {
      [(MRAssetPlayer *)self->mSlidePlayer setTime:v4];
    }
  }

  else
  {
    mSlideLayer = self->mSlideLayer;
    if (mSlideLayer)
    {
      [(MRLayerClock *)[(MRLayer *)mSlideLayer clock] setExternalTime:v4];
    }

    else
    {
      self->_timeToPreloadFor = v4;
    }
  }

  self->mLastTime = -1.0e15;
}

- (BOOL)endLiveUpdate
{
  BYTE1(self->mFlags) &= ~0x10u;
  if ((self->mFlags & 0x200000) != 0)
  {
    BYTE2(self->mFlags) &= ~0x20u;
    [(MRSlideProvider *)self unload];
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
    mOutputImage = self->mOutputImage;
    if (mOutputImage)
    {
      [(MRImage *)mOutputImage releaseByUser];
      self->mOutputImage = 0;
    }

    BYTE2(self->mFlags) |= 2u;

    objc_sync_exit(self);
  }

  else
  {

    [(MRSlideProvider *)self unload];
  }
}

- (id)currentSlideInfo
{
  v3 = objc_alloc_init(MRSlideInfo);
  [(MRSlideInfo *)v3 setAssetPath:self->_assetPath];
  if (self->mOutputImage)
  {
    [(MRImage *)self->mOriginalImage aspectRatio];
    [(MRSlideInfo *)v3 setAspectRatio:?];
    mSlidePlayer = self->mSlidePlayer;
    if (mSlidePlayer)
    {
      v5 = [(MRAssetPlayer *)mSlidePlayer conformsToProtocol:&OBJC_PROTOCOL___MRAssetPlayerTimeSupport];
      timeToPreloadFor = 0.0;
      if (v5)
      {
        [(MRAssetPlayer *)self->mSlidePlayer time];
      }
    }

    else
    {
      mSlideLayer = self->mSlideLayer;
      if (mSlideLayer)
      {
        [(MRLayerClock *)[(MRLayer *)mSlideLayer clock] externalTime];
      }

      else
      {
        timeToPreloadFor = self->_timeToPreloadFor;
      }
    }

    [(MRSlideInfo *)v3 setTime:timeToPreloadFor];
    [(MRImage *)self->mOutputImage centerX];
    v9 = v8;
    [(MRImage *)self->mOutputImage centerY];
    [(MRSlideInfo *)v3 setCenter:v9, v10];
    [(MRImage *)self->mOutputImage scale];
    [(MRSlideInfo *)v3 setScale:?];
    [(MRImage *)self->mOutputImage rotationAngle];
    [(MRSlideInfo *)v3 setRotation:?];
  }

  else
  {
    [(MRSlideInfo *)v3 setAspectRatio:self->mOriginalImageAspectRatio];
  }

  [(MRSlideInfo *)v3 setPlayer:self->mSlidePlayer];

  return v3;
}

- (void)loadForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5 now:(BOOL)a6
{
  if ((self->mFlags & 3) == 0)
  {
    LOBYTE(self->mFlags) |= 2u;
    self->_timeToPreloadFor = a3;
    if (self->_assetPath)
    {
      v8 = a6;
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
      -[MRAssetPlayerOptions setIsForExport:](v10, "setIsForExport:", [objc_msgSend(a5 "renderer")] == 1);
      if ((self->mFlags & 8) != 0)
      {
        mStillTime = self->mStillTime;
        if (mStillTime >= 0.0)
        {
          v16 = mStillTime;
          slideStartTime = self->_slideStartTime;
          v18 = slideStartTime < 0.0;
          v19 = slideStartTime + v16;
          if (!v18)
          {
            v16 = v19;
          }
        }

        else
        {
          v16 = 1000000000.0;
        }

        [(MRAssetPlayerOptions *)v10 setStillTime:v16];
      }

      v20 = [a5 thumbnailPolicy];
      v21 = !v8;
      if (v20 != 1)
      {
        v21 = 0;
      }

      if (v20)
      {
        v22 = v21;
      }

      else
      {
        v22 = 1;
      }

      [(MRAssetPlayerOptions *)v10 setThumbnailIsOK:v22];
      [(MRAssetPlayerOptions *)v10 setPlayerHint:self->_playerHint];
      v23 = [(MRLayer *)self->mEffectLayer plugAsSerial];
      v24 = [(MRLayer *)self->mEffectLayer superlayer];
      if (v23 || (v23 = [[(MRLayer *)self->mEffectLayer superlayer] plugAsSerial], v24 = [[(MRLayer *)self->mEffectLayer superlayer] superlayer], v23))
      {
        v25 = v24;
        v26 = [(MCPlugSerial *)v23 index];
        if (!v26)
        {
          v26 = [-[MRLayer sublayers](v25 "sublayers")];
        }

        [-[MCContainer plugAtIndex:](-[MCPlug container](-[MRLayer plug](v25 "plug")];
        [(MRAssetPlayerOptions *)v10 setIntroDuration:?];
        [(MCPlugSerial *)v23 transitionDuration];
        [(MRAssetPlayerOptions *)v10 setOutroDuration:?];
        [(MCPlug *)v23 fullDuration];
        v28 = v27;
        [(MRAssetPlayerOptions *)v10 introDuration];
        v30 = v28 - v29;
        [(MRAssetPlayerOptions *)v10 outroDuration];
        [(MRAssetPlayerOptions *)v10 setMainDuration:v30 - v31];
      }

      [(MRAssetPlayerOptions *)v10 introDuration];
      if (v32 == 0.0)
      {
        [(MRAssetPlayerOptions *)v10 setIntroDuration:0.5];
        [(MRAssetPlayerOptions *)v10 mainDuration];
        [(MRAssetPlayerOptions *)v10 setMainDuration:v33 + -0.5];
      }

      [(MRAssetPlayerOptions *)v10 outroDuration];
      if (v34 == 0.0)
      {
        [(MRAssetPlayerOptions *)v10 setOutroDuration:0.5];
        [(MRAssetPlayerOptions *)v10 mainDuration];
        [(MRAssetPlayerOptions *)v10 setMainDuration:v35 + -0.5];
      }

      showDuration = self->_showDuration;
      [(MRAssetPlayerOptions *)v10 introDuration];
      v38 = v37;
      [(MRAssetPlayerOptions *)v10 mainDuration];
      v40 = v38 + v39;
      [(MRAssetPlayerOptions *)v10 outroDuration];
      if (showDuration < v40 + v41)
      {
        v42 = self->_showDuration;
        [(MRAssetPlayerOptions *)v10 introDuration];
        v44 = v42 - v43;
        [(MRAssetPlayerOptions *)v10 outroDuration];
        [(MRAssetPlayerOptions *)v10 setMainDuration:v44 - v45];
      }

      self->mSlidePlayer = [objc_msgSend(a4 "imageManager")];

      [(MRAssetPlayer *)self->mSlidePlayer setDelegate:self];
      BYTE2(self->mFlags) |= 0xCu;
      objc_sync_enter(self);
      if (self->mEffectLayer)
      {
        [(NSLock *)self->mPreloadOperationLock lock];
        if (!self->mPreloadOperation)
        {
          v46 = [a5 preloadQueue];
          if (v46)
          {
            v47 = [a5 copyForPreloading];
            v48 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{a4, @"context", objc_msgSend(a4, "imageManager"), @"imageManager", v47, @"renderArguments", self->mSlidePlayer, @"slidePlayer", 0}];
            v49 = [[NSInvocationOperation alloc] initWithTarget:self selector:"loadWithArguments:" object:v48];
            self->mPreloadOperation = v49;
            if (v8)
            {
              v50 = 33;
            }

            else
            {
              v50 = 9;
            }

            [(NSInvocationOperation *)v49 setQualityOfService:v50];
            [v48 setObject:+[NSValue valueWithPointer:](NSValue forKey:{"valueWithPointer:", self->mPreloadOperation), @"preloadOperationPointer"}];
            [v46 addOperation:self->mPreloadOperation];
          }
        }

        if (v8)
        {
          v51 = 8;
        }

        else
        {
          v51 = 0;
        }

        [(NSInvocationOperation *)self->mPreloadOperation setQueuePriority:v51];
        [(NSLock *)self->mPreloadOperationLock unlock];
      }

      objc_sync_exit(self);
    }

    else if ([(MCSlide *)self->_slide plug:a4])
    {
      LOBYTE(self->mFlags) |= 1u;
      v12 = +[MRLayer layerWithPlug:andParameters:inSuperlayer:](MRLayer, "layerWithPlug:andParameters:inSuperlayer:", -[MCSlide plug](self->_slide, "plug"), [objc_msgSend(a5 "renderer")], 0);
      self->mSlideLayer = v12;
      [(MRLayer *)v12 setPixelSize:self->mImageSize.width, self->mImageSize.height];
      if (![(MRLayer *)self->mSlideLayer isPreactivated])
      {
        [(MRLayer *)self->mSlideLayer preactivate];
        [(MRLayerClock *)[(MRLayer *)self->mSlideLayer clock] setContainerTime:self->_timeToPreloadFor];
        v13 = SBYTE1(self->mFlags);
        v14 = [(MRLayer *)self->mSlideLayer clock];
        if (v13 < 0)
        {

          [(MRLayerClock *)v14 resumeOnNextUpdate];
        }

        else
        {

          [(MRLayerClock *)v14 pauseOnNextUpdate];
        }
      }
    }
  }
}

- (void)loadWithArguments:(id)a3
{
  pthread_setname_np([[NSString stringWithFormat:?];
  v5 = [objc_msgSend(a3 objectForKey:{@"preloadOperationPointer", "pointerValue"}];
  if (self->mPreloadOperation == v5 && (self->mFlags & 1) == 0)
  {
    v6 = v5;
    v7 = [a3 objectForKey:@"renderArguments"];
    [objc_msgSend(v7 "renderer")];
    [objc_msgSend(a3 objectForKey:{@"slidePlayer", "loadForTime:", self->_timeToPreloadFor}];
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
    [(MRSlideProvider *)self cancelLoading];
    LOBYTE(self->mFlags) &= ~1u;
    HIBYTE(self->mFlags) &= ~0x80u;
    mOriginalImage = self->mOriginalImage;
    if (mOriginalImage)
    {
      [(MRImage *)mOriginalImage releaseByUser];
      self->mOriginalImage = 0;
    }

    mOutputImage = self->mOutputImage;
    if (mOutputImage)
    {
      [(MRImage *)mOutputImage releaseByUser];
      self->mOutputImage = 0;
    }

    mFrame = self->mFrame;
    if (mFrame)
    {
      [(MRFrame *)mFrame releaseBySlideProvider:self];
      self->mFrame = 0;
    }

    BYTE2(self->mFlags) |= 1u;
    mSlidePlayer = self->mSlidePlayer;
    if (mSlidePlayer)
    {
      [(MRAssetPlayer *)mSlidePlayer releaseByUser];
      self->mSlidePlayer = 0;
    }

    if (self->_audioDucker)
    {
      [(MRLayerEffect *)self->mEffectLayer _removeAudioDucker:?];

      self->_audioDucker = 0;
    }

    mSlideLayer = self->mSlideLayer;
    if (mSlideLayer)
    {
      if ([(MRLayer *)mSlideLayer isActivated])
      {
        [(MRLayer *)self->mSlideLayer deactivate];
      }

      if ([(MRLayer *)self->mSlideLayer isPreactivated])
      {
        [(MRLayer *)self->mSlideLayer depreactivate:0];
      }

      v8 = self->mSlideLayer;
      if (v8)
      {
        [(MRLayer *)v8 cleanup];

        self->mSlideLayer = 0;
      }
    }

    v9 = CGSizeZero;
    self->mImageSize = CGSizeZero;
    self->mLastImageSize = v9;
    self->mRequestedSize = v9;
    BYTE2(self->mFlags) |= 2u;
    self->_timeToPreloadFor = 0.0;

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

- (BOOL)isOpaque
{
  v3 = [(MRImage *)self->mOriginalImage isOpaque];
  if (v3)
  {
    LOBYTE(v3) = self->mKenBurnsType == 1;
  }

  return v3;
}

- (void)_computeImageSizeInContext:(id)a3 withArguments:(id)a4
{
  p_mRequestedSize = &self->mRequestedSize;
  height = CGSizeZero.height;
  if (self->mRequestedSize.width == CGSizeZero.width && self->mRequestedSize.height == height)
  {
    mOriginalImageAspectRatio = self->mOriginalImageAspectRatio;
    v10 = [(MCSlide *)self->_slide frameID];
    v11 = [(NSDictionary *)[(MCSlide *)self->_slide frameAttributes] objectForKey:@"specificAttributes"];
    *&v12 = mOriginalImageAspectRatio;
    [(MRSlideProvider *)self unframedImageSizeForAspectRatio:v10 frameID:v11 andFrameAttributes:0 atIndex:0 framedImageSize:v12];
    self->mRequestedSize.width = v13;
    self->mRequestedSize.height = v14;
    self->mSlideIndex = [(MCSlide *)self->_slide index];
    width = self->mRequestedSize.width;
    v16 = self->mRequestedSize.height;
    if (width == 0.0)
    {
      self->mRequestedSize.width = v16 * self->mOriginalImageAspectRatio;
    }

    else if (v16 == 0.0)
    {
      self->mRequestedSize.height = width / self->mOriginalImageAspectRatio;
    }

    BYTE2(self->mFlags) |= 2u;
  }

  p_mImageSize = &self->mImageSize;
  v18 = self->mImageSize.width == CGSizeZero.width && self->mImageSize.height == height;
  if (v18 || (self->mFlags & 0x1000) == 0 && ([a4 freezesSizeOfImageRequests] & 1) == 0)
  {
    *p_mImageSize = *p_mRequestedSize;
    if (![(MCSlide *)self->_slide countOfAnimationPaths])
    {
      goto LABEL_28;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = [-[MCSlide animationPathForKey:](self->_slide animationPathForKey:{@"scale", 0), "keyframes"}];
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v20)
    {
      goto LABEL_28;
    }

    v21 = v20;
    v22 = *v34;
    v23 = 0.0;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v33 + 1) + 8 * i);
        [v25 value];
        if (v26 > v23)
        {
          [v25 value];
          v23 = v27;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v21);
    if (v23 == 0.0)
    {
LABEL_28:
      [(MCSlide *)self->_slide scale];
      v23 = v28;
    }

    if (v23 > 0.0)
    {
      *p_mImageSize = vmulq_n_f64(*p_mImageSize, v23);
    }

    mKenBurnsType = self->mKenBurnsType;
    if (mKenBurnsType <= 1)
    {
      if (!mKenBurnsType)
      {
        MRFitHeightToAspectRatio();
        goto LABEL_42;
      }

      if (mKenBurnsType == 1)
      {
        v30 = self->mOriginalImageAspectRatio;
LABEL_38:
        v31 = MRFitOutToAspectRatio(self->mImageSize.width, self->mImageSize.height, v30);
LABEL_42:
        self->mImageSize.width = v31;
        self->mImageSize.height = v32;
      }

LABEL_43:
      BYTE2(self->mFlags) &= ~2u;
      return;
    }

    if (mKenBurnsType == 2)
    {
      v30 = self->mOriginalImageAspectRatio;
    }

    else
    {
      if (mKenBurnsType != 3)
      {
        goto LABEL_43;
      }

      v30 = self->mOriginalImageAspectRatio;
      if (self->mRequestedSize.width >= self->mRequestedSize.height != v30 < 1.0)
      {
        goto LABEL_38;
      }
    }

    v31 = MRFitInToAspectRatio(self->mImageSize.width, self->mImageSize.height, v30);
    goto LABEL_42;
  }
}

- (BOOL)updateStuffWithAssetManager:(id)a3
{
  v5 = atomic_fetch_and(&self->mFlags + 1, 0xFDu);
  v6 = v5 & 2 | atomic_fetch_and(&self->mFlags + 2, 0xBFu) & 0x40;
  v7 = (atomic_fetch_and(&self->mFlags + 2, 0x7Fu) & 0x80u) != 0;
  v8 = atomic_fetch_and(&self->mFlags + 1, 0xFEu);
  v9 = v6 != 0;
  v10 = (v6 != 0) | v7 | v8;
  v11 = atomic_fetch_and(&self->mFlags + 2, 0xFEu) & 1;
  if (!((v6 != 0) | (v7 | v8) & 1) && !v11)
  {
    return v10 & 1;
  }

  objc_sync_enter(self);
  if (((v9 | (v7 | v8)) & 1) == 0)
  {
LABEL_48:
    if (!v11)
    {
      goto LABEL_64;
    }

LABEL_57:
    v32 = [(MCSlide *)self->_slide frameID];
    mFrame = self->mFrame;
    if (v32)
    {
      if (![(NSString *)v32 isEqualToString:[(MRFrame *)mFrame frameID]])
      {
        v34 = [MRFrame retainedFrameWithFrameID:v32 forSlideProvider:self];
        self->mFrame = v34;
        [(MRFrame *)v34 setPixelSize:self->mDefaultSize.width, self->mDefaultSize.height];
      }
    }

    else if (mFrame)
    {
      [(MRFrame *)mFrame releaseBySlideProvider:self];
      self->mFrame = 0;
    }

    if (self->mFrame)
    {
      [(MRFrame *)self->mFrame setAttributes:[(MCSlide *)self->_slide frameAttributes]];
    }

    goto LABEL_64;
  }

  if (v9)
  {
    goto LABEL_5;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_39;
  }

  if ((self->mFlags & 8) != 0)
  {
LABEL_5:
    [(MRSlideProvider *)self unload];
    if ((v5 & 2) == 0)
    {
LABEL_24:
      v11 = 1;
      v7 = 1;
      goto LABEL_25;
    }

    slide = self->_slide;
    if (slide)
    {
      v13 = [(NSString *)[(MCAsset *)[(MCSlide *)slide asset] path] copy];
      self->_assetPath = v13;
      if (v13)
      {
LABEL_8:
        [a3 resolutionForAssetAtPath:?];
        v16 = v14 / v15;
        if (v15 <= 0.0)
        {
          v16 = 1.0;
        }

        self->mOriginalImageAspectRatio = v16;
        if ([a3 isSupportedMovieForAssetAtPath:self->_assetPath])
        {
          v17 = 4;
        }

        else
        {
          v17 = 0;
        }

        v18 = self->mFlags & 0xFB | v17;
        goto LABEL_22;
      }
    }

    else if (self->_assetPath)
    {
      goto LABEL_8;
    }

    if ([(MCSlide *)self->_slide plug])
    {
      self->mOriginalImageAspectRatio = self->mDefaultSize.width / self->mDefaultSize.height;
    }

    else
    {
      self->mOriginalImageAspectRatio = 1.0;
    }

    v18 = self->mFlags & 0xFB;
LABEL_22:
    LOBYTE(self->mFlags) = v18;
    self->mKenBurnsType = self->mDefaultKenBurnsType;
    v19 = self->_slide;
    if (v19)
    {
      self->_filterID = [-[NSSet anyObject](-[MCSlide filters](v19 "filters")];
    }

    goto LABEL_24;
  }

LABEL_25:
  if ([(MCSlide *)self->_slide startTimeIsDefined])
  {
    [(MCSlide *)self->_slide startTime];
    self->_slideStartTime = v20;
  }

  if ([(MCSlide *)self->_slide durationIsDefined])
  {
    [(MCSlide *)self->_slide duration];
    self->_slideDuration = v21;
  }

  if (self->_assetPath)
  {
    if ((self->mFlags & 4) != 0)
    {
      if (![(MCSlide *)self->_slide startTimeIsDefined])
      {
        [a3 startTimeForAssetAtPath:self->_assetPath];
        self->_slideStartTime = v22;
      }

      if (![(MCSlide *)self->_slide durationIsDefined])
      {
        [a3 stopTimeForAssetAtPath:self->_assetPath];
        self->_slideDuration = v23 - self->_slideStartTime;
      }
    }

    if (self->_slideDuration < 0.0)
    {
      self->_slideDuration = 0.0;
      goto LABEL_47;
    }

LABEL_39:
    BYTE2(self->mFlags) |= 0xEu;
    if (!v7)
    {
      goto LABEL_48;
    }

    goto LABEL_40;
  }

  if (![(MCSlide *)self->_slide plug]|| [(MCSlide *)self->_slide durationIsDefined])
  {
    goto LABEL_39;
  }

  [(MCPlug *)[(MCSlide *)self->_slide plug] fullDuration];
  self->_slideDuration = v26;
LABEL_47:
  BYTE2(self->mFlags) |= 0xEu;
  if (!v7)
  {
    goto LABEL_48;
  }

LABEL_40:
  v24 = [(MCSlide *)self->_slide kenBurnsType];
  if ([(NSString *)v24 isEqualToString:@"Crop to Fit"])
  {
    mDefaultKenBurnsType = 1;
  }

  else if ([(NSString *)v24 isEqualToString:@"Scale to Fit"])
  {
    mDefaultKenBurnsType = 2;
  }

  else if ([(NSString *)v24 isEqualToString:@"Linear"])
  {
    mDefaultKenBurnsType = 0;
  }

  else if ([(NSString *)v24 isEqualToString:@"Scrop to Fit"])
  {
    mDefaultKenBurnsType = 3;
  }

  else
  {
    mDefaultKenBurnsType = self->mDefaultKenBurnsType;
  }

  self->mKenBurnsType = mDefaultKenBurnsType;
  [(MCSlide *)self->_slide center];
  self->_center.x = v27;
  self->_center.y = v28;
  [(MCSlide *)self->_slide scale];
  self->_scale = v29;
  [(MCSlide *)self->_slide rotation];
  self->_rotation = v30;
  if ([(NSSet *)[(MCSlide *)self->_slide animationPaths] count])
  {
    self->_centerAnimationPath = [(MCSlide *)self->_slide animationPathForKey:@"center"];
    self->_scaleAnimationPath = [(MCSlide *)self->_slide animationPathForKey:@"scale"];
    self->_rotationAnimationPath = [(MCSlide *)self->_slide animationPathForKey:@"angle"];
    v31 = BYTE1(self->mFlags) | 4;
  }

  else
  {
    v31 = BYTE1(self->mFlags) & 0xFB;
  }

  BYTE1(self->mFlags) = v31;
  if (v11)
  {
    goto LABEL_57;
  }

LABEL_64:
  mOutputImage = self->mOutputImage;
  if (mOutputImage)
  {
    [(MRImage *)mOutputImage releaseByUser];
    self->mOutputImage = 0;
  }

  objc_sync_exit(self);
  return v10 & 1;
}

- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  if (*&self->mSlidePlayer == 0 && !self->_assetPath)
  {
    audioDucker = [(MCSlide *)self->_slide plug];
    if (!audioDucker)
    {
      return audioDucker;
    }
  }

  v10 = a3 - self->_showTime;
  mFlags_low = LOBYTE(self->mFlags);
  v12 = SBYTE1(self->mFlags);
  if (v10 < -10.0 || v10 >= self->_showDuration || ![(MRLayer *)self->mEffectLayer isPreactivated])
  {
    if (v12 < 0)
    {
      [(MRSlideProvider *)self setIsPlaying:0];
    }

    HIBYTE(self->mFlags) &= ~0x80u;
    showDuration = self->_showDuration;
    if (self->mSlidePlayer)
    {
      [(MCSlide *)self->_slide audioDuckOutDuration];
      v22 = fmax(v21, 2.0);
    }

    else
    {
      v22 = 2.0;
    }

    if ((mFlags_low & 3) != 0)
    {
      v23 = showDuration + v22;
      v24 = v10 >= -10.0 && v10 < v23;
      if (!v24 || ![(MRLayer *)self->mEffectLayer isPreactivated])
      {
        [(MRSlideProvider *)self unload];
      }
    }

    audioDucker = self->_audioDucker;
    if (audioDucker)
    {
      [(MCPlugSlide *)audioDucker setTime:v10];
      LOBYTE(audioDucker) = 0;
    }

    return audioDucker;
  }

  if ((self->mFlags & 0x20000) != 0)
  {
    [(MRSlideProvider *)self _computeImageSizeInContext:a4 withArguments:a5];
  }

  v13 = mFlags_low >> 1;
  if (self->mSlidePlayer)
  {
    width = self->mLastImageSize.width;
    height = self->mLastImageSize.height;
    v16 = width == CGSizeZero.width && height == CGSizeZero.height;
    if (!v16 && (width != self->mImageSize.width || height != self->mImageSize.height))
    {
      objc_sync_enter(self);
      [(MRSlideProvider *)self cancelLoading];
      LOBYTE(self->mFlags) &= ~1u;
      mOriginalImage = self->mOriginalImage;
      if (mOriginalImage)
      {
        [(MRImage *)mOriginalImage releaseByUser];
        self->mOriginalImage = 0;
      }

      mOutputImage = self->mOutputImage;
      if (mOutputImage)
      {
        [(MRImage *)mOutputImage releaseByUser];
        self->mOutputImage = 0;
      }

      mSlidePlayer = self->mSlidePlayer;
      if (mSlidePlayer)
      {
        [(MRAssetPlayer *)mSlidePlayer releaseByUser];
        self->mSlidePlayer = 0;
      }

      if (self->_audioDucker)
      {
        [(MRLayerEffect *)self->mEffectLayer _removeAudioDucker:?];

        self->_audioDucker = 0;
      }

      objc_sync_exit(self);
      LOBYTE(v13) = 0;
      LOBYTE(mFlags_low) = 0;
    }
  }

  else
  {
    mSlideLayer = self->mSlideLayer;
    if (mSlideLayer)
    {
      [(MRLayer *)mSlideLayer pixelSize];
      if (v27 != self->mImageSize.width || v26 != self->mImageSize.height)
      {
        [(MRLayer *)self->mSlideLayer setPixelSize:?];
      }
    }
  }

  if (v10 >= 0.0)
  {
    v28 = [(MRLayer *)self->mEffectLayer isActivated];
    if (mFlags_low)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v28 = 0;
    if (mFlags_low)
    {
      goto LABEL_53;
    }
  }

  if (v13)
  {
    if (v28)
    {
      [(NSLock *)self->mPreloadOperationLock lock];
      [(NSInvocationOperation *)self->mPreloadOperation setQueuePriority:8];
      [(NSLock *)self->mPreloadOperationLock unlock];
    }
  }

  else
  {
    [(MRSlideProvider *)self loadForTime:a4 inContext:a5 withArguments:v28 now:v10];
  }

LABEL_53:
  v29 = self->mSlidePlayer;
  if (v29)
  {
    v30 = BYTE2(self->mFlags);
    if ((v30 & 4) != 0)
    {
      if (self->_audioDucker)
      {
        [(MRLayerEffect *)self->mEffectLayer _removeAudioDucker:?];
        v29 = self->mSlidePlayer;
      }

      if ([(MRAssetPlayer *)v29 conformsToProtocol:&OBJC_PROTOCOL___MRAudioPlayer])
      {
        v31 = self->mSlidePlayer;
        slide = self->_slide;
        if (slide)
        {
          [(MCSlide *)slide audioVolume];
          [(MRAssetPlayer *)v31 setVolume:v33];
          [(MCSlide *)self->_slide audioFadeInDuration];
          [(MRAssetPlayer *)v31 setFadeInDuration:?];
          [(MCSlide *)self->_slide audioFadeOutDuration];
          v35 = v34;
        }

        else
        {
          v35 = 1.0;
          [(MRAssetPlayer *)self->mSlidePlayer setVolume:1.0];
          [(MRAssetPlayer *)v31 setFadeInDuration:1.0];
        }

        [(MRAssetPlayer *)v31 setFadeOutDuration:v35];
        [(MRAssetPlayer *)v31 setIsMuted:(BYTE1(self->mFlags) >> 5) & 1];
        if (!self->_audioDucker)
        {
          self->_audioDucker = objc_alloc_init(MRAudioDucker);
        }

        [(MRAssetPlayer *)v31 duration];
        [(MRAudioDucker *)self->_audioDucker setDuration:?];
        v39 = self->_audioDucker;
        if (v39)
        {
          if (self->_slide)
          {
            [(MCSlide *)self->_slide audioDuckLevel];
            [(MRAudioDucker *)self->_audioDucker setDuckLevel:v40];
            [(MCSlide *)self->_slide audioDuckInDuration];
            [(MRAudioDucker *)self->_audioDucker setDuckInDuration:?];
            [(MCSlide *)self->_slide audioDuckOutDuration];
            v42 = v41;
          }

          else
          {
            [(MRAudioDucker *)v39 setDuckLevel:0.25];
            v42 = 1.0;
            [(MRAudioDucker *)self->_audioDucker setDuckInDuration:1.0];
          }

          [(MRAudioDucker *)self->_audioDucker setDuckOutDuration:v42];
          [(MRAudioDucker *)self->_audioDucker setParentDuration:self->_showDuration];
          mEffectLayer = self->mEffectLayer;
          for (i = mEffectLayer; [[(MRLayer *)i superlayer] superlayer]; mEffectLayer = i)
          {
            i = [(MRLayer *)mEffectLayer superlayer];
          }

          [(MRAudioDucker *)self->_audioDucker setPriority:[(MCPlugParallel *)[(MRLayer *)mEffectLayer plugAsParallel] audioPriority]];
          [(MRLayerEffect *)self->mEffectLayer _addAudioDucker:self->_audioDucker];
        }
      }

      else
      {
        v38 = self->_audioDucker;
        if (v38)
        {

          self->_audioDucker = 0;
        }
      }

      v30 = BYTE2(self->mFlags) & 0xFB;
      BYTE2(self->mFlags) = v30;
    }

    if ((v30 & 8) != 0 && [(MRAssetPlayer *)self->mSlidePlayer conformsToProtocol:&OBJC_PROTOCOL___MRAssetPlayerTimeSupport])
    {
      [(MRAssetPlayer *)self->mSlidePlayer setStartTime:self->_slideStartTime];
      [(MRAssetPlayer *)self->mSlidePlayer setDuration:self->_slideDuration];
      v45 = self->_audioDucker;
      if (v45)
      {
        [(MRAudioDucker *)v45 setDuration:self->_slideDuration];
      }

      BYTE2(self->mFlags) &= ~8u;
    }

    v46 = self->_audioDucker;
    if (v46)
    {
      [(MRAudioDucker *)v46 setTime:v10];
    }
  }

  else
  {
    v36 = self->mSlideLayer;
    if (v36 && [(MRLayer *)v36 isPreactivated])
    {
      v37 = [(MRLayer *)self->mSlideLayer isActivated];
      if (!v28 || (v37 & 1) != 0)
      {
        if (!v28 && (v37 & 1) != 0)
        {
          [(MRLayer *)self->mSlideLayer deactivate];
        }
      }

      else
      {
        [(MRLayer *)self->mSlideLayer activate];
      }

      [(MRLayer *)self->mSlideLayer prerenderForTime:a4 inContext:a5 withArguments:v10];
    }

    else
    {
      NSLog(@"Slide provider has no slide player nor layer at the end of prerender");
    }
  }

  if (v28 && (self->mFlags & 8) == 0 && [objc_msgSend(a5 "renderer")] && -[MRLayer isActivated](self->mEffectLayer, "isActivated"))
  {
    v47 = ![(MRLayerClock *)[(MRLayer *)self->mEffectLayer clock] isPaused];
  }

  else
  {
    v47 = 0;
  }

  v48 = self->_audioDucker;
  if (!v48)
  {
    goto LABEL_105;
  }

  if ((v47 & 1) == 0)
  {
    v50 = [(MRLayerClock *)[(MRLayer *)self->mEffectLayer clock] isPaused];
    v51 = -1000.0;
    if (v50)
    {
      v51 = v10;
    }

    [(MRAudioDucker *)self->_audioDucker setDuckInTime:v51];
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_116;
    }

    [(MRAudioDucker *)self->_audioDucker setDuckOutTime:v10];
LABEL_105:
    if ((v12 & 0x80u) == 0)
    {
      v52 = 1;
    }

    else
    {
      v52 = v47;
    }

    if (v52 != 1)
    {
      v54 = 0;
LABEL_115:
      [(MRSlideProvider *)self setIsPlaying:v54];
      goto LABEL_116;
    }

LABEL_109:
    if ((v12 & 0x80u) == 0)
    {
      v53 = v47;
    }

    else
    {
      v53 = 0;
    }

    if (v53 != 1)
    {
      goto LABEL_116;
    }

    v54 = 1;
    goto LABEL_115;
  }

  [(MRAudioDucker *)v48 setDuckOutTime:-1000.0];
  if ((v12 & 0x80000000) == 0)
  {
    [(MRAudioDucker *)self->_audioDucker duckInTime];
    if (v49 > v10)
    {
      [(MRAudioDucker *)self->_audioDucker setDuckInTime:-1000.0];
    }

    goto LABEL_109;
  }

LABEL_116:
  if (v28)
  {
    if (self->_centerAnimationPath || self->_scaleAnimationPath)
    {
      v55 = 1;
      if (v47)
      {
LABEL_120:
        v56 = self->mSlidePlayer;
        if (v56)
        {
          LODWORD(v56) = [(MRAssetPlayer *)v56 newImageIsAvailable];
        }

        v55 |= v56;
        audioDucker = self->mSlideLayer;
        if (audioDucker)
        {
          LODWORD(audioDucker) = [(MCPlugSlide *)audioDucker hasSomethingToRender];
        }

        goto LABEL_130;
      }
    }

    else
    {
      v55 = self->_rotationAnimationPath != 0;
      if (v47)
      {
        goto LABEL_120;
      }
    }

    LODWORD(audioDucker) = 0;
LABEL_130:
    v58 = BYTE2(self->mFlags);
    LODWORD(audioDucker) = v55 | audioDucker | ((v58 & 0x10) >> 4);
    BYTE2(self->mFlags) = v58 & 0xEF;
    return audioDucker;
  }

  if ([(MRAssetPlayer *)self->mSlidePlayer conformsToProtocol:&OBJC_PROTOCOL___MRAssetPlayerTimeSupport])
  {
    [(MRAssetPlayer *)self->mSlidePlayer time];
    if (v57 > 0.0)
    {
      [(MRAssetPlayer *)self->mSlidePlayer setTime:0.0];
    }
  }

  LOBYTE(audioDucker) = 0;
  HIBYTE(self->mFlags) &= ~0x80u;
  return audioDucker;
}

- (id)retainedByUserRenderedImageAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  if (*&self->mSlidePlayer == 0)
  {
    NSLog(@"Slide was unloaded although expected", a2, a3);
    return 0;
  }

  v8 = a3 - self->_showTime;
  if (v8 < 0.0 || v8 >= self->_showDuration)
  {
    return 0;
  }

  if ((SHIBYTE(self->mFlags) & 0x80000000) == 0 && ([objc_msgSend(a5 "renderer")] & 1) == 0 && self->_assetPath)
  {
    if (self->mEffectLayer)
    {
      slide = self->_slide;
      if (slide)
      {
        v10 = [NSDictionary dictionaryWithObjectsAndKeys:@"layer", slide, @"slide", 0];
        v11 = +[NSNotificationCenter defaultCenter];
        -[NSNotificationCenter postNotificationName:object:userInfo:](v11, "postNotificationName:object:userInfo:", kMRNotificationSlideIsOn, [a5 renderer], v10);
      }
    }

    HIBYTE(self->mFlags) |= 0x80u;
  }

  if (self->mSlidePlayer)
  {
    width = self->mImageSize.width;
    height = self->mImageSize.height;
    if ([a5 thumbnailPolicy])
    {
      [(MRAssetPlayer *)self->mSlidePlayer setThumbnailIsOK:0];
    }

    mSlidePlayer = self->mSlidePlayer;
    [a5 displayLinkTimestamp];
    v16 = [(MRAssetPlayer *)mSlidePlayer retainedByUserImageAtTime:v8 displayLinkTimestamp:v15];
    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
    mSlideLayer = self->mSlideLayer;
    if (!mSlideLayer || v8 == self->mLastTime && self->mOriginalImage && self->mLastImageSize.width == self->mImageSize.width && self->mLastImageSize.height == self->mImageSize.height || (v16 = [(MRLayer *)mSlideLayer retainedByUserRenderedImageAtTime:a4 inContext:a5 withArguments:v8], [(MRImage *)v16 width], width = v19, [(MRImage *)v16 height], height = v20, !v16))
    {
LABEL_30:
      v22 = 0;
      goto LABEL_31;
    }
  }

  mOriginalImage = self->mOriginalImage;
  v22 = v16 != mOriginalImage;
  if (v16 == mOriginalImage)
  {
    [(MRImage *)v16 releaseByUser];
  }

  else
  {
    if (mOriginalImage)
    {
      [(MRImage *)mOriginalImage releaseByUser];
    }

    self->mOriginalImage = v16;
  }

  self->mLastImageSize.width = width;
  self->mLastImageSize.height = height;
  self->mLastTime = v8;
LABEL_31:
  v23 = self->mOriginalImage;
  if (v23)
  {
    mSizeFactor = self->mSizeFactor;
    if (self->_centerAnimationPath || self->_scaleAnimationPath || self->_rotationAnimationPath)
    {
      v25 = 1;
      v26 = 1;
    }

    else
    {
      v25 = 0;
      v26 = (BYTE1(self->mFlags) >> 3) & 1;
    }

    v52 = vmulq_f64(self->mRequestedSize, mSizeFactor);
    if (v22 || (mOutputImage = self->mOutputImage, (mOutputImage == 0) | v26 & 1) || (v28 = vmovn_s64(vceqq_f64(v52, self->mLastDaSize)), (v28.i32[0] & v28.i32[1] & 1) == 0))
    {
      BYTE1(self->mFlags) &= ~8u;
      v55 = CGPointZero;
      if (mSizeFactor.width < mSizeFactor.height)
      {
        mSizeFactor.width = mSizeFactor.height;
      }

      v29 = 1.0 / mSizeFactor.width;
      v54 = 1.0 / mSizeFactor.width;
      v53 = 0.0;
      mKenBurnsType = self->mKenBurnsType;
      if (mKenBurnsType == 3)
      {
        [(MRImage *)v23 width];
        v32 = v31;
        [(MRImage *)self->mOriginalImage height];
        if ((vmovn_s64(vcgeq_f64(v52, vdupq_laneq_s64(v52, 1))).u8[0] ^ (v32 < v33)))
        {
          mKenBurnsType = 1;
        }

        else
        {
          mKenBurnsType = 2;
        }
      }

      if (self->mOriginalImageAspectRatio < 1.0 || ([(MRImage *)self->mOriginalImage width], v35 = v34 / self->mOriginalImageAspectRatio, [(MRImage *)self->mOriginalImage height], vabdd_f64(v35, v36) < 2.0) || self->mOriginalImageAspectRatio >= 1.0 || ([(MRImage *)self->mOriginalImage height], v38 = v37, mOriginalImageAspectRatio = self->mOriginalImageAspectRatio, [(MRImage *)self->mOriginalImage width], fabs(-(v40 - v38 * mOriginalImageAspectRatio)) < 2.0))
      {
        [(MRSlideProvider *)self applyKenBurnsAtTime:mKenBurnsType withTargetSize:&v55 kenBurnsType:&v54 translation:&v53 scale:v8 rotation:v52];
        v41 = 0;
LABEL_50:
        [(MRImage *)self->mOutputImage releaseByUser];
        v42 = [(MRImage *)self->mOriginalImage retainedByUserImage];
        self->mOutputImage = v42;
        [(MRImage *)v42 setCenterX:v55.x];
        [(MRImage *)self->mOutputImage setCenterY:v55.y];
        [(MRImage *)self->mOutputImage setScale:v54];
        [(MRImage *)self->mOutputImage setRotationAngle:v53];
        v43 = -1.0;
        if (v26)
        {
          v43 = v8;
        }

        [(MRImage *)self->mOutputImage setRenderTime:v43];
        if (mKenBurnsType == 1)
        {
          v44 = 2;
        }

        else
        {
          v44 = 1;
        }

        [(MRImage *)self->mOutputImage setClampMode:v44];
        [(MRImage *)self->mOutputImage setHasKenBurns:v25];
        [(MRImage *)self->mOutputImage setScaleWasFixedForTargetAspectRatio:v41];
        [(MRImage *)self->mOutputImage setFilterID:self->_filterID];
        mFrame = self->mFrame;
        mOutputImage = self->mOutputImage;
        if (mFrame)
        {
          [(MRFrame *)mFrame setInputImage:mOutputImage];
          v46 = [(MRFrame *)self->mFrame retainedByUserRenderedImageAtTime:a4 inContext:a5 withArguments:v8];
          mOutputImage = self->mOutputImage;
          if (v46)
          {
            v47 = v46;
            [(MRImage *)self->mOutputImage releaseByUser];
            self->mOutputImage = v47;
            mOutputImage = v47;
          }
        }

        self->mLastDaSize = v52;
        return [(MRImage *)mOutputImage retainByUser];
      }

      [(MRImage *)self->mOriginalImage aspectRatio];
      v50 = v49;
      v51 = vdivq_f64(v52, vdupq_laneq_s64(v52, 1)).f64[0];
      if (mKenBurnsType >= 2)
      {
        if (mKenBurnsType != 2 || v50 >= v51)
        {
          goto LABEL_70;
        }
      }

      else if (v50 <= v51)
      {
        goto LABEL_70;
      }

      v54 = v29 * (v50 / v51);
LABEL_70:
      v41 = 1;
      goto LABEL_50;
    }
  }

  else
  {
    v48 = self->mOutputImage;
    if (v48)
    {
      [(MRImage *)v48 releaseByUser];
      mOutputImage = 0;
      self->mOutputImage = 0;
    }

    else
    {
      mOutputImage = 0;
    }
  }

  return [(MRImage *)mOutputImage retainByUser];
}

- (id)patchworkAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  v6 = [(MRSlideProvider *)self retainedByUserRenderedImageAtTime:a4 inContext:a5 withArguments:a3];
  v7 = 2.0 / (self->mDefaultSize.width / self->mDefaultSize.height);
  v8 = [[NSDictionary alloc] initWithObjectsAndKeys:{objc_msgSend(v6, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", -1.0, v7 * -0.5, 2.0, v7), @"rectangle", 0}];
  v9 = [NSArray arrayWithObject:v8];

  [v6 releaseByUser];
  return v9;
}

- (void)imageIsAvailableFromAssetPlayer:(id)a3
{
  BYTE2(self->mFlags) |= 0x10u;
  if ([(MRLayer *)self->mEffectLayer isActivated])
  {
    mEffectLayer = self->mEffectLayer;

    [(MRLayerEffect *)mEffectLayer _requestRendering];
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
  objc_copyStruct(v4, &self->mRequestedSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeFactor
{
  width = self->mSizeFactor.width;
  height = self->mSizeFactor.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)applyKenBurnsAtTime:(double)a3 withTargetSize:(CGSize)a4 kenBurnsType:(int)a5 translation:(CGPoint *)a6 scale:(double *)a7 rotation:(double *)a8
{
  height = a4.height;
  width = a4.width;
  [(MRImage *)self->mOriginalImage aspectRatio];
  v17 = v16;
  [(MRImage *)self->mOriginalImage width];
  v19 = v18;
  [(MRImage *)self->mOriginalImage height];
  v21 = v20;
  center = self->_center;
  v69 = center;
  scale = self->_scale;
  v67 = scale;
  mEffectLayer = self->mEffectLayer;
  if ((self->mFlags & 0x400) != 0)
  {
    v23 = [(MRLayer *)mEffectLayer plug];
  }

  else
  {
    v23 = [(MRLayer *)mEffectLayer clock];
  }

  v24 = v23;
  centerAnimationPath = self->_centerAnimationPath;
  if (centerAnimationPath)
  {
    if ([(MCAnimationPath *)centerAnimationPath isTriggered]&& self->_centerAnimationPathTriggerTime < 0.0)
    {
      self->_centerAnimationPathTriggerTime = a3;
    }

    v65 = 0;
    v26 = self->_centerAnimationPath;
    v27 = [(MCAnimationPath *)v26 isTriggered];
    centerAnimationPathTriggerTime = 0.0;
    if (v27)
    {
      centerAnimationPathTriggerTime = self->_centerAnimationPathTriggerTime;
    }

    [MRUtilities valueForPointAnimationPath:v26 withPlugTiming:v24 atTime:&v69 defaultsTo:&center previousKeyPoint:&v65 nextKeyPoint:a3 - centerAnimationPathTriggerTime animationIsOver:self->_center.x, self->_center.y];
    self->_center.x = v29;
    self->_center.y = v30;
    if (v65 == 1 && [(MCAnimationPath *)self->_centerAnimationPath isTriggered])
    {

      self->_centerAnimationPath = 0;
      self->_centerAnimationPathTriggerTime = -1.0;
    }
  }

  scaleAnimationPath = self->_scaleAnimationPath;
  if (scaleAnimationPath)
  {
    if ([(MCAnimationPath *)scaleAnimationPath isTriggered]&& self->_scaleAnimationPathTriggerTime < 0.0)
    {
      self->_scaleAnimationPathTriggerTime = a3;
    }

    v65 = 0;
    v32 = self->_scaleAnimationPath;
    v33 = [(MCAnimationPath *)v32 isTriggered];
    scaleAnimationPathTriggerTime = 0.0;
    if (v33)
    {
      scaleAnimationPathTriggerTime = self->_scaleAnimationPathTriggerTime;
    }

    [MRUtilities valueForScalarAnimationPath:v32 withPlugTiming:v24 atTime:&v67 defaultsTo:&scale previousKeyValue:&v65 nextKeyValue:a3 - scaleAnimationPathTriggerTime animationIsOver:self->_scale];
    self->_scale = v35;
    if (v65 == 1 && [(MCAnimationPath *)self->_scaleAnimationPath isTriggered])
    {

      self->_scaleAnimationPath = 0;
      self->_scaleAnimationPathTriggerTime = -1.0;
    }
  }

  rotationAnimationPath = self->_rotationAnimationPath;
  if (rotationAnimationPath)
  {
    if ([(MCAnimationPath *)rotationAnimationPath isTriggered]&& self->_rotationAnimationPathTriggerTime < 0.0)
    {
      self->_rotationAnimationPathTriggerTime = a3;
    }

    v65 = 0;
    v37 = self->_rotationAnimationPath;
    v38 = [(MCAnimationPath *)v37 isTriggered];
    rotationAnimationPathTriggerTime = 0.0;
    if (v38)
    {
      rotationAnimationPathTriggerTime = self->_rotationAnimationPathTriggerTime;
    }

    [MRUtilities valueForScalarAnimationPath:v37 withPlugTiming:v24 atTime:0 defaultsTo:0 previousKeyValue:&v65 nextKeyValue:a3 - rotationAnimationPathTriggerTime animationIsOver:self->_rotation];
    self->_rotation = v40;
    if (v65 == 1 && [(MCAnimationPath *)self->_rotationAnimationPath isTriggered])
    {

      self->_rotationAnimationPath = 0;
      self->_rotationAnimationPathTriggerTime = -1.0;
    }
  }

  x = self->_center.x;
  y = self->_center.y;
  if (a6)
  {
    x = x + a6->x;
    y = y + a6->y;
  }

  v43 = self->_scale;
  if (a7)
  {
    v43 = v43 * *a7;
  }

  rotation = self->_rotation;
  if (a8)
  {
    rotation = rotation + *a8;
  }

  v45 = width / height;
  v46 = height / width;
  if (a5 == 2)
  {
    v47 = v19 / v43;
    if (v45 <= 0.0)
    {
      v55 = CGPointZero.x;
      v56 = CGPointZero.y;
LABEL_71:
      if (!a6)
      {
        goto LABEL_74;
      }

      a6->x = (v55 + v55) / v19 + -1.0;
      v59 = (v56 + v56) / v21 + -1.0;
      goto LABEL_73;
    }

    if (v45 >= v17)
    {
      v60 = v21 / v67;
      v47 = v45 * (v21 / v43);
      v61 = v21 / scale;
      if (center.x == v69.x)
      {
        v55 = v19 + v47 * -0.5 + (1.0 - x) * (v47 - v19);
      }

      else
      {
        v62 = v19 - v45 * v61 * 0.5 + (1.0 - center.x) * (v45 * v61 - v19);
        v63 = v19 - v45 * v60 * 0.5 + (1.0 - v69.x) * (v45 * v60 - v19);
        v55 = v63 + (x - v69.x) * (v62 - v63) / (center.x - v69.x);
      }

      if (center.y == v69.y)
      {
        v56 = v21 / v43 * 0.5 + y * (v21 - v21 / v43);
      }

      else
      {
        v56 = v60 * 0.5 + v69.y * (v21 - v60) + (y - v69.y) * (v61 * 0.5 + center.y * (v21 - v61) - (v60 * 0.5 + v69.y * (v21 - v60))) / (center.y - v69.y);
      }

      goto LABEL_71;
    }

    v53 = v19 / v67;
    v54 = v19 / scale;
    if (center.x == v69.x)
    {
      v55 = v47 * 0.5 + x * (v19 - v47);
    }

    else
    {
      v55 = v53 * 0.5 + v69.x * (v19 - v53) + (x - v69.x) * (v54 * 0.5 + center.x * (v19 - v54) - (v53 * 0.5 + v69.x * (v19 - v53))) / (center.x - v69.x);
    }

    if (center.y != v69.y)
    {
      v64 = v21 - v46 * v53 * 0.5 + (1.0 - v69.y) * (v46 * v53 - v21);
      v56 = v64 + (y - v69.y) * (v21 - v46 * v54 * 0.5 + (1.0 - center.y) * (v46 * v54 - v21) - v64) / (center.y - v69.y);
      goto LABEL_71;
    }

    y = 1.0 - y;
    v57 = v46 * v47 - v21;
    v58 = v21 + v46 * v47 * -0.5;
LABEL_57:
    v56 = v58 + y * v57;
    goto LABEL_71;
  }

  if (a5 == 1)
  {
    v47 = v19 / v43;
    v48 = v19 / v67;
    v49 = v19 / scale;
    if (v45 <= v17)
    {
      v50 = v21 / v43;
      v51 = v21 / v67;
      v52 = v21 / scale;
      if (v45 > 0.0)
      {
        v47 = v45 * v50;
        v48 = v45 * v51;
        v49 = v45 * v52;
      }
    }

    else
    {
      v50 = v46 * v47;
      v51 = v46 * v48;
      v52 = v46 * v49;
    }

    if (center.x == v69.x)
    {
      v55 = v47 * 0.5 + x * (v19 - v47);
    }

    else
    {
      v55 = v48 * 0.5 + v69.x * (v19 - v48) + (x - v69.x) * (v49 * 0.5 + center.x * (v19 - v49) - (v48 * 0.5 + v69.x * (v19 - v48))) / (center.x - v69.x);
    }

    if (center.y != v69.y)
    {
      v56 = v51 * 0.5 + v69.y * (v21 - v51) + (y - v69.y) * (v52 * 0.5 + center.y * (v21 - v52) - (v51 * 0.5 + v69.y * (v21 - v51))) / (center.y - v69.y);
      goto LABEL_71;
    }

    v57 = v21 - v50;
    v58 = v50 * 0.5;
    goto LABEL_57;
  }

  v47 = v19;
  if (a5)
  {
    goto LABEL_74;
  }

  if (scale == v67)
  {
    v47 = v19 / v43;
    if (!a6)
    {
      goto LABEL_74;
    }

    goto LABEL_60;
  }

  v47 = v19 * (1.0 / v67 + (v43 - v67) * (1.0 / scale - 1.0 / v67) / (scale - v67));
  if (a6)
  {
LABEL_60:
    a6->x = x * 2.0 + -1.0;
    v59 = y * 2.0 + -1.0;
LABEL_73:
    a6->y = v59;
  }

LABEL_74:
  if (a7)
  {
    *a7 = v19 / v47;
  }

  if (a8)
  {
    *a8 = -rotation;
  }
}

@end