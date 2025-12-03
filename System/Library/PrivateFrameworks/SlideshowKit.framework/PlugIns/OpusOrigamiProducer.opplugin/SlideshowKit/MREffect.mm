@interface MREffect
+ (id)retainedEffectWithEffectID:(id)d forEffectLayer:(id)layer;
- (BOOL)hasMoreSlidesFromTime:(double)time backwards:(BOOL)backwards startTime:(double *)startTime duration:(double *)duration;
- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (BOOL)startPanoramaPanningForElementID:(id)d isLandscape:(BOOL *)landscape;
- (CGSize)_maxSizeForTextElement:(id)element;
- (CGSize)pixelSize;
- (MREffect)initWithEffectID:(id)d;
- (_NSRange)multiImageSlideRange;
- (double)_computePhaseTimeForTime:(double)time;
- (double)_computeTimeForPhaseTime:(double)time;
- (double)valueForPanoramaPanningForElementID:(id)d value:(double)value minValue:(double)minValue maxValue:(double)maxValue;
- (id)patchworkAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (id)retainedByUserRenderedImageAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (void)cancelLoading;
- (void)cleanup;
- (void)dealloc;
- (void)getLazyDuration:(double *)duration lazyFactor:(double *)factor animationDuration:(double *)animationDuration fromInterestingTime:(double)time;
- (void)loadForTime:(double)time inContext:(id)context withArguments:(id)arguments now:(BOOL)now;
- (void)loadWithArguments:(id)arguments;
- (void)releaseByEffectLayer:(id)layer;
- (void)renderAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (void)setAttributes:(id)attributes;
- (void)setPhaseInDuration:(double)duration mainDuration:(double)mainDuration phaseOutDuration:(double)outDuration;
- (void)setPixelSize:(CGSize)size;
- (void)unload;
- (void)updatePanoramaPanningForElementID:(id)d withDelta:(double)delta;
@end

@implementation MREffect

+ (id)retainedEffectWithEffectID:(id)d forEffectLayer:(id)layer
{
  v5 = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
  v6 = v5;
  if (v5)
  {
    [v5 retainByEffectLayer:layer];
  }

  return v6;
}

- (MREffect)initWithEffectID:(id)d
{
  v4 = [(MREffect *)self init];
  if (v4)
  {
    v4->mEffectID = [d copy];
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

- (void)releaseByEffectLayer:(id)layer
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

- (void)setPhaseInDuration:(double)duration mainDuration:(double)mainDuration phaseOutDuration:(double)outDuration
{
  self->mPhaseInDuration = duration;
  self->mMainDuration = mainDuration;
  self->mPhaseOutDuration = outDuration;
}

- (double)_computePhaseTimeForTime:(double)time
{
  mPhaseInDuration = self->mPhaseInDuration;
  if (mPhaseInDuration >= time)
  {
    v7 = 0.0;
    if (mPhaseInDuration > 0.0)
    {
      return self->mDefaultPhaseInDuration * time / mPhaseInDuration;
    }
  }

  else
  {
    mMainDuration = self->mMainDuration;
    mDefaultPhaseInDuration = self->mDefaultPhaseInDuration;
    if (mPhaseInDuration + mMainDuration <= time)
    {
      v8 = mDefaultPhaseInDuration + self->mDefaultMainDuration;
      mPhaseOutDuration = self->mPhaseOutDuration;
      v10 = 0.0;
      if (mPhaseOutDuration > 0.0)
      {
        v10 = (time - mPhaseInDuration - mMainDuration) * self->mDefaultPhaseOutDuration / mPhaseOutDuration;
      }

      return v8 + v10;
    }

    else
    {
      v6 = 0.0;
      if (mMainDuration > 0.0)
      {
        v6 = (time - mPhaseInDuration) * self->mDefaultMainDuration / mMainDuration;
      }

      return mDefaultPhaseInDuration + v6;
    }
  }

  return v7;
}

- (double)_computeTimeForPhaseTime:(double)time
{
  mDefaultPhaseInDuration = self->mDefaultPhaseInDuration;
  if (mDefaultPhaseInDuration >= time)
  {
    v7 = 0.0;
    if (mDefaultPhaseInDuration > 0.0)
    {
      return self->mPhaseInDuration * time / mDefaultPhaseInDuration;
    }
  }

  else
  {
    mDefaultMainDuration = self->mDefaultMainDuration;
    mPhaseInDuration = self->mPhaseInDuration;
    if (mDefaultPhaseInDuration + mDefaultMainDuration <= time)
    {
      v8 = mPhaseInDuration + self->mMainDuration;
      mDefaultPhaseOutDuration = self->mDefaultPhaseOutDuration;
      v10 = 0.0;
      if (mDefaultPhaseOutDuration > 0.0)
      {
        v10 = (time - mDefaultPhaseInDuration - mDefaultMainDuration) * self->mPhaseOutDuration / mDefaultPhaseOutDuration;
      }

      return v8 + v10;
    }

    else
    {
      v6 = 0.0;
      if (mDefaultMainDuration > 0.0)
      {
        v6 = (time - mDefaultPhaseInDuration) * self->mMainDuration / mDefaultMainDuration;
      }

      return mPhaseInDuration + v6;
    }
  }

  return v7;
}

- (void)setPixelSize:(CGSize)size
{
  if (size.width != self->mPixelSize.width || size.height != self->mPixelSize.height)
  {
    self->mPixelSize = size;
    *&self->mNeedsToUpdateSlides = 257;
  }
}

- (void)setAttributes:(id)attributes
{
  mAttributes = self->mAttributes;
  if (mAttributes != attributes)
  {
    v16 = v5;
    v17 = v4;
    v18 = v3;
    if (mAttributes)
    {

      self->mAttributes = 0;
    }

    self->mAttributes = attributes;

    v14 = objc_alloc_init(NSMutableDictionary);
    v15 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    if (v15)
    {
      [(NSDictionary *)v14 addEntriesFromDictionary:v15];
    }

    [(NSDictionary *)v14 addEntriesFromDictionary:attributes, v8, v7, v6, v16, v17, v18, v9, v10];
    self->mFlattenedAttributes = v14;
    self->mSeed = [objc_msgSend(attributes objectForKey:{@"RandomSeed", "unsignedIntegerValue"}];
    self->mNeedsToUpdateAttributes = 1;
  }
}

- (BOOL)hasMoreSlidesFromTime:(double)time backwards:(BOOL)backwards startTime:(double *)startTime duration:(double *)duration
{
  v8 = [(MRLayerEffect *)self->mEffectLayer hasSlides:backwards];
  if (v8)
  {
    LOBYTE(v8) = time < 0.0 || self->mPhaseInDuration + self->mMainDuration + self->mPhaseOutDuration <= time;
  }

  return v8;
}

- (void)getLazyDuration:(double *)duration lazyFactor:(double *)factor animationDuration:(double *)animationDuration fromInterestingTime:(double)time
{
  *duration = self->mMainDuration;
  *factor = 0.0;
  *animationDuration = self->mPhaseOutDuration;
}

- (BOOL)startPanoramaPanningForElementID:(id)d isLandscape:(BOOL *)landscape
{
  if (!self->_panoramaPanningOffsets)
  {
    self->_panoramaPanningOffsets = objc_alloc_init(NSMutableDictionary);
  }

  self->_panoramaPanningEndTime = 1000000000.0;
  return 1;
}

- (void)updatePanoramaPanningForElementID:(id)d withDelta:(double)delta
{
  [-[NSMutableDictionary objectForKey:](self->_panoramaPanningOffsets "objectForKey:"floatValue"")];
  v8 = v7 + delta;
  panoramaPanningOffsets = self->_panoramaPanningOffsets;
  *&v8 = v8;
  v10 = [NSNumber numberWithFloat:v8];

  [(NSMutableDictionary *)panoramaPanningOffsets setObject:v10 forKey:d];
}

- (double)valueForPanoramaPanningForElementID:(id)d value:(double)value minValue:(double)minValue maxValue:(double)maxValue
{
  [-[NSMutableDictionary objectForKey:](self->_panoramaPanningOffsets "objectForKey:"floatValue"")];
  v12 = value - v11;
  if (v12 >= minValue)
  {
    minValue = v12;
    if (v12 > maxValue)
    {
      minValue = maxValue;
    }
  }

  v13 = value - minValue;
  *&v13 = value - minValue;
  [(NSMutableDictionary *)self->_panoramaPanningOffsets setObject:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v13], d];
  return value + (minValue - value) * self->_panoramaPanningAmount;
}

- (void)loadForTime:(double)time inContext:(id)context withArguments:(id)arguments now:(BOOL)now
{
  if (![(MREffect *)self isLoadedForTime:?]&& (now || !self->mPreloadOperation))
  {
    objc_sync_enter(self);
    if (self->mEffectID)
    {
      preloadQueue = [arguments preloadQueue];
      mPreloadOperation = self->mPreloadOperation;
      if (now || !preloadQueue)
      {
        if (mPreloadOperation)
        {
          [(NSOperation *)mPreloadOperation cancel];

          self->mPreloadOperation = 0;
        }

        [(MREffect *)self _loadForTime:context inContext:arguments withArguments:time];
      }

      else if (!mPreloadOperation)
      {
        v13 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", time), @"time", context, @"context", arguments, @"arguments", 0}];
        v14 = [[NSInvocationOperation alloc] initWithTarget:self selector:"loadWithArguments:" object:v13];
        self->mPreloadOperation = v14;
        [(NSOperation *)v14 setQualityOfService:9];
        [preloadQueue addOperation:self->mPreloadOperation];
      }
    }

    objc_sync_exit(self);
  }
}

- (void)loadWithArguments:(id)arguments
{
  pthread_setname_np([[NSString stringWithFormat:?];
  objc_sync_enter(self);
  if (self->mEffectID)
  {
    mPreloadOperation = self->mPreloadOperation;
    if (mPreloadOperation)
    {

      self->mPreloadOperation = 0;
      [objc_msgSend(arguments objectForKey:{@"time", "doubleValue"}];
      -[MREffect _loadForTime:inContext:withArguments:](self, "_loadForTime:inContext:withArguments:", [arguments objectForKey:@"context"], objc_msgSend(arguments, "objectForKey:", @"arguments"), v6);
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

- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  if (self->_panoramaPanningOffsets)
  {
    if ([(MRLayer *)self->mEffectLayer isActivated])
    {
      panoramaPanningEndTime = self->_panoramaPanningEndTime;
      if (panoramaPanningEndTime < 0.0)
      {
        self->_panoramaPanningEndTime = time;
        goto LABEL_9;
      }

      if (panoramaPanningEndTime >= time)
      {
        self->_panoramaPanningAmount = 1.0;
        goto LABEL_9;
      }

      if (panoramaPanningEndTime + 0.4 > time)
      {
        self->_panoramaPanningAmount = (cos((time - panoramaPanningEndTime) / 0.4 * 3.14159265) + 1.0) * 0.5;
        goto LABEL_9;
      }
    }

    self->_panoramaPanningOffsets = 0;
  }

LABEL_9:
  if (![(MREffect *)self isLoadedForTime:time]&& self->mPhaseInDuration + self->mMainDuration + self->mPhaseOutDuration > time)
  {
    [(MREffect *)self loadForTime:context inContext:arguments withArguments:time >= 0.0 now:time];
  }

  return 1;
}

- (void)renderAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  v7 = objc_opt_class();
  NSLog(@"Method renderAtTime must be implemented in class %@!\n", v7);

  [(MREffect *)self doesNotRecognizeSelector:a2];
}

- (id)retainedByUserRenderedImageAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  v9 = [context beginLocalContextWithSize:objc_msgSend(context backgroundColor:"backColor" state:{0, 0), &v14, self->mPixelSize.width, self->mPixelSize.height}];
  v10 = self->mPixelSize.width / self->mPixelSize.height;
  *&v10 = v10;
  [v9 setLocalAspectRatio:v10];
  v11 = +[EAGLContext currentContext];
  v12 = v11;
  if (v11 != [v9 glContext])
  {
    +[EAGLContext setCurrentContext:](EAGLContext, "setCurrentContext:", [v9 glContext]);
  }

  [(MREffect *)self renderAtTime:v9 inContext:arguments withArguments:time];
  if (+[EAGLContext currentContext]!= v11)
  {
    [EAGLContext setCurrentContext:v11];
  }

  return [context retainedByUserImageByEndingLocalContext:v9 andRestoreState:&v14];
}

- (id)patchworkAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  if (self->mPixelSize.width <= 0.0 || self->mPixelSize.height <= 0.0)
  {
    return 0;
  }

  v6 = [(MREffect *)self retainedByUserRenderedImageAtTime:context inContext:arguments withArguments:time];
  [context localAspectRatio];
  v8 = [[NSDictionary alloc] initWithObjectsAndKeys:{objc_msgSend(v6, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", -1.0, 2.0 / v7 * -0.5, 2.0, 2.0 / v7), @"rectangle", 0}];
  v9 = [NSArray arrayWithObject:v8];

  [v6 releaseByUser];
  return v9;
}

- (CGSize)_maxSizeForTextElement:(id)element
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