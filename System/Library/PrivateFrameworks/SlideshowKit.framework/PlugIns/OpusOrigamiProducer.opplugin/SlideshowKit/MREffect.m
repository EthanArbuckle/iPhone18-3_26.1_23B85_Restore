@interface MREffect
+ (id)retainedEffectWithEffectID:(id)a3 forEffectLayer:(id)a4;
- (BOOL)hasMoreSlidesFromTime:(double)a3 backwards:(BOOL)a4 startTime:(double *)a5 duration:(double *)a6;
- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (BOOL)startPanoramaPanningForElementID:(id)a3 isLandscape:(BOOL *)a4;
- (CGSize)_maxSizeForTextElement:(id)a3;
- (CGSize)pixelSize;
- (MREffect)initWithEffectID:(id)a3;
- (_NSRange)multiImageSlideRange;
- (double)_computePhaseTimeForTime:(double)a3;
- (double)_computeTimeForPhaseTime:(double)a3;
- (double)valueForPanoramaPanningForElementID:(id)a3 value:(double)a4 minValue:(double)a5 maxValue:(double)a6;
- (id)patchworkAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (id)retainedByUserRenderedImageAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (void)cancelLoading;
- (void)cleanup;
- (void)dealloc;
- (void)getLazyDuration:(double *)a3 lazyFactor:(double *)a4 animationDuration:(double *)a5 fromInterestingTime:(double)a6;
- (void)loadForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5 now:(BOOL)a6;
- (void)loadWithArguments:(id)a3;
- (void)releaseByEffectLayer:(id)a3;
- (void)renderAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (void)setAttributes:(id)a3;
- (void)setPhaseInDuration:(double)a3 mainDuration:(double)a4 phaseOutDuration:(double)a5;
- (void)setPixelSize:(CGSize)a3;
- (void)unload;
- (void)updatePanoramaPanningForElementID:(id)a3 withDelta:(double)a4;
@end

@implementation MREffect

+ (id)retainedEffectWithEffectID:(id)a3 forEffectLayer:(id)a4
{
  v5 = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
  v6 = v5;
  if (v5)
  {
    [v5 retainByEffectLayer:a4];
  }

  return v6;
}

- (MREffect)initWithEffectID:(id)a3
{
  v4 = [(MREffect *)self init];
  if (v4)
  {
    v4->mEffectID = [a3 copy];
    v4->mDescription = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
    [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
    v4->mDefaultPhaseInDuration = v5;
    [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
    v4->mDefaultMainDuration = v6;
    [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
    v4->mDefaultPhaseOutDuration = v7;
    if ([(NSDictionary *)v4->mDescription objectForKey:@"isNative3D"])
    {
      v8 = [-[NSDictionary objectForKey:](v4->mDescription objectForKey:{@"isNative3D", "BOOLValue"}];
    }

    else
    {
      v8 = 1;
    }

    v4->mIsNative3D = v8;
    v4->mIsOpaque = [-[NSDictionary objectForKey:](v4->mDescription objectForKey:{@"isOpaque", "BOOLValue"}];
    if ([(NSDictionary *)v4->mDescription objectForKey:@"isAlphaFriendly"])
    {
      v9 = [-[NSDictionary objectForKey:](v4->mDescription objectForKey:{@"isAlphaFriendly", "BOOLValue"}];
    }

    else
    {
      v9 = 1;
    }

    v4->mIsAlphaFriendly = v9;
  }

  return v4;
}

- (void)dealloc
{
  [(MREffect *)self cleanup];
  v3.receiver = self;
  v3.super_class = MREffect;
  [(MREffect *)&v3 dealloc];
}

- (void)cleanup
{
  if (self->mEffectID)
  {
    if (self->mEffectLayer)
    {
      [(MREffect *)self releaseByEffectLayer:?];
    }

    else
    {

      self->mAttributes = 0;
      self->mFlattenedAttributes = 0;
    }

    objc_sync_enter(self);
    if (self->mEffectID)
    {
      [(MREffect *)self unload];
      [(MREffect *)self _cleanup];

      self->mEffectID = 0;
      self->mDescription = 0;
    }

    objc_sync_exit(self);
  }
}

- (void)releaseByEffectLayer:(id)a3
{
  [(MREffect *)self unload];
  self->mPixelSize = CGSizeZero;

  self->mEffectLayer = 0;
  self->mAttributes = 0;

  self->mFlattenedAttributes = 0;
  self->mSeed = 0;
  v4 = +[MREffectManager sharedManager];

  [v4 recycleEffect:self];
}

- (void)setPhaseInDuration:(double)a3 mainDuration:(double)a4 phaseOutDuration:(double)a5
{
  self->mPhaseInDuration = a3;
  self->mMainDuration = a4;
  self->mPhaseOutDuration = a5;
}

- (double)_computePhaseTimeForTime:(double)a3
{
  mPhaseInDuration = self->mPhaseInDuration;
  if (mPhaseInDuration >= a3)
  {
    v7 = 0.0;
    if (mPhaseInDuration > 0.0)
    {
      return self->mDefaultPhaseInDuration * a3 / mPhaseInDuration;
    }
  }

  else
  {
    mMainDuration = self->mMainDuration;
    mDefaultPhaseInDuration = self->mDefaultPhaseInDuration;
    if (mPhaseInDuration + mMainDuration <= a3)
    {
      v8 = mDefaultPhaseInDuration + self->mDefaultMainDuration;
      mPhaseOutDuration = self->mPhaseOutDuration;
      v10 = 0.0;
      if (mPhaseOutDuration > 0.0)
      {
        v10 = (a3 - mPhaseInDuration - mMainDuration) * self->mDefaultPhaseOutDuration / mPhaseOutDuration;
      }

      return v8 + v10;
    }

    else
    {
      v6 = 0.0;
      if (mMainDuration > 0.0)
      {
        v6 = (a3 - mPhaseInDuration) * self->mDefaultMainDuration / mMainDuration;
      }

      return mDefaultPhaseInDuration + v6;
    }
  }

  return v7;
}

- (double)_computeTimeForPhaseTime:(double)a3
{
  mDefaultPhaseInDuration = self->mDefaultPhaseInDuration;
  if (mDefaultPhaseInDuration >= a3)
  {
    v7 = 0.0;
    if (mDefaultPhaseInDuration > 0.0)
    {
      return self->mPhaseInDuration * a3 / mDefaultPhaseInDuration;
    }
  }

  else
  {
    mDefaultMainDuration = self->mDefaultMainDuration;
    mPhaseInDuration = self->mPhaseInDuration;
    if (mDefaultPhaseInDuration + mDefaultMainDuration <= a3)
    {
      v8 = mPhaseInDuration + self->mMainDuration;
      mDefaultPhaseOutDuration = self->mDefaultPhaseOutDuration;
      v10 = 0.0;
      if (mDefaultPhaseOutDuration > 0.0)
      {
        v10 = (a3 - mDefaultPhaseInDuration - mDefaultMainDuration) * self->mPhaseOutDuration / mDefaultPhaseOutDuration;
      }

      return v8 + v10;
    }

    else
    {
      v6 = 0.0;
      if (mDefaultMainDuration > 0.0)
      {
        v6 = (a3 - mDefaultPhaseInDuration) * self->mMainDuration / mDefaultMainDuration;
      }

      return mPhaseInDuration + v6;
    }
  }

  return v7;
}

- (void)setPixelSize:(CGSize)a3
{
  if (a3.width != self->mPixelSize.width || a3.height != self->mPixelSize.height)
  {
    self->mPixelSize = a3;
    *&self->mNeedsToUpdateSlides = 257;
  }
}

- (void)setAttributes:(id)a3
{
  mAttributes = self->mAttributes;
  if (mAttributes != a3)
  {
    v16 = v5;
    v17 = v4;
    v18 = v3;
    if (mAttributes)
    {

      self->mAttributes = 0;
    }

    self->mAttributes = a3;

    v14 = objc_alloc_init(NSMutableDictionary);
    v15 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    if (v15)
    {
      [(NSDictionary *)v14 addEntriesFromDictionary:v15];
    }

    [(NSDictionary *)v14 addEntriesFromDictionary:a3, v8, v7, v6, v16, v17, v18, v9, v10];
    self->mFlattenedAttributes = v14;
    self->mSeed = [objc_msgSend(a3 objectForKey:{@"RandomSeed", "unsignedIntegerValue"}];
    self->mNeedsToUpdateAttributes = 1;
  }
}

- (BOOL)hasMoreSlidesFromTime:(double)a3 backwards:(BOOL)a4 startTime:(double *)a5 duration:(double *)a6
{
  v8 = [(MRLayerEffect *)self->mEffectLayer hasSlides:a4];
  if (v8)
  {
    LOBYTE(v8) = a3 < 0.0 || self->mPhaseInDuration + self->mMainDuration + self->mPhaseOutDuration <= a3;
  }

  return v8;
}

- (void)getLazyDuration:(double *)a3 lazyFactor:(double *)a4 animationDuration:(double *)a5 fromInterestingTime:(double)a6
{
  *a3 = self->mMainDuration;
  *a4 = 0.0;
  *a5 = self->mPhaseOutDuration;
}

- (BOOL)startPanoramaPanningForElementID:(id)a3 isLandscape:(BOOL *)a4
{
  if (!self->_panoramaPanningOffsets)
  {
    self->_panoramaPanningOffsets = objc_alloc_init(NSMutableDictionary);
  }

  self->_panoramaPanningEndTime = 1000000000.0;
  return 1;
}

- (void)updatePanoramaPanningForElementID:(id)a3 withDelta:(double)a4
{
  [-[NSMutableDictionary objectForKey:](self->_panoramaPanningOffsets "objectForKey:"floatValue"")];
  v8 = v7 + a4;
  panoramaPanningOffsets = self->_panoramaPanningOffsets;
  *&v8 = v8;
  v10 = [NSNumber numberWithFloat:v8];

  [(NSMutableDictionary *)panoramaPanningOffsets setObject:v10 forKey:a3];
}

- (double)valueForPanoramaPanningForElementID:(id)a3 value:(double)a4 minValue:(double)a5 maxValue:(double)a6
{
  [-[NSMutableDictionary objectForKey:](self->_panoramaPanningOffsets "objectForKey:"floatValue"")];
  v12 = a4 - v11;
  if (v12 >= a5)
  {
    a5 = v12;
    if (v12 > a6)
    {
      a5 = a6;
    }
  }

  v13 = a4 - a5;
  *&v13 = a4 - a5;
  [(NSMutableDictionary *)self->_panoramaPanningOffsets setObject:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v13], a3];
  return a4 + (a5 - a4) * self->_panoramaPanningAmount;
}

- (void)loadForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5 now:(BOOL)a6
{
  if (![(MREffect *)self isLoadedForTime:?]&& (a6 || !self->mPreloadOperation))
  {
    objc_sync_enter(self);
    if (self->mEffectID)
    {
      v11 = [a5 preloadQueue];
      mPreloadOperation = self->mPreloadOperation;
      if (a6 || !v11)
      {
        if (mPreloadOperation)
        {
          [(NSOperation *)mPreloadOperation cancel];

          self->mPreloadOperation = 0;
        }

        [(MREffect *)self _loadForTime:a4 inContext:a5 withArguments:a3];
      }

      else if (!mPreloadOperation)
      {
        v13 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", a3), @"time", a4, @"context", a5, @"arguments", 0}];
        v14 = [[NSInvocationOperation alloc] initWithTarget:self selector:"loadWithArguments:" object:v13];
        self->mPreloadOperation = v14;
        [(NSOperation *)v14 setQualityOfService:9];
        [v11 addOperation:self->mPreloadOperation];
      }
    }

    objc_sync_exit(self);
  }
}

- (void)loadWithArguments:(id)a3
{
  pthread_setname_np([[NSString stringWithFormat:?];
  objc_sync_enter(self);
  if (self->mEffectID)
  {
    mPreloadOperation = self->mPreloadOperation;
    if (mPreloadOperation)
    {

      self->mPreloadOperation = 0;
      [objc_msgSend(a3 objectForKey:{@"time", "doubleValue"}];
      -[MREffect _loadForTime:inContext:withArguments:](self, "_loadForTime:inContext:withArguments:", [a3 objectForKey:@"context"], objc_msgSend(a3, "objectForKey:", @"arguments"), v6);
    }
  }

  objc_sync_exit(self);

  pthread_setname_np("");
}

- (void)unload
{
  objc_sync_enter(self);
  if (self->mEffectID)
  {
    mPreloadOperation = self->mPreloadOperation;
    if (mPreloadOperation)
    {
      [(NSOperation *)mPreloadOperation cancel];

      self->mPreloadOperation = 0;
    }

    [(MREffect *)self _unload];

    self->mOutputImage = 0;
    self->mMultiImageSlideRange.location = 0;
    self->mMultiImageSlideRange.length = 0;

    self->_panoramaPanningOffsets = 0;
  }

  objc_sync_exit(self);
}

- (void)cancelLoading
{
  objc_sync_enter(self);
  if (self->mEffectID)
  {
    mPreloadOperation = self->mPreloadOperation;
    if (mPreloadOperation)
    {
      [(NSOperation *)mPreloadOperation cancel];

      self->mPreloadOperation = 0;
    }
  }

  objc_sync_exit(self);
}

- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  if (self->_panoramaPanningOffsets)
  {
    if ([(MRLayer *)self->mEffectLayer isActivated])
    {
      panoramaPanningEndTime = self->_panoramaPanningEndTime;
      if (panoramaPanningEndTime < 0.0)
      {
        self->_panoramaPanningEndTime = a3;
        goto LABEL_9;
      }

      if (panoramaPanningEndTime >= a3)
      {
        self->_panoramaPanningAmount = 1.0;
        goto LABEL_9;
      }

      if (panoramaPanningEndTime + 0.4 > a3)
      {
        self->_panoramaPanningAmount = (cos((a3 - panoramaPanningEndTime) / 0.4 * 3.14159265) + 1.0) * 0.5;
        goto LABEL_9;
      }
    }

    self->_panoramaPanningOffsets = 0;
  }

LABEL_9:
  if (![(MREffect *)self isLoadedForTime:a3]&& self->mPhaseInDuration + self->mMainDuration + self->mPhaseOutDuration > a3)
  {
    [(MREffect *)self loadForTime:a4 inContext:a5 withArguments:a3 >= 0.0 now:a3];
  }

  return 1;
}

- (void)renderAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  v7 = objc_opt_class();
  NSLog(@"Method renderAtTime must be implemented in class %@!\n", v7);

  [(MREffect *)self doesNotRecognizeSelector:a2];
}

- (id)retainedByUserRenderedImageAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  v9 = [a4 beginLocalContextWithSize:objc_msgSend(a4 backgroundColor:"backColor" state:{0, 0), &v14, self->mPixelSize.width, self->mPixelSize.height}];
  v10 = self->mPixelSize.width / self->mPixelSize.height;
  *&v10 = v10;
  [v9 setLocalAspectRatio:v10];
  v11 = +[EAGLContext currentContext];
  v12 = v11;
  if (v11 != [v9 glContext])
  {
    +[EAGLContext setCurrentContext:](EAGLContext, "setCurrentContext:", [v9 glContext]);
  }

  [(MREffect *)self renderAtTime:v9 inContext:a5 withArguments:a3];
  if (+[EAGLContext currentContext]!= v11)
  {
    [EAGLContext setCurrentContext:v11];
  }

  return [a4 retainedByUserImageByEndingLocalContext:v9 andRestoreState:&v14];
}

- (id)patchworkAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  if (self->mPixelSize.width <= 0.0 || self->mPixelSize.height <= 0.0)
  {
    return 0;
  }

  v6 = [(MREffect *)self retainedByUserRenderedImageAtTime:a4 inContext:a5 withArguments:a3];
  [a4 localAspectRatio];
  v8 = [[NSDictionary alloc] initWithObjectsAndKeys:{objc_msgSend(v6, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", -1.0, 2.0 / v7 * -0.5, 2.0, 2.0 / v7), @"rectangle", 0}];
  v9 = [NSArray arrayWithObject:v8];

  [v6 releaseByUser];
  return v9;
}

- (CGSize)_maxSizeForTextElement:(id)a3
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)pixelSize
{
  width = self->mPixelSize.width;
  height = self->mPixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_NSRange)multiImageSlideRange
{
  length = self->mMultiImageSlideRange.length;
  location = self->mMultiImageSlideRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end