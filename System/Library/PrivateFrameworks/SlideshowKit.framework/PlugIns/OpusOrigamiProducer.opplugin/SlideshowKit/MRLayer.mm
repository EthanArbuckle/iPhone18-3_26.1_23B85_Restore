@interface MRLayer
+ (MRLayer)layerWithPlug:(id)plug andParameters:(id)parameters inSuperlayer:(id)superlayer;
- (BOOL)_setStateValue:(id)value forKey:(id)key;
- (BOOL)isFlatAndSquare;
- (BOOL)isNative3D;
- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (BOOL)shouldBeActivatedAtTime:(double)time;
- (BOOL)shouldBePreactivatedAtTime:(double)time;
- (CGPoint)convertGlobalPoint:(CGPoint)point;
- (CGPoint)convertLocalPoint:(CGPoint)point;
- (CGSize)pixelSize;
- (MCTransitionTrigger)nextTransition;
- (MCTransitionTrigger)previousTransition;
- (MRLayer)initWithParameters:(id)parameters;
- (MRLayer)initWithPlug:(id)plug andParameters:(id)parameters inSuperlayer:(id)superlayer;
- (double)_serial_gotoNextWithObject:(id)object;
- (double)_serial_gotoPreviousWithObject:(id)object;
- (double)doActionTrigger:(id)trigger;
- (double)doAnimationTrigger:(id)trigger;
- (double)doGenericAction:(id)action;
- (double)doMotionTrigger:(id)trigger;
- (double)doStateOperation:(id)operation;
- (double)duration;
- (double)opacity;
- (double)phaseInDuration;
- (double)phaseOutDuration;
- (id)__retainedByUserRenderedImageAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (id)_currentState;
- (id)_dumpLayerWithOptions:(unint64_t)options;
- (id)patchworkAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (id)retainedByUserRenderedImageAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (void)_applyState:(id)state;
- (void)_observePlug;
- (void)_observePlugOnPreactivate;
- (void)_queueLayerCommand:(int)command object:(id)object;
- (void)_rebuildAudio;
- (void)_sendAction:(id)action withStates:(id)states async:(BOOL)async yesterday:(BOOL)yesterday;
- (void)_setPlug:(id)plug andSuperlayer:(id)superlayer;
- (void)_setScissorRectOnContext:(id)context saveTo:(int *)to;
- (void)_unobservePlug;
- (void)_unobservePlugOnDepreactivate;
- (void)_updateStateWithContext:(id)context;
- (void)activate;
- (void)animateOpacityTo:(double)to withDuration:(double)duration;
- (void)cleanup;
- (void)deactivate;
- (void)dealloc;
- (void)depreactivate:(BOOL)depreactivate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)preactivate;
- (void)renderAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (void)resumeOrPause:(BOOL)pause;
- (void)scheduleForDestruction;
- (void)setDuration:(double)duration;
- (void)setOpacity:(double)opacity;
- (void)setPhaseInDuration:(double)duration;
- (void)setPhaseOutDuration:(double)duration;
- (void)setPixelSize:(CGSize)size;
- (void)stampTime;
- (void)synchronizeTime;
- (void)updateGeometry;
@end

@implementation MRLayer

- (MRLayer)initWithPlug:(id)plug andParameters:(id)parameters inSuperlayer:(id)superlayer
{
  v8 = [(MRLayer *)self init];
  if (!v8)
  {
    return v8;
  }

  v8->mSuperlayer = superlayer;
  v8->mUUID = [objc_msgSend(plug "objectID")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([-[NSDictionary objectForKey:](v8->mParameters objectForKey:{@"readonly", "BOOLValue"}] & 1) == 0)
  {
    v10 = [parameters mutableCopy];
    v8->mParameters = v10;
    [(NSDictionary *)v10 setObject:&__kCFBooleanTrue forKey:@"readonly"];
    mParameters = v8->mParameters;
  }

  else
  {
    mParameters = parameters;
    v8->mParameters = mParameters;
  }

  v8->mRenderer = [(NSDictionary *)mParameters objectForKey:@"renderer"];
  v11 = [-[NSDictionary objectForKey:](v8->mParameters objectForKey:{@"precomputing", "BOOLValue"}];
  v8->mIsPrecomputing = v11;
  if (v11)
  {
    LOBYTE(v12) = 0;
    v8->mIsReadonly = 1;
  }

  else
  {
    v13 = [-[NSDictionary objectForKey:](v8->mParameters objectForKey:{@"readonly", "BOOLValue"}];
    mIsPrecomputing = v8->mIsPrecomputing;
    v8->mIsReadonly = v13;
    if (mIsPrecomputing)
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      v12 = [-[NSDictionary objectForKey:](v8->mParameters objectForKey:{@"noAudio", "BOOLValue"}] ^ 1;
    }
  }

  v8->mDoAudio = v12;
  v15 = [objc_msgSend(plug "container")];
  if (v15)
  {
    v8->mPersistentState = [[NSMutableDictionary alloc] initWithDictionary:v15];
  }

  v8->mPixelSize = CGSizeZero;
  v8->mNeedsToUpdateGeometry = 1;
  mDoAudio = v8->mDoAudio;
  v8->mNeedsToRequestRebuildAudio = mDoAudio;
  v8->mNeedsToRequestRebuildVolume = mDoAudio;
  *&v8->mIsPreactivated = 0;
  v8->mIsSelected = 0;
  *&v8->mTimeStamp = xmmword_163380;
  v8->mLayerCommandQueue = objc_alloc_init(NSMutableArray);
  v8->mIsScheduledForDestruction = 0;
  v8->mPlug = plug;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mPlug = v8->mPlug;
  }

  else
  {
    mPlug = 0;
  }

  v8->mPlugAsSerial = mPlug;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v8->mPlug;
  }

  else
  {
    v18 = 0;
  }

  v8->mPlugAsParallel = v18;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  mPlugAsParallel = 0;
  if (isKindOfClass)
  {
    mPlugAsParallel = v8->mPlug;
  }

  v8->mPlugAsHaven = mPlugAsParallel;
  if (v8->mPlugAsParallel)
  {
    [(MCPlugParallel *)v8->mPlugAsParallel timeIn];
    mPlugAsParallel = v8->mPlugAsParallel;
    v8->mTimeIn = v21;
    if (mPlugAsParallel)
    {
LABEL_28:
      v8->mIDInSupercontainer = [(NSString *)[(MCPlugHaven *)mPlugAsParallel idInSupercontainer] copy];
      return v8;
    }

    goto LABEL_26;
  }

  if (superlayer)
  {
    v8->mTimeIn = 1.0e36;
LABEL_26:
    mPlugAsParallel = v8->mPlugAsHaven;
  }

  if (mPlugAsParallel)
  {
    goto LABEL_28;
  }

  mPlugAsSerial = v8->mPlugAsSerial;
  if (mPlugAsSerial)
  {
    v8->mIndex = [(MCPlugSerial *)mPlugAsSerial index];
  }

  return v8;
}

- (MRLayer)initWithParameters:(id)parameters
{
  v4 = [(MRLayer *)self init];
  if (v4)
  {
    v5 = CFUUIDCreate(kCFAllocatorDefault);
    v6 = CFUUIDCreateString(kCFAllocatorDefault, v5);
    v4->mUUID = [[NSString alloc] initWithFormat:@"/%@", v6];
    CFRelease(v6);
    CFRelease(v5);
    parametersCopy = parameters;
    v4->mParameters = parametersCopy;
    v4->mRenderer = [(NSDictionary *)parametersCopy objectForKey:@"renderer"];
    v8 = [-[NSDictionary objectForKey:](v4->mParameters objectForKey:{@"precomputing", "BOOLValue"}];
    v4->mIsPrecomputing = v8;
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = [-[NSDictionary objectForKey:](v4->mParameters objectForKey:{@"noAudio", "BOOLValue"}] ^ 1;
    }

    v4->mDoAudio = v9;
    v4->mNeedsToUpdateGeometry = 1;
    v4->mNeedsToRequestRebuildAudio = v9;
    v4->mNeedsToRequestRebuildVolume = v9;
    v4->mTimeStamp = 1.0;
    v4->mLayerCommandQueue = objc_alloc_init(NSMutableArray);
    v4->mTimeIn = 1.0e36;
    v4->_isAdhocLayer = 1;
  }

  return v4;
}

- (void)dealloc
{
  [(MRLayer *)self cleanup];
  v3.receiver = self;
  v3.super_class = MRLayer;
  [(MRLayer *)&v3 dealloc];
}

- (void)cleanup
{
  if (self->mUUID)
  {
    if (!self->mIsReadonly && !self->mIsScheduledForDestruction && !self->_isAdhocLayer)
    {
      [(MRLayer *)self _unobservePlug];
    }

    if (self->mIsActivated)
    {
      [(MRLayer *)self deactivate];
    }

    if (self->mIsPreactivated)
    {
      [(MRLayer *)self depreactivate:0];
    }

    self->mSuperlayer = 0;
    self->mRenderer = 0;

    self->mParameters = 0;
    self->mPersistentState = 0;
    mIDInSupercontainer = self->mIDInSupercontainer;
    if (mIDInSupercontainer)
    {

      self->mIDInSupercontainer = 0;
    }

    self->mPlugAsSerial = 0;
    self->mPlugAsParallel = 0;
    self->mPlugAsHaven = 0;

    self->mPlug = 0;
    mParentHelper = self->mParentHelper;
    if (mParentHelper)
    {

      self->mParentHelper = 0;
    }

    mLayerCommandQueue = self->mLayerCommandQueue;
    objc_sync_enter(mLayerCommandQueue);
    [(NSMutableArray *)self->mLayerCommandQueue removeAllObjects];
    v6 = self->mLayerCommandQueue;
    self->mLayerCommandQueue = 0;
    objc_sync_exit(mLayerCommandQueue);

    self->mUUID = 0;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"positionRotationAndSize", object, change, context}] & 1) != 0 || (objc_msgSend(path, "isEqualToString:", @"animationPaths") & 1) != 0 || (objc_msgSend(path, "isEqualToString:", @"opacity") & 1) != 0 || (objc_msgSend(path, "isEqualToString:", @"transition"))
  {
    goto LABEL_15;
  }

  if (![path isEqualToString:@"timeIn"])
  {
    if ([path isEqualToString:@"size"] & 1) != 0 || (objc_msgSend(path, "isEqualToString:", @"currentLayoutIndex"))
    {
      mDoAudio = 1;
      v11 = 193;
      goto LABEL_14;
    }

    if ([path isEqualToString:@"fullDuration"])
    {
      self->mNeedsToResyncClockToPlug = 1;
      mPlugAsParallel = self->mPlugAsParallel;
      if (!mPlugAsParallel || ![(MCPlugParallel *)mPlugAsParallel isTriggered]|| !self->mIsActivated)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

    if ([path isEqualToString:@"container.initialState"])
    {
      mDoAudio = 1;
      v11 = 194;
      goto LABEL_14;
    }

    if ([path isEqualToString:@"audioPlaylist.audioNoVolume"] & 1) != 0 || (objc_msgSend(path, "isEqualToString:", @"numberOfLoops"))
    {
      v13 = 195;
    }

    else
    {
      if (([path isEqualToString:@"audioPlaylist.builtVolume"] & 1) == 0)
      {
LABEL_16:
        if (![path isEqualToString:@"timeStamp"])
        {
          return;
        }

        goto LABEL_19;
      }

      v13 = 196;
    }

    *(&self->super.isa + v13) = self->mDoAudio;
    goto LABEL_16;
  }

  v8 = self->mPlugAsParallel;
  if (v8 && (![(MCPlugParallel *)v8 isTriggered]|| !self->mIsActivated))
  {
    [(MCPlugParallel *)self->mPlugAsParallel timeIn];
    self->mTimeIn = v9;
LABEL_10:
    mDoAudio = self->mDoAudio;
    v11 = 195;
LABEL_14:
    *(&self->super.isa + v11) = mDoAudio;
  }

LABEL_15:
  if (self->mIsPrecomputing)
  {
    goto LABEL_16;
  }

  [(MRLayer *)self->mSuperlayer setNeedsUpdateForPluggerOfSublayer:self];
LABEL_19:

  [(MRLayer *)self stampTime];
}

+ (MRLayer)layerWithPlug:(id)plug andParameters:(id)parameters inSuperlayer:(id)superlayer
{
  [plug container];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = &off_1A4CE0;
  }

  else
  {
    [plug container];
    objc_opt_class();
    v8 = off_1A4CD8;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [plug container];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = off_1A4CD0;
      }
    }
  }

  v9 = [objc_alloc(*v8) initWithPlug:plug andParameters:parameters inSuperlayer:superlayer];

  return v9;
}

- (void)_setPlug:(id)plug andSuperlayer:(id)superlayer
{
  mPlug = self->mPlug;
  if (mPlug)
  {
    if (self->mIsPreactivated)
    {
      [(MRLayer *)self _unobservePlugOnDepreactivate];
      mPlug = self->mPlug;
    }
  }

  plugCopy = plug;
  self->mPlug = plugCopy;
  self->mPlugAsSerial = 0;
  self->mPlugAsParallel = 0;
  self->mPlugAsHaven = 0;
  if (plugCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->mPlugAsParallel = self->mPlug;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->mPlugAsHaven = self->mPlug;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->mPlugAsSerial = self->mPlug;
        }
      }
    }

    if (self->mIsPreactivated)
    {
      [(MRLayer *)self _observePlugOnPreactivate];
    }
  }

  self->mSuperlayer = superlayer;
}

- (void)setPixelSize:(CGSize)size
{
  if (size.width != self->mPixelSize.width || size.height != self->mPixelSize.height)
  {
    self->mPixelSize = size;
    if (!self->mIsPrecomputing)
    {
      [(MRLayer *)self stampTime];
    }
  }
}

- (void)updateGeometry
{
  if (self->mPlugAsParallel)
  {
    mSuperlayer = self->mSuperlayer;
    if (mSuperlayer)
    {
      [(MRLayer *)mSuperlayer pixelSize];
      v5 = v4;
      v7 = v6;
      [(MCPlugParallel *)self->mPlugAsParallel sizeForParentAspectRatio:v4 / v6];
      v9 = round(v5 * v8 * 0.5);
      v11 = round(v7 * v10 * 0.5);
LABEL_8:
      [(MRLayer *)self setPixelSize:v9, v11];
    }
  }

  else
  {
    if (!self->mPlugAsSerial && !self->mPlugAsHaven)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_9;
      }

      [(MRRenderer *)self->mRenderer size];
      goto LABEL_8;
    }

    v12 = self->mSuperlayer;
    if (v12)
    {
      [(MRLayer *)v12 pixelSize];
      goto LABEL_8;
    }
  }

LABEL_9:
  self->mNeedsToUpdateGeometry = 0;
}

- (void)resumeOrPause:(BOOL)pause
{
  if (self->mDoAudio)
  {
    mAudioPlayer = self->mAudioPlayer;
    if (mAudioPlayer)
    {
      pauseCopy = pause;
      if (pause)
      {
        [(MRAudioPlayer *)mAudioPlayer resyncAudioItem];
        mAudioPlayer = self->mAudioPlayer;
      }

      [(MRAudioPlayer *)mAudioPlayer setShouldBePlaying:pauseCopy];
    }
  }
}

- (void)synchronizeTime
{
  mAudioPlayer = self->mAudioPlayer;
  if (mAudioPlayer)
  {
    [(MRAudioPlayer *)mAudioPlayer resyncAudioItem];
  }
}

- (double)duration
{
  mClock = self->mClock;
  if (!mClock)
  {
    mClock = self->mPlug;
  }

  [mClock fullDuration];
  return result;
}

- (void)setDuration:(double)duration
{
  mClock = self->mClock;
  if (mClock)
  {

    [(MRLayerClock *)mClock setFullDuration:duration];
  }

  else
  {
    NSLog(@"Inconsistency error: setting duration on depreactivated layer", a2, duration);
  }
}

- (double)phaseInDuration
{
  mClock = self->mClock;
  if (!mClock)
  {
    mClock = self->mPlug;
  }

  [mClock phaseInDuration];
  return result;
}

- (void)setPhaseInDuration:(double)duration
{
  [(MCPlug *)self->mPlug setPhaseInDuration:?];
  mClock = self->mClock;
  if (mClock)
  {

    [(MRLayerClock *)mClock setPhaseInDuration:duration];
  }
}

- (double)phaseOutDuration
{
  mClock = self->mClock;
  if (!mClock)
  {
    mClock = self->mPlug;
  }

  [mClock phaseOutDuration];
  return result;
}

- (void)setPhaseOutDuration:(double)duration
{
  [(MCPlug *)self->mPlug setPhaseOutDuration:?];
  mClock = self->mClock;
  if (mClock)
  {

    [(MRLayerClock *)mClock setPhaseOutDuration:duration];
  }
}

- (double)opacity
{
  mRenderingState = self->mRenderingState;
  if (mRenderingState)
  {
    return mRenderingState->var11;
  }

  [(MCPlugParallel *)self->mPlugAsParallel opacity];
  return result;
}

- (void)setOpacity:(double)opacity
{
  mParentHelper = self->mParentHelper;
  [(MCPlugParallel *)self->mPlugAsParallel setOpacity:?];
  [objc_msgSend(mParentHelper "plug")];
  [mParentHelper setOpacityAnimationPath:0];
  mRenderingState = self->mRenderingState;
  if (mRenderingState)
  {
    opacityCopy = opacity;
    mRenderingState->var11 = opacityCopy;
  }
}

- (void)animateOpacityTo:(double)to withDuration:(double)duration
{
  if (duration <= 0.0)
  {

    [(MRLayer *)self setOpacity:?];
  }

  else
  {
    mParentHelper = self->mParentHelper;
    v8 = [MCAnimationPathKeyframed animationPathWithKey:@"opacity"];
    mRenderingState = self->mRenderingState;
    if (mRenderingState)
    {
      var11 = mRenderingState->var11;
    }

    else
    {
      [(MCPlugParallel *)self->mPlugAsParallel opacity];
      var11 = v11;
    }

    [(MRLayerClock *)self->mClock externalTime];
    v13 = v12;
    *&v12 = var11;
    [v8 createKeyframeWithScalar:100 atTime:v12 offsetKind:v13];
    [(MRLayerClock *)self->mClock externalTime];
    v16 = v15 + duration;
    toCopy = to;
    *&v15 = toCopy;
    [v8 createKeyframeWithScalar:100 atTime:v15 offsetKind:v16];

    [mParentHelper setOpacityAnimationPath:v8];
  }
}

- (void)preactivate
{
  self->mIsPreactivated = 1;
  self->mClock = [[MRLayerClock alloc] initWithPlug:self->mPlug];
  if (!self->mIsReadonly)
  {
    [(MRLayer *)self _observePlugOnPreactivate];
  }

  if (self->mDoAudio)
  {
    *&self->mNeedsToRequestRebuildAudio = 257;
  }
}

- (void)activate
{
  self->mIsActivated = 1;
  self->mNeedsRendering = 1;
  v3 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1000040F899A5DCuLL);
  self->mRenderingState = v3;
  *&v3->var4 = xmmword_1633A0;
  *&v3->var8 = xmmword_163390;
  *&v3->var0 = xmmword_1633B0;
  [(MRLayerClock *)self->mClock reactivateWithPlug:self->mPlug];
  v4 = [(MCPlug *)self->mPlug actionForKey:@"onPhaseIn"];
  if (v4)
  {
    [(MRLayer *)self _sendAction:v4 withStates:0 async:0 yesterday:0];
  }

  if (!self->mIsPrecomputing && ![(MRRenderer *)self->mRenderer isOffscreen])
  {
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = kMRNotificationLayerIsIn;

    [(NSNotificationCenter *)v5 postNotificationName:v6 object:self];
  }
}

- (void)deactivate
{
  v3 = [(MCPlug *)self->mPlug actionForKey:@"onCompletion"];
  if (v3)
  {
    [(MRLayer *)self _sendAction:v3 withStates:0 async:0 yesterday:0];
  }

  [(MRLayer *)self resumeOrPause:0];
  [(MRLayerClock *)self->mClock deactivate];
  self->mIsActivated = 0;
  free(self->mRenderingState);
  self->mRenderingState = 0;
  [(NSMutableDictionary *)self->mAnimationTriggers removeAllObjects];
  [(NSMutableDictionary *)self->mMotions removeAllObjects];
  if (!self->mIsPrecomputing && ![(MRRenderer *)self->mRenderer isOffscreen])
  {
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = kMRNotificationLayerIsOut;

    [(NSNotificationCenter *)v4 postNotificationName:v5 object:self];
  }
}

- (void)depreactivate:(BOOL)depreactivate
{
  self->mIsPreactivated = 0;

  self->mClock = 0;
  mAnimationTriggers = self->mAnimationTriggers;
  if (mAnimationTriggers)
  {

    self->mAnimationTriggers = 0;
  }

  mMotions = self->mMotions;
  if (mMotions)
  {

    self->mMotions = 0;
  }

  if (!self->mIsReadonly)
  {
    [(MRLayer *)self _unobservePlugOnDepreactivate];
  }

  mPlugAsParallel = self->mPlugAsParallel;
  if (!mPlugAsParallel || [(MCPlugParallel *)mPlugAsParallel isTriggered])
  {
    self->mTimeIn = 1.0e36;
  }

  [(MRLayer *)self unload];
  if (self->mDoAudio)
  {
    if (self->mAudioPlayer)
    {
      [(MRRenderer *)self->mRenderer removeAudioObject:?];

      self->mAudioPlayer = 0;
    }
  }
}

- (BOOL)shouldBePreactivatedAtTime:(double)time
{
  if (time < -6.0)
  {
    return 0;
  }

  [(MRLayer *)self duration];
  return v5 + 0.1 > time;
}

- (BOOL)shouldBeActivatedAtTime:(double)time
{
  if (time < 0.0)
  {
    return 0;
  }

  [(MRLayer *)self duration];
  return v5 > time;
}

- (BOOL)isNative3D
{
  _isNative3D = [(MRLayer *)self _isNative3D];
  if (_isNative3D)
  {
    LOBYTE(_isNative3D) = self->_filterID == 0;
  }

  return _isNative3D;
}

- (BOOL)isFlatAndSquare
{
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  MRMatrix_MultiplyWithMatrix(self->mRenderingState->var13, self->mRenderingState->var14, &v3);
  result = 0;
  if (*&v4 == 0.0 && *&v5 == 0.0 && *(&v3 + 1) == 0.0 && *(&v5 + 1) == 0.0 && *(&v3 + 2) == 0.0)
  {
    return *(&v4 + 2) == 0.0;
  }

  return result;
}

- (void)_setScissorRectOnContext:(id)context saveTo:(int *)to
{
  v6 = self->mPixelSize.height / self->mPixelSize.width;
  memset(v26, 0, sizeof(v26));
  MRMatrix_MultiplyWithMatrix(self->mRenderingState->var13, self->mRenderingState->var14, v26);
  v7 = MRMatrix_ProjectPoint(v26, -1.0, -v6);
  v9 = v8;
  v10 = (v7 + 1.0) * 0.5;
  [context pixelSize];
  v12 = v11 * v10;
  [context pixelSize];
  v14 = (v9 + 1.0) * 0.5 * v13;
  v15 = MRMatrix_ProjectPoint(v26, 1.0, v6);
  v17 = v16;
  v18 = (v15 + 1.0) * 0.5;
  [context pixelSize];
  v20 = v19 * v18;
  [context pixelSize];
  v22 = (v17 + 1.0) * 0.5 * v21;
  v27[0] = v12;
  if ([context isFlipped])
  {
    v23 = v22;
  }

  else
  {
    v23 = v14;
  }

  v27[1] = v23;
  v27[2] = (v20 - v12);
  isFlipped = [context isFlipped];
  v25 = v14 - v22;
  if (!isFlipped)
  {
    v25 = v22 - v14;
  }

  v27[3] = v25;
  [context setScissorRect:v27 saveTo:to];
}

- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  mPlugAsParallel = self->mPlugAsParallel;
  if (mPlugAsParallel)
  {
    mIDInSupercontainer = self->mIDInSupercontainer;
    if (mIDInSupercontainer != [(MCPlugParallel *)mPlugAsParallel idInSupercontainer])
    {

      v10 = self->mPlugAsParallel;
LABEL_7:
      self->mIDInSupercontainer = [objc_msgSend(v10 "idInSupercontainer")];
    }
  }

  else
  {
    mPlugAsHaven = self->mPlugAsHaven;
    if (mPlugAsHaven)
    {
      v12 = self->mIDInSupercontainer;
      if (v12 != [(MCPlugHaven *)mPlugAsHaven idInSupercontainer])
      {

        v10 = self->mPlugAsHaven;
        goto LABEL_7;
      }
    }

    else
    {
      mPlugAsSerial = self->mPlugAsSerial;
      if (mPlugAsSerial)
      {
        self->mIndex = [(MCPlugSerial *)mPlugAsSerial index];
      }
    }
  }

  if (!self->mIsPreactivated)
  {
    return 0;
  }

  if (self->mNeedsToUpdateInitialState)
  {
    self->mNeedsToUpdateInitialState = 0;
    initialState = [(MCContainer *)[(MCPlug *)self->mPlug container] initialState];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v14 = [(NSDictionary *)initialState countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v60;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v60 != v16)
          {
            objc_enumerationMutation(initialState);
          }

          [(MRLayer *)self _setStateValue:[(NSDictionary *)initialState objectForKey:*(*(&v59 + 1) + 8 * i)] forKey:*(*(&v59 + 1) + 8 * i)];
        }

        v15 = [(NSDictionary *)initialState countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v15);
    }
  }

  v18 = self->mIsActivated && self->mNeedsRendering;
  self->mNeedsRendering = 0;
  currentLoopIndex = [(MRLayerClock *)self->mClock currentLoopIndex];
  _isPaused = [(MRLayerClock *)self->mClock _isPaused];
  isInPhaseOut = [(MRLayerClock *)self->mClock isInPhaseOut];
  if (self->mNeedsToResyncClockToPlug)
  {
    self->mNeedsToResyncClockToPlug = 0;
    [(MRLayerClock *)self->mClock syncToPlug:self->mPlug];
  }

  [(MRLayerClock *)self->mClock updateForExternalTime:time];
  mSuperlayer = self->mSuperlayer;
  if (mSuperlayer)
  {
    [(MRLayerClock *)self->mClock setParentIsPaused:[(MRLayerClock *)[(MRLayer *)mSuperlayer clock] isPaused]];
  }

  if ([arguments forcedState])
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    forcedState = [objc_msgSend(arguments forcedState];
    v24 = [forcedState countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v56;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v56 != v26)
          {
            objc_enumerationMutation(forcedState);
          }

          v28 = [(MCPlug *)self->mPlug actionForKey:*(*(&v55 + 1) + 8 * j)];
          if (v28)
          {
            [(MRLayer *)self _sendAction:v28 withStates:self->mPersistentState async:0 yesterday:1];
          }
        }

        v25 = [forcedState countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v25);
    }
  }

  v29 = self->mPlugAsParallel;
  if (v29 && (![(MCPlugParallel *)v29 isTriggered]|| !self->mIsActivated))
  {
    [(MCPlugParallel *)self->mPlugAsParallel timeIn];
    self->mTimeIn = v30;
  }

  if (self->mNeedsToUpdateGeometry)
  {
    [(MRLayer *)self updateGeometry];
  }

  isPaused = [(MRLayerClock *)self->mClock isPaused];
  if (self->mDoAudio)
  {
    if (self->mNeedsToRequestRebuildAudio && ![(MRRenderer *)self->mRenderer ignoresBackgroundAudio])
    {
      if (self->mAudioPlayer)
      {
        [(MRRenderer *)self->mRenderer removeAudioObject:?];
      }

      [(MRLayer *)self _rebuildAudio];
      if (self->mAudioPlayer)
      {
        [(MRRenderer *)self->mRenderer addAudioObject:?];
        if (!(isPaused & 1 | !self->mIsActivated))
        {
          [(MRAudioPlayer *)self->mAudioPlayer resyncAudioItem];
          [(MRAudioPlayer *)self->mAudioPlayer setShouldBePlaying:1];
        }
      }
    }

    else if (self->mNeedsToRequestRebuildVolume)
    {
      mAudioPlayer = self->mAudioPlayer;
      if (mAudioPlayer)
      {
        [(MRAudioPlayer *)mAudioPlayer syncVolumeToAudioPlaylist:[(MCContainer *)[(MCPlug *)self->mPlug container] audioPlaylist]];
      }
    }

    *&self->mNeedsToRequestRebuildAudio = 0;
    if (self->mAudioPlayer)
    {
      [(MRLayerClock *)self->mClock containerTime];
      [(MRAudioPlayer *)self->mAudioPlayer setLocalTime:?];
      if ([(MRLayerClock *)self->mClock jumpedBackInTime])
      {
        [(MRAudioPlayer *)self->mAudioPlayer resyncAudioItem];
      }
    }
  }

  if (self->mIsActivated)
  {
    self->mRenderingState->var15 = 1;
    v34 = self->mPlugAsSerial;
    if (!((v34 == 0) | isPaused & 1))
    {
      v35 = self->mSuperlayer;
      transitionID = [(MCPlugSerial *)v34 transitionID];
      v37 = self->mPlugAsSerial;
      if (transitionID)
      {
        [(MCPlugSerial *)v37 transitionDuration];
      }

      else
      {
        [(MCPlug *)v37 phaseOutDuration];
      }

      v40 = v38;
      [(MRLayerClock *)self->mClock containerTime];
      v42 = v41;
      [(MRLayer *)self duration];
      v44 = v43 - v40;
      v45 = 0.0;
      if (v40 <= 0.0)
      {
        [(MRRenderer *)self->mRenderer timeQuantum];
        v45 = -v46;
      }

      v47 = v42 - v44;
      if (![(MCPlugSerial *)self->mPlugAsSerial transitionID]&& v47 >= 0.0)
      {
        v48 = self->mSuperlayer;
        v49 = [(MCPlugSerial *)self->mPlugAsSerial index]+ 1;
        if (v49 >= [-[MRLayer sublayers](v48 "sublayers")])
        {
          currentLoopIndex2 = [(MRLayerClock *)[(MRLayer *)v48 clock] currentLoopIndex];
          [(MRLayerClock *)[(MRLayer *)v48 clock] numberOfLoops];
          if (v51 + -1.0 <= currentLoopIndex2 || ([(MRRenderer *)self->mRenderer renderingDelegate], (objc_opt_respondsToSelector() & 1) == 0) || ([(MRRenderingDelegate *)[(MRRenderer *)self->mRenderer renderingDelegate] slideshowShouldWrap]& 1) == 0)
          {
            v47 = v47 - v40;
            v45 = -0.002;
          }
        }
      }

      if (v47 > 0.05)
      {
        [(MRRenderer *)self->mRenderer timeQuantum];
        v45 = -v52;
        v47 = 0.0;
      }

      if (v47 >= v45 && ([(MRLayer *)v35 isTransitioning]& 1) == 0 && [(MRLayer *)v35 isReadyToTransitionToNextSublayer])
      {
        [(MRLayer *)v35 transitionToNextSublayerWithDeltaStartTime:v47];
      }
    }

    if (isInPhaseOut != [(MRLayerClock *)self->mClock isInPhaseOut])
    {
      v53 = [(MCPlug *)self->mPlug actionForKey:@"onPhaseOut"];
      if (v53)
      {
        [(MRLayer *)self _sendAction:v53 withStates:0 async:0 yesterday:0];
      }
    }

    if (_isPaused == isPaused)
    {
      if (self->mNeedsToSynchronizeTime)
      {
        [(MRLayer *)self synchronizeTime];
      }
    }

    else
    {
      [(MRLayer *)self resumeOrPause:_isPaused];
    }

    self->mNeedsToSynchronizeTime = 0;
    if (!self->mIsPrecomputing && [(MRLayerClock *)self->mClock currentLoopIndex]!= currentLoopIndex)
    {
      v54 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v54 postNotificationName:kMRNotificationLayerLooped object:self];
      [(NSMutableDictionary *)self->mAnimationTriggers removeAllObjects];
    }
  }

  else
  {
    return 0;
  }

  return v18;
}

- (id)__retainedByUserRenderedImageAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  *&self->mRenderingState->var17 = 257;
  v22[0] = 0;
  v22[1] = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (backColor = [(MRLayer *)self backgroundColor]) == 0)
  {
    if (self->mRenderingState->var19)
    {
      backColor = [context backColor];
    }

    else
    {
      backColor = v22;
    }
  }

  v18[0] = 0;
  v18[1] = 0;
  v19 = *backColor;
  v10 = backColor[3];
  if (self->mRenderingState->var19)
  {
    v10 = 1.0;
  }

  v20 = *(backColor + 2);
  v21 = v10;
  if ([(MRLayer *)self isOpaque]&& !self->mRenderingState->var19)
  {
    v11 = 0;
  }

  else
  {
    v11 = &v19;
  }

  v12 = [context beginLocalContextWithSize:v11 backgroundColor:v18 state:{self->mPixelSize.width, self->mPixelSize.height}];
  v13 = +[EAGLContext currentContext];
  v14 = v13;
  if (v13 != [v12 glContext])
  {
    +[EAGLContext setCurrentContext:](EAGLContext, "setCurrentContext:", [v12 glContext]);
  }

  v15 = self->mPixelSize.width / self->mPixelSize.height;
  *&v15 = v15;
  [v12 setLocalAspectRatio:v15];
  [v12 setBackColor:objc_msgSend(context saveTo:{"backColor"), 0}];
  [(MRLayer *)self _renderAtTime:v12 inContext:arguments withArguments:time];
  if (+[EAGLContext currentContext]!= v13)
  {
    [EAGLContext setCurrentContext:v13];
  }

  v16 = [context retainedByUserImageByEndingLocalContext:v12 andRestoreState:v18];
  [v16 setSourceTimestamp:self->mTimeStamp];
  [v16 setRenderTime:time];
  return v16;
}

- (void)renderAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  if (![(MRLayer *)self hasSomethingToRender])
  {
    return;
  }

  [(MRLayer *)self _updateStateWithContext:context];
  isNative3D = [(MRLayer *)self isNative3D];
  mRenderingState = self->mRenderingState;
  mRenderingState->var16 = isNative3D ^ 1;
  *&mRenderingState->var17 = 0;
  if (![(MRLayer *)self isInfinite])
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    MRMatrix_MultiplyWithMatrix(self->mRenderingState->var13, self->mRenderingState->var14, &v62);
    v11 = self->mPixelSize.height / self->mPixelSize.width;
    v60[0] = -0.99999;
    v12 = 0.00001 - v11;
    v60[1] = v12;
    v61 = 0x3F80000000000000;
    v58 = 0;
    v59 = 0;
    v56[0] = -0.99999;
    *&v11 = v11 + -0.00001;
    v56[1] = *&v11;
    v57 = 0x3F80000000000000;
    v55[0] = 0;
    v55[1] = 0;
    v53[0] = 0.99999;
    v53[1] = v12;
    v54 = 0x3F80000000000000;
    v52[0] = 0;
    v52[1] = 0;
    v50[0] = 0.99999;
    v50[1] = *&v11;
    v51 = 0x3F80000000000000;
    v49[0] = 0;
    v49[1] = 0;
    MRMatrix_TransformVector(&v62, v60, &v58);
    MRMatrix_TransformVector(&v62, v56, v55);
    MRMatrix_TransformVector(&v62, v53, v52);
    MRMatrix_TransformVector(&v62, v50, v49);
    v43 = -*(&v59 + 1);
    v44 = v43;
    v45 = v43;
    v46 = *(&v59 + 1);
    v47 = *(&v59 + 1);
    v48 = v43;
    v42[0] = *(&v59 + 1);
    v42[1] = *(&v59 + 1);
    v42[2] = v43;
    v42[3] = *(&v59 + 1);
    v42[4] = *(&v59 + 1);
    v42[5] = v43;
    v39 = vcvtq_f64_f32(v58);
    v40 = vcvtq_f64_f32(v55[0]);
    v41 = vcvtq_f64_f32(v52[0]);
    v36 = vcvtq_f64_f32(v49[0]);
    v37 = v40;
    v38 = v41;
    if (TrianglesAreDisjoint(&v43, v39.f64) && TrianglesAreDisjoint(&v43, v36.f64) && TrianglesAreDisjoint(v42, v39.f64) && TrianglesAreDisjoint(v42, v36.f64))
    {
      return;
    }
  }

  v13 = [EAGLContext currentContext:*&v36];
  v14 = v13;
  if (v13 != [context glContext])
  {
    +[EAGLContext setCurrentContext:](EAGLContext, "setCurrentContext:", [context glContext]);
  }

  if (self->mIsDimmed)
  {
    isDimmed = [(MRLayer *)self->mSuperlayer isDimmed];
    v16 = self->mRenderingState;
    if ((isDimmed & 1) == 0)
    {
      v16->var10 = v16->var10 * 0.5;
    }
  }

  else
  {
    v16 = self->mRenderingState;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  [context setModelViewMatrix:v16->var13 saveTo:&v62];
  v17 = self->mRenderingState;
  *&v18 = v17->var10;
  *&v19 = v17->var11;
  LODWORD(v20) = LODWORD(v18);
  LODWORD(v21) = LODWORD(v18);
  [context composeForeColorRed:&v43 green:v18 blue:v20 alpha:v21 saveTo:v19];
  [context localAspectRatio];
  v23 = v22;
  v24 = self->mPixelSize.width / self->mPixelSize.height;
  *&v24 = v24;
  [context setLocalAspectRatio:v24];
  v25 = self->mRenderingState;
  v26 = *(&v44 + 1) * v25->var11;
  if (!v25->var16)
  {
    if (v26 < 1.0)
    {
      v29 = 3;
    }

    else
    {
      v29 = 0;
    }

    [context blend:v29];
    if ([(MCPlugParallel *)self->mPlugAsParallel clipsContainer]&& [(MRLayer *)self isFlatAndSquare])
    {
      [(MRLayer *)self _setScissorRectOnContext:context saveTo:v42];
      [(MRLayer *)self _renderAtTime:context inContext:arguments withArguments:time];
      [context restoreScissorRect:v42];
    }

    else
    {
      [(MRLayer *)self _renderAtTime:context inContext:arguments withArguments:time];
    }

    if (v26 < 1.0)
    {
      [context blend:0];
    }

    goto LABEL_35;
  }

  if ([(MRLayer *)self _isNative3D])
  {
    v27 = [(MRLayer *)self __retainedByUserRenderedImageAtTime:context inContext:arguments withArguments:time];
  }

  else
  {
    v27 = [(MRLayer *)self _retainedByUserRenderedImageAtTime:context inContext:arguments withArguments:time];
  }

  v30 = v27;
  if (v27)
  {
    v31 = v26 >= 1.0;
    [v27 setFilterID:self->_filterID];
    isOpaque = [(MRLayer *)self isOpaque];
    v33 = v31 & isOpaque;
    if ((v31 & isOpaque) != 0)
    {
      v34 = 0;
    }

    else
    {
      v34 = 2;
    }

    [context blend:v34];
    if ([v30 filterID] || objc_msgSend(v30, "shader"))
    {
      [MRCroppingSprite renderImage:v30 inContext:context atPosition:CGPointZero.x andSize:CGPointZero.y, 2.0, 2.0];
      if (v33)
      {
LABEL_34:
        [v30 releaseByUser];
        goto LABEL_35;
      }
    }

    else
    {
      if ([v30 hasKenBurns])
      {
        v35 = @"PlainTextureHigh";
      }

      else
      {
        v35 = @"PlainTexture";
      }

      [context setShader:v35];
      [MRCroppingSprite renderImage:v30 inContext:context atPosition:CGPointZero.x andSize:CGPointZero.y, 2.0, 2.0];
      [context unsetShader];
      if (v33)
      {
        goto LABEL_34;
      }
    }

    [context blend:0];
    goto LABEL_34;
  }

LABEL_35:
  LODWORD(v28) = v23;
  [context setLocalAspectRatio:v28];
  [context restoreForeColor:&v43];
  [context restoreModelViewMatrix:&v62];
  if (+[EAGLContext currentContext]!= v13)
  {
    [EAGLContext setCurrentContext:v13];
  }
}

- (id)retainedByUserRenderedImageAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  if ([(MRLayer *)self hasSomethingToRender])
  {
    [(MRLayer *)self _updateStateWithContext:context];
    mRenderingState = self->mRenderingState;
    *&mRenderingState->var16 = 1;
    mRenderingState->var18 = 0;
    if ([(MRLayer *)self _isNative3D])
    {
      v10 = [(MRLayer *)self __retainedByUserRenderedImageAtTime:context inContext:arguments withArguments:time];
    }

    else
    {
      v10 = [(MRLayer *)self _retainedByUserRenderedImageAtTime:context inContext:arguments withArguments:time];
    }

    v17 = v10;
    [v10 setFilterID:self->_filterID];
  }

  else
  {
    var19 = self->mRenderingState->var19;
    imageManager = [context imageManager];
    v13 = imageManager;
    if (var19)
    {
      backColor = [context backColor];
      width = 1.0;
      height = 1.0;
      imageManager = v13;
    }

    else
    {
      width = CGSizeZero.width;
      height = CGSizeZero.height;
      backColor = 0;
    }

    v17 = [imageManager retainedByUserImageWithSize:backColor andColor:{width, height}];
    [v17 setLabel:@"Marimba Layer Background"];
    [v17 setClampMode:2];
  }

  [v17 setSourceTimestamp:self->mTimeStamp];
  [v17 setRenderTime:time];
  return v17;
}

- (id)patchworkAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  if (self->mPixelSize.width <= 0.0 || self->mPixelSize.height <= 0.0)
  {
    return 0;
  }

  v6 = [(MRLayer *)self retainedByUserRenderedImageAtTime:context inContext:arguments withArguments:time];
  [context localAspectRatio];
  v8 = [[NSDictionary alloc] initWithObjectsAndKeys:{objc_msgSend(v6, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", -1.0, 2.0 / v7 * -0.5, 2.0, 2.0 / v7), @"rectangle", 0}];
  v9 = [NSArray arrayWithObject:v8];

  [v6 releaseByUser];
  return v9;
}

- (void)stampTime
{
  [(MRLayer *)self willChangeValueForKey:@"timeStamp"];
  self->mTimeStamp = MRGetCurrentTime();
  self->mNeedsRendering = 1;

  [(MRLayer *)self didChangeValueForKey:@"timeStamp"];
}

- (void)scheduleForDestruction
{
  if (!self->mIsReadonly && !self->mIsScheduledForDestruction)
  {
    [(MRLayer *)self _unobservePlug];
  }

  self->mIsScheduledForDestruction = 1;
}

- (CGPoint)convertLocalPoint:(CGPoint)point
{
  if (self->mIsActivated)
  {
    x = point.x;
    v4 = point.y * (self->mPixelSize.height / self->mPixelSize.width);
    memset(v7, 0, sizeof(v7));
    MRMatrix_MultiplyWithMatrix(self->mRenderingState->var13, self->mRenderingState->var14, v7);
    v5 = MRMatrix_ProjectPoint(v7, x, v4);
  }

  else
  {
    v5 = CGPointZero.x;
    y = CGPointZero.y;
  }

  result.y = y;
  result.x = v5;
  return result;
}

- (CGPoint)convertGlobalPoint:(CGPoint)point
{
  if (self->mIsActivated)
  {
    y = point.y;
    x = point.x;
    memset(v10, 0, sizeof(v10));
    memset(v9, 0, sizeof(v9));
    MRMatrix_MultiplyWithMatrix(self->mRenderingState->var13, self->mRenderingState->var14, v10);
    MRMatrix_Invert(v10, v9);
    v6 = MRMatrix_UnprojectPoint(v9, x, y);
    v8 = v7 * (self->mPixelSize.width / self->mPixelSize.height);
  }

  else
  {
    v6 = CGPointZero.x;
    v8 = CGPointZero.y;
  }

  result.y = v8;
  result.x = v6;
  return result;
}

- (void)_applyState:(id)state
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [state countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(state);
        }

        v7 |= -[MRLayer _setStateValue:forKey:](self, "_setStateValue:forKey:", [state objectForKey:*(*(&v11 + 1) + 8 * i)], *(*(&v11 + 1) + 8 * i));
      }

      v6 = [state countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
    if (v7)
    {
      v10 = [(MCPlug *)self->mPlug actionForKey:@"onStateChange"];
      if (v10)
      {
        [(MRLayer *)self _sendAction:v10 withStates:0 async:0 yesterday:1];
      }
    }
  }
}

- (double)doAnimationTrigger:(id)trigger
{
  v3 = 0.0;
  if (self->mIsActivated)
  {
    v6 = -[MCPlug animationPathForKey:](self->mPlug, "animationPathForKey:", [objc_msgSend(trigger "mcAction")]);
    if (!v6)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      animationPaths = [(MCPlug *)self->mPlug animationPaths];
      v13 = [(NSSet *)animationPaths countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v13)
      {
        return v3;
      }

      v14 = v13;
      v15 = *v23;
LABEL_11:
      v16 = 0;
      while (1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(animationPaths);
        }

        v17 = *(*(&v22 + 1) + 8 * v16);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [v17 animationPathForKey:{objc_msgSend(objc_msgSend(trigger, "mcAction"), "animationKey")}];
          if (v6)
          {
            break;
          }
        }

        if (v14 == ++v16)
        {
          v14 = [(NSSet *)animationPaths countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v14)
          {
            goto LABEL_11;
          }

          return v3;
        }
      }
    }

    v7 = v6;
    [trigger time];
    if (v8 != -1.0e10)
    {
      [(MRLayerClock *)self->mClock externalTime];
    }

    [trigger setTime:?];
    mAnimationTriggers = self->mAnimationTriggers;
    if (!mAnimationTriggers)
    {
      mAnimationTriggers = objc_alloc_init(NSMutableDictionary);
      self->mAnimationTriggers = mAnimationTriggers;
    }

    v10 = -[NSMutableDictionary objectForKey:](mAnimationTriggers, "objectForKey:", [v7 key]);
    if (v10)
    {
      v11 = v10;
      [v10 setAction:trigger];
      [v11 disarm];
    }

    else
    {
      -[NSMutableDictionary setObject:forKey:](self->mAnimationTriggers, "setObject:forKey:", -[MRAnimationTrigger initWithAction:]([MRAnimationTrigger alloc], "initWithAction:", trigger), [v7 key]);
    }

    v18 = [objc_msgSend(v7 orderedKeyframesWithPlugTiming:{self->mPlug), "lastObject"}];
    if (v18)
    {
      v19 = v18;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v19 timeOffset];
        [v19 duration];
        TimeForKeyframeAttributesInPlug([v19 timeOffsetKind], 0, self->mPlug);
      }

      else
      {
        [MCAnimationPathKeyframed timeForKeyframe:v19 withPlugTiming:self->mPlug];
      }

      return v20;
    }
  }

  return v3;
}

- (double)_serial_gotoNextWithObject:(id)object
{
  index = [(MCPlugSerial *)self->mPlugAsSerial index];
  mSuperlayer = self->mSuperlayer;
  v7 = index + 1;
  v8 = [-[MRLayer sublayers](mSuperlayer "sublayers")];
  [objc_msgSend(-[MRLayer currentSublayer](mSuperlayer "currentSublayer")];
  mPlugAsSerial = self->mPlugAsSerial;
  v10 = [MCTransitionTrigger transitionForTargetPlugObjectID:0 withTransitionID:[(MCPlugSerial *)mPlugAsSerial transitionID]];
  [v10 setTransitionAttributes:{-[MCPlugSerial transitionAttributes](mPlugAsSerial, "transitionAttributes")}];
  [(MCPlugSerial *)mPlugAsSerial transitionDuration];
  [v10 setTransitionDuration:?];
  if (v7 >= v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  [v10 setTransitionDestinationPlugID:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u", v11)}];

  [(MRLayer *)mSuperlayer doTransition:v10 backwards:0 pzr:object];
  return result;
}

- (double)_serial_gotoPreviousWithObject:(id)object
{
  index = [(MCPlugSerial *)self->mPlugAsSerial index];
  mSuperlayer = self->mSuperlayer;
  if (!index)
  {
    index = [-[MRLayer sublayers](mSuperlayer "sublayers")];
  }

  v7 = index - 1;
  [objc_msgSend(-[MRLayer currentSublayer](mSuperlayer "currentSublayer")];
  v8 = [(MCContainer *)[(MCPlug *)[(MRLayer *)mSuperlayer plug] container] plugAtIndex:v7];
  v9 = +[MCTransitionTrigger transitionForTargetPlugObjectID:withTransitionID:](MCTransitionTrigger, "transitionForTargetPlugObjectID:withTransitionID:", 0, [v8 transitionID]);
  [v9 setTransitionAttributes:{objc_msgSend(v8, "transitionAttributes")}];
  [v8 transitionDuration];
  [v9 setTransitionDuration:?];
  [v9 setTransitionDestinationPlugID:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u", v7)}];

  [(MRLayer *)mSuperlayer doTransition:v9 backwards:1 pzr:object];
  return result;
}

- (MCTransitionTrigger)nextTransition
{
  mPlugAsSerial = self->mPlugAsSerial;
  if (mPlugAsSerial)
  {
    v4 = [(MCPlugSerial *)mPlugAsSerial index]+ 1;
    mSuperlayer = self->mSuperlayer;
    if (v4 >= [-[MRLayer sublayers](mSuperlayer "sublayers")])
    {
      currentLoopIndex = [(MRLayerClock *)[(MRLayer *)mSuperlayer clock] currentLoopIndex];
      [(MRLayerClock *)[(MRLayer *)mSuperlayer clock] numberOfLoops];
      if (v11 + -1.0 <= currentLoopIndex)
      {
        return 0;
      }

      [(MRRenderer *)self->mRenderer renderingDelegate];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        return 0;
      }

      v4 = 0;
      if (![(MRRenderingDelegate *)[(MRRenderer *)self->mRenderer renderingDelegate] slideshowShouldWrap])
      {
        return 0;
      }
    }

    v6 = self->mPlugAsSerial;
    v7 = [MCTransitionTrigger transitionForTargetPlugObjectID:0 withTransitionID:[(MCPlugSerial *)v6 transitionID]];
    [(MCTransitionTrigger *)v7 setTransitionAttributes:[(MCPlugSerial *)v6 transitionAttributes]];
    [(MCPlugSerial *)v6 transitionDuration];
    [(MCTransitionTrigger *)v7 setTransitionDuration:?];
    [(MCTransitionTrigger *)v7 setTransitionDestinationPlugID:[NSString stringWithFormat:@"%u", v4]];
    return v7;
  }

  else
  {
    mPlug = self->mPlug;

    return [(MCPlug *)mPlug actionForKey:@"onNext"];
  }
}

- (MCTransitionTrigger)previousTransition
{
  mPlugAsSerial = self->mPlugAsSerial;
  if (mPlugAsSerial)
  {
    index = [(MCPlugSerial *)mPlugAsSerial index];
    mSuperlayer = self->mSuperlayer;
    if (!index)
    {
      [(MRRenderer *)self->mRenderer renderingDelegate];
      if ((objc_opt_respondsToSelector() & 1) == 0 || ![(MRRenderingDelegate *)[(MRRenderer *)self->mRenderer renderingDelegate] slideshowShouldWrap])
      {
        return 0;
      }

      index = [-[MRLayer sublayers](mSuperlayer "sublayers")];
    }

    v6 = index - 1;
    v7 = [(MCContainer *)[(MCPlug *)[(MRLayer *)mSuperlayer plug] container] plugAtIndex:index - 1];
    v8 = +[MCTransitionTrigger transitionForTargetPlugObjectID:withTransitionID:](MCTransitionTrigger, "transitionForTargetPlugObjectID:withTransitionID:", 0, [v7 transitionID]);
    -[MCTransitionTrigger setTransitionAttributes:](v8, "setTransitionAttributes:", [v7 transitionAttributes]);
    [v7 transitionDuration];
    [(MCTransitionTrigger *)v8 setTransitionDuration:?];
    [(MCTransitionTrigger *)v8 setTransitionDestinationPlugID:[NSString stringWithFormat:@"%u", v6]];
    return v8;
  }

  mPlug = self->mPlug;

  return [(MCPlug *)mPlug actionForKey:@"onPrevious"];
}

- (double)doActionTrigger:(id)trigger
{
  if (self->mIsActivated)
  {
    v5 = -[MCPlug actionForKey:](self->mPlug, "actionForKey:", [objc_msgSend(trigger "mcAction")]);
    if (v5)
    {
      -[MRLayer _sendAction:withStates:async:yesterday:](self, "_sendAction:withStates:async:yesterday:", v5, [trigger states], 0, 0);
    }

    else
    {
      NSLog(@"Error: couldn't find action %@ on layer %@", [objc_msgSend(trigger "mcAction")], self);
    }
  }

  return 0.0;
}

- (double)doStateOperation:(id)operation
{
  mcAction = [operation mcAction];
  stateKey = [mcAction stateKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string = [mcAction string];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = -[MUMathExpressionFloatBased initWithString:error:]([MUMathExpressionFloatBased alloc], "initWithString:error:", [mcAction expression], 0);
      states = [operation states];
      if (states)
      {
        [(MUMathExpressionFloatBased *)v8 setVariableValues:states];
      }

      if (self->mPersistentState)
      {
        [(MUMathExpressionFloatBased *)v8 setVariableValues:?];
      }

      [(MUMathExpressionFloatBased *)v8 evaluate];
      v11 = v10;
    }

    else
    {
      [mcAction scalar];
      v11 = v12;
    }

    *&v12 = v11;
    string = [NSNumber numberWithFloat:v12];
  }

  v13 = [(MRLayer *)self _setStateValue:string forKey:stateKey];
  if ([mcAction recordsTime])
  {
    mClock = self->mClock;
    if (mClock)
    {
      [(MRLayerClock *)mClock containerTime];
      *&v14 = v14;
    }

    else
    {
      LODWORD(v14) = -803929351;
    }

    -[MRLayer _setStateValue:forKey:](self, "_setStateValue:forKey:", +[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v14), [stateKey stringByAppendingString:@"Time"]);
  }

  if ((v13 & 1) != 0 || [mcAction alwaysNotifies])
  {
    v16 = [(MCPlug *)self->mPlug actionForKey:@"onStateChange"];
    if (v16)
    {
      [(MRLayer *)self _sendAction:v16 withStates:0 async:0 yesterday:0];
    }
  }

  return 0.0;
}

- (double)doMotionTrigger:(id)trigger
{
  mcAction = [trigger mcAction];
  [mcAction duration];
  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [mcAction value];
    v9 = v8;
  }

  else
  {
    v10 = -[MUMathExpressionFloatBased initWithString:error:]([MUMathExpressionFloatBased alloc], "initWithString:error:", [mcAction expression], 0);
    states = [trigger states];
    if (states)
    {
      [(MUMathExpressionFloatBased *)v10 setVariableValues:states];
    }

    if (self->mPersistentState)
    {
      [(MUMathExpressionFloatBased *)v10 setVariableValues:?];
    }

    attributes = [mcAction attributes];
    if (attributes)
    {
      [(MUMathExpressionFloatBased *)v10 setVariableValues:attributes];
    }

    [(MUMathExpressionFloatBased *)v10 evaluate];
    v9 = v13;
  }

  v14 = [MRMotion alloc];
  v15 = [mcAction key];
  [mcAction easeIn];
  v17 = v16;
  [mcAction easeOut];
  v19 = [(MRMotion *)v14 initWithKey:v15 value:v9 duration:v7 easeIn:v17 easeOut:v18];
  mMotions = self->mMotions;
  if (mMotions)
  {
    v21 = -[NSMutableDictionary objectForKey:](mMotions, "objectForKey:", [mcAction key]);
    if (v21)
    {
      v22 = v21;
      [(MRLayerClock *)[(MRLayer *)self clock] containerTime];
      v24 = v23;
      [(MRMotion *)v19 setStartTime:?];
      [v22 valueAtTime:v24];
      [(MRMotion *)v19 setStartValue:?];
    }

    -[NSMutableDictionary setObject:forKey:](self->mMotions, "setObject:forKey:", v19, [mcAction key]);
  }

  else
  {
    self->mMotions = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{v19, objc_msgSend(mcAction, "key"), 0}];
  }

  return v7;
}

- (double)doGenericAction:(id)action
{
  if (!self->mIsActivated)
  {
    return 0.0;
  }

  v5 = [objc_msgSend(action "mcAction")];
  v6 = [v5 objectForKey:@"type"];
  if ([v6 isEqualToString:@"stateForward"])
  {
    v7 = [v5 objectForKey:@"sourceStateKey"];
    if (!v7)
    {
      return 0.0;
    }

    v8 = v7;
    v9 = [v5 objectForKey:@"destinationStateKey"];
    v10 = v9 ? v9 : v8;
    if (!-[MRLayer _setStateValue:forKey:](self, "_setStateValue:forKey:", [objc_msgSend(action "states")], v10))
    {
      return 0.0;
    }

    v11 = [(MCPlug *)self->mPlug actionForKey:@"onStateChange"];
    if (!v11)
    {
      return 0.0;
    }

    v12 = v11;
    selfCopy = self;
    v14 = 0;
LABEL_10:
    [(MRLayer *)selfCopy _sendAction:v12 withStates:0 async:0 yesterday:v14];
    return 0.0;
  }

  if ([v6 isEqualToString:@"pauseOrResume"])
  {
    v15 = [objc_msgSend(v5 objectForKey:{@"resume", "BOOLValue"}];
    mClock = self->mClock;
    if (v15)
    {
      [(MRLayerClock *)mClock resumeOnNextUpdate];
    }

    else
    {
      [(MRLayerClock *)mClock pauseOnNextUpdate];
    }

    return 0.0;
  }

  if ([v6 isEqualToString:@"goBack"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      NSLog(@"Consistency error: 'goBack' action can only be sent to MRLayerNavigator");
      return 0.0;
    }

    [(MRLayer *)self goBack];
  }

  else
  {
    if (![v6 isEqualToString:@"goForth"])
    {
      if ([v6 isEqualToString:@"setState"])
      {
        v17 = [objc_msgSend(objc_msgSend(action "mcAction")];
        if (v17)
        {
          [(MRLayer *)self _applyState:v17];
        }

        return 0.0;
      }

      if (![v6 isEqualToString:@"loadState"])
      {
        if ([v6 isEqualToString:@"saveState"])
        {
          [action sender];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [objc_msgSend(action "mcAction")];
            v25 = objc_alloc_init(NSMutableDictionary);
            v26 = [v24 objectForKey:@"stateKeys"];
            v27 = [objc_msgSend(action "sender")];
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v28 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v47;
              do
              {
                for (i = 0; i != v29; i = i + 1)
                {
                  if (*v47 != v30)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v32 = *(*(&v46 + 1) + 8 * i);
                  v33 = [v27 objectForKey:v32];
                  if (v33)
                  {
                    [v25 setObject:v33 forKey:v32];
                  }
                }

                v29 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
              }

              while (v29);
            }

            if ([v25 count])
            {
              mPersistentState = self->mPersistentState;
              if (!mPersistentState)
              {
                mPersistentState = objc_alloc_init(NSMutableDictionary);
                self->mPersistentState = mPersistentState;
              }

              -[NSMutableDictionary setObject:forKey:](mPersistentState, "setObject:forKey:", v25, [v24 objectForKey:@"blobKey"]);
            }
          }

          else
          {
            NSLog(@"Consistency error: 'saveState' action can only be sent to MRLayers");
          }
        }

        return 0.0;
      }

      [action sender];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSLog(@"Consistency error: 'loadState' action can only be sent to MRLayers");
        return 0.0;
      }

      sender = [action sender];
      v19 = [objc_msgSend(action "mcAction")];
      v20 = [v19 objectForKey:@"blobKey"];
      if (v20 && (v21 = v20, (v22 = self->mPersistentState) != 0))
      {
        v23 = [(NSMutableDictionary *)v22 objectForKey:v21];
      }

      else
      {
        v23 = 0;
      }

      v35 = [v19 objectForKey:@"stateKeys"];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v36 = [v35 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (!v36)
      {
        return 0.0;
      }

      v37 = v36;
      v38 = 0;
      v39 = *v51;
      do
      {
        for (j = 0; j != v37; j = j + 1)
        {
          if (*v51 != v39)
          {
            objc_enumerationMutation(v35);
          }

          v41 = *(*(&v50 + 1) + 8 * j);
          if (v23)
          {
            v42 = [v23 objectForKey:*(*(&v50 + 1) + 8 * j)];
            v43 = [v35 objectForKey:v41];
            if (v42)
            {
              v38 |= [v42 isEqual:v43] ^ 1;
              v43 = v42;
            }
          }

          else
          {
            v43 = [v35 objectForKey:*(*(&v50 + 1) + 8 * j)];
          }

          [(MRLayer *)sender _setStateValue:v43 forKey:v41];
        }

        v37 = [v35 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v37);
      if ((v38 & 1) == 0)
      {
        return 0.0;
      }

      v44 = [(MCPlug *)[(MRLayer *)sender plug] actionForKey:@"onStateChange"];
      if (!v44)
      {
        return 0.0;
      }

      v12 = v44;
      selfCopy = sender;
      v14 = 1;
      goto LABEL_10;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      NSLog(@"Consistency error: 'goForth' action can only be sent to MRLayerNavigator");
      return 0.0;
    }

    [(MRLayer *)self goForth];
  }

  return result;
}

- (void)_updateStateWithContext:(id)context
{
  MRMatrix_SetRotationFromAnglesYXZDeg(self->mRenderingState->var12, self->mRenderingState->var8, self->mRenderingState->var7, self->mRenderingState->var9);
  mRenderingState = self->mRenderingState;
  v6 = (mRenderingState->f32[0] * mRenderingState[2].f32[1]) * 0.5;
  if (v6 != 1.0)
  {
    mRenderingState[6] = vmul_n_f32(mRenderingState[6], v6);
    mRenderingState[7].f32[0] = v6 * mRenderingState[7].f32[0];
    mRenderingState[8] = vmul_n_f32(mRenderingState[8], v6);
    mRenderingState[9].f32[0] = v6 * mRenderingState[9].f32[0];
    mRenderingState[10] = vmul_n_f32(mRenderingState[10], v6);
    mRenderingState[11].f32[0] = v6 * mRenderingState[11].f32[0];
  }

  v7 = mRenderingState[3].f32[0];
  if (v7 != 1.0)
  {
    mRenderingState[7].f32[0] = v7 * mRenderingState[7].f32[0];
    mRenderingState[9].f32[0] = v7 * mRenderingState[9].f32[0];
    mRenderingState[11].f32[0] = v7 * mRenderingState[11].f32[0];
  }

  mRenderingState[12] = mRenderingState[1];
  if (self->mSuperlayer)
  {
    [context localAspectRatio];
    mRenderingState = self->mRenderingState;
    mRenderingState[12].f32[1] = mRenderingState[12].f32[1] / v8;
  }

  mRenderingState[13].i32[0] = mRenderingState[2].i32[0];
  mSuperlayer = self->mSuperlayer;
  if (!mSuperlayer)
  {
    var12 = &mRenderingState[6];
    goto LABEL_11;
  }

  renderingState = [(MRLayer *)mSuperlayer renderingState];
  var12 = self->mRenderingState->var12;
  if (renderingState->var17)
  {
LABEL_11:
    *&v14 = MRMatrix_MultiplyWithMatrix(var12, [context modelViewMatrix], self->mRenderingState->var13);
    projectionMatrix = [context projectionMatrix];
    goto LABEL_12;
  }

  *&v12 = MRMatrix_MultiplyWithMatrix(var12, [(MRLayer *)self->mSuperlayer renderingState]+ 28, self->mRenderingState->var13);
  projectionMatrix = ([(MRLayer *)self->mSuperlayer renderingState]+ 176);
LABEL_12:
  v15 = self->mRenderingState;
  v16 = *projectionMatrix;
  v17 = projectionMatrix[1];
  v18 = projectionMatrix[3];
  *&v15->var14[8] = projectionMatrix[2];
  *&v15->var14[12] = v18;
  *v15->var14 = v16;
  *&v15->var14[4] = v17;
}

- (void)_sendAction:(id)action withStates:(id)states async:(BOOL)async yesterday:(BOOL)yesterday
{
  asyncCopy = async;
  v14 = [[MRAction alloc] initWithAction:action inRenderer:self->mRenderer];
  [(MRAction *)v14 setSender:self];
  if (states)
  {
    v10 = [NSMutableDictionary dictionaryWithDictionary:states];
    v11 = v10;
    if (self->mPersistentState)
    {
      [(NSMutableDictionary *)v10 addEntriesFromDictionary:?];
    }
  }

  else if (self->mPersistentState)
  {
    v11 = [NSMutableDictionary dictionaryWithDictionary:?];
  }

  else
  {
    v11 = 0;
  }

  [(MRAction *)v14 setStates:v11];
  if (yesterday)
  {
    v12 = -1.0e10;
  }

  else
  {
    [(MRRenderer *)self->mRenderer time];
  }

  [(MRAction *)v14 setTime:v12];
  mRenderer = self->mRenderer;
  if (asyncCopy)
  {
    [(MRRenderer *)mRenderer performSelectorOnMainThread:"doAction:" withObject:v14 waitUntilDone:0];
  }

  else
  {
    [(MRRenderer *)mRenderer doAction:v14];
  }
}

- (BOOL)_setStateValue:(id)value forKey:(id)key
{
  mPersistentState = self->mPersistentState;
  if (mPersistentState)
  {
    v8 = [(NSMutableDictionary *)mPersistentState objectForKey:key];
    [(NSMutableDictionary *)self->mPersistentState setObject:value forKey:key];
  }

  else
  {
    v8 = 0;
    self->mPersistentState = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{value, key, 0}];
  }

  if (v8 == value)
  {
    return 0;
  }

  else
  {
    return [value isEqual:v8] ^ 1;
  }
}

- (void)_rebuildAudio
{
  mAudioPlayer = self->mAudioPlayer;
  if (mAudioPlayer)
  {

    self->mAudioPlayer = 0;
  }

  audioPlaylist = [(MCContainer *)[(MCPlug *)self->mPlug container] audioPlaylist];
  if (audioPlaylist)
  {
    v5 = audioPlaylist;
    if ([(MCAudioPlaylist *)audioPlaylist countOfSongs])
    {
      v6 = objc_alloc_init(NSMutableArray);
      v27 = v5;
      orderedSongs = [(MCAudioPlaylist *)v5 orderedSongs];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = [(NSArray *)orderedSongs countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v29;
        v11 = 0.0;
        do
        {
          v12 = 0;
          do
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(orderedSongs);
            }

            v13 = *(*(&v28 + 1) + 8 * v12);
            v14 = -[MZMediaManagement absolutePathForAssetAtPath:](-[MRRenderer assetManagementDelegate](self->mRenderer, "assetManagementDelegate"), "absolutePathForAssetAtPath:", [objc_msgSend(v13 "asset")]);
            if ([v13 startTimeIsDefined])
            {
              [v13 startTime];
            }

            else
            {
              [(MZMediaManagement *)[(MRRenderer *)self->mRenderer assetManagementDelegate] startTimeForAssetAtPath:v14];
            }

            v16 = v15;
            if ([v13 durationIsDefined])
            {
              [v13 duration];
              v18 = v17;
              if (!v14)
              {
                goto LABEL_19;
              }
            }

            else
            {
              [(MZMediaManagement *)[(MRRenderer *)self->mRenderer assetManagementDelegate] stopTimeForAssetAtPath:v14];
              v18 = v19 - v16;
              if (!v14)
              {
                goto LABEL_19;
              }
            }

            v20 = [[MRAudioItem alloc] initWithURL:[NSURL fileURLWithPath:?], v16, v18];
            if (v20)
            {
              v21 = v20;
              [v6 addObject:v20];
              [(MRAudioItem *)v21 setLocalTimeOffset:v11];
            }

LABEL_19:
            [(MZMediaManagement *)[(MRRenderer *)self->mRenderer assetManagementDelegate] stopTimeForAssetAtPath:v14];
            v23 = v22;
            [(MZMediaManagement *)[(MRRenderer *)self->mRenderer assetManagementDelegate] startTimeForAssetAtPath:v14];
            v11 = v11 + v23 - v24;
            v12 = v12 + 1;
          }

          while (v9 != v12);
          v9 = [(NSArray *)orderedSongs countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v9);
      }

      self->mAudioPlayer = [[MRAudioPlayer alloc] initWithAudioItems:v6 andAudioPlaylist:v27];

      for (i = self; ; i = superlayer)
      {
        superlayer = [(MRLayer *)i superlayer];
        if (![[(MRLayer *)superlayer superlayer] superlayer])
        {
          break;
        }
      }

      if ([(MRLayer *)superlayer plugAsParallel])
      {
        [(MRAudioPlayer *)self->mAudioPlayer setPriority:[(MCPlugParallel *)[(MRLayer *)superlayer plugAsParallel] audioPriority]];
      }

      [(MCPlug *)self->mPlug fullDuration];
      [(MRAudioPlayer *)self->mAudioPlayer setParentDuration:?];
    }
  }
}

- (id)_currentState
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  mPersistentState = self->mPersistentState;
  if (mPersistentState)
  {
    [v3 setObject:mPersistentState forKey:@"persistentState"];
  }

  return v4;
}

- (id)_dumpLayerWithOptions:(unint64_t)options
{
  v4 = BYTE1(options);
  if (BYTE1(options))
  {
    __memset_chk();
  }

  else
  {
    v4 = 0;
  }

  v9[v4] = 0;
  v5 = [NSString stringWithUTF8String:v9];
  if (!self->mPlugAsParallel)
  {
    if (self->mPlugAsSerial)
    {
      v6 = [NSString stringWithFormat:@"%d - ", self->mIDInSupercontainer];
      goto LABEL_8;
    }

    if (!self->mPlugAsHaven)
    {
      v7 = &stru_1AC858;
      return [(NSString *)v5 stringByAppendingString:v7];
    }
  }

  v6 = [NSString stringWithFormat:@"%@ - ", self->mIDInSupercontainer];
LABEL_8:
  v7 = v6;
  return [(NSString *)v5 stringByAppendingString:v7];
}

- (CGSize)pixelSize
{
  width = self->mPixelSize.width;
  height = self->mPixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_queueLayerCommand:(int)command object:(id)object
{
  v6 = [[MRLayerCommand alloc] initWithCommand:*&command andObject:object];
  mLayerCommandQueue = self->mLayerCommandQueue;
  objc_sync_enter(mLayerCommandQueue);
  self->mLayerCommandQueueNeedsAttention = 1;
  [(NSMutableArray *)self->mLayerCommandQueue addObject:v6];
  objc_sync_exit(mLayerCommandQueue);
}

- (void)_observePlug
{
  [(MCPlug *)self->mPlug addObserver:self forKeyPath:@"fullDuration" options:0 context:0];
  [(MCPlug *)self->mPlug addObserver:self forKeyPath:@"numberOfLoops" options:0 context:0];
  if (self->mPlugAsParallel)
  {
    mPlug = self->mPlug;
  }

  else
  {
    mPlug = self;
  }

  [mPlug addObserver:self forKeyPath:@"timeIn" options:0 context:0];
}

- (void)_unobservePlug
{
  [(MCPlug *)self->mPlug removeObserver:self forKeyPath:@"fullDuration"];
  [(MCPlug *)self->mPlug removeObserver:self forKeyPath:@"numberOfLoops"];
  if (self->mPlugAsParallel)
  {
    mPlugAsParallel = self->mPlugAsParallel;
  }

  else
  {
    mPlugAsParallel = self;
  }

  [mPlugAsParallel removeObserver:self forKeyPath:@"timeIn"];
}

- (void)_observePlugOnPreactivate
{
  [(MCPlug *)self->mPlug addObserver:self forKeyPath:@"animationPaths" options:0 context:0];
  mPlugAsParallel = self->mPlugAsParallel;
  if (mPlugAsParallel)
  {
    [(MCPlugParallel *)mPlugAsParallel addObserver:self forKeyPath:@"size" options:0 context:0];
    [(MCPlugParallel *)self->mPlugAsParallel addObserver:self forKeyPath:@"currentLayoutIndex" options:0 context:0];
    [(MCPlugParallel *)self->mPlugAsParallel addObserver:self forKeyPath:@"positionRotationAndSize" options:0 context:0];
    v4 = @"opacity";
    mPlugAsSerial = self->mPlugAsParallel;
  }

  else
  {
    mPlugAsSerial = self->mPlugAsSerial;
    if (!mPlugAsSerial)
    {
      return;
    }

    v4 = @"transition";
  }

  [mPlugAsSerial addObserver:self forKeyPath:v4 options:0 context:0];
}

- (void)_unobservePlugOnDepreactivate
{
  [(MCPlug *)self->mPlug removeObserver:self forKeyPath:@"animationPaths"];
  mPlugAsParallel = self->mPlugAsParallel;
  if (mPlugAsParallel)
  {
    [(MCPlugParallel *)mPlugAsParallel removeObserver:self forKeyPath:@"size"];
    [(MCPlugParallel *)self->mPlugAsParallel removeObserver:self forKeyPath:@"currentLayoutIndex"];
    [(MCPlugParallel *)self->mPlugAsParallel removeObserver:self forKeyPath:@"positionRotationAndSize"];
    mPlugAsSerial = self->mPlugAsParallel;
    v5 = @"opacity";
  }

  else
  {
    mPlugAsSerial = self->mPlugAsSerial;
    if (!mPlugAsSerial)
    {
      return;
    }

    v5 = @"transition";
  }

  [mPlugAsSerial removeObserver:self forKeyPath:v5];
}

@end