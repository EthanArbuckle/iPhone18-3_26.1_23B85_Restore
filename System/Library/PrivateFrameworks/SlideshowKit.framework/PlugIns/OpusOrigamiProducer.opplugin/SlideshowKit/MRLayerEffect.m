@interface MRLayerEffect
- (BOOL)_isNative3D;
- (BOOL)_setStateValue:(id)a3 forKey:(id)a4;
- (BOOL)getVerticesCoordinates:(CGPoint *)(a3 forElement:;
- (BOOL)hasAudio;
- (BOOL)hasSlides;
- (BOOL)hasSomethingToRender;
- (BOOL)isLoadedForTime:(double)a3;
- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (CGSize)_maxSizeForTextElement:(id)a3;
- (CGSize)_rendererSize;
- (MRLayerEffect)initWithEffectID:(id)a3 andParameters:(id)a4;
- (MRLayerEffect)initWithPlug:(id)a3 andParameters:(id)a4 inSuperlayer:(id)a5;
- (double)panoramaPanningCancel:(id)a3;
- (double)panoramaPanningEnd:(id)a3;
- (double)panoramaPanningStart:(id)a3;
- (double)panoramaPanningUpdate:(id)a3;
- (double)pzrCancel:(id)a3;
- (double)pzrEnd:(id)a3;
- (double)pzrStart:(id)a3;
- (double)pzrUpdate:(id)a3;
- (id)_dumpLayerWithOptions:(unint64_t)a3;
- (id)_retainedByUserRenderedImageAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (id)currentSlideInfoForElement:(id)a3;
- (id)currentSlideInfos;
- (id)elementHitAtPoint:(CGPoint)a3 localPoint:(CGPoint *)a4;
- (id)patchworkAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (int64_t)_maxLinesForTextElement:(id)a3;
- (void)_addAudioDucker:(id)a3;
- (void)_cleanupProviders;
- (void)_effectTriggeredStop;
- (void)_observePlug;
- (void)_observePlugOnPreactivate;
- (void)_rebuildEffect;
- (void)_removeAudioDucker:(id)a3;
- (void)_renderAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (void)_unobservePlug;
- (void)_unobservePlugOnDepreactivate;
- (void)_updateEffectAttributes;
- (void)_updateSlides;
- (void)_updateTexts;
- (void)_updateTiming;
- (void)activate;
- (void)animateCenterOfSlide:(id)a3 to:(CGPoint)a4 withDuration:(double)a5;
- (void)animateCenterOfSlide:(id)a3 to:(CGPoint)a4 withDuration:(double)a5 andInitialSpeed:(CGSize)a6;
- (void)animateRotationOfSlide:(id)a3 to:(double)a4 withDuration:(double)a5;
- (void)animateScaleOfSlide:(id)a3 to:(double)a4 withDuration:(double)a5;
- (void)beginMorphingToAspectRatio:(double)a3 withDuration:(double)a4;
- (void)cleanup;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)preactivate;
- (void)resumeOrPause:(BOOL)a3;
- (void)setAssetPath:(id)a3 ofSlide:(id)a4;
- (void)setCenter:(CGPoint)a3 ofSlide:(id)a4;
- (void)setDuration:(double)a3;
- (void)setEditedElement:(id)a3;
- (void)setIsInInteractiveMode:(BOOL)a3;
- (void)setKenBurnsType:(int)a3 ofSlide:(id)a4;
- (void)setMaxScale:(double)a3 ofSlide:(id)a4;
- (void)setPixelSize:(CGSize)a3;
- (void)setRotation:(double)a3 ofSlide:(id)a4;
- (void)setScale:(double)a3 ofSlide:(id)a4;
- (void)setTargetedElement:(id)a3;
- (void)synchronizeTime;
- (void)unload;
@end

@implementation MRLayerEffect

- (MRLayerEffect)initWithPlug:(id)a3 andParameters:(id)a4 inSuperlayer:(id)a5
{
  v9.receiver = self;
  v9.super_class = MRLayerEffect;
  v6 = [(MRLayer *)&v9 initWithPlug:a3 andParameters:a4 inSuperlayer:a5];
  if (v6)
  {
    v7 = [a3 container];
    v6->mContainer = v7;
    v6->mEffectID = [(NSString *)[(MCContainerEffect *)v7 effectID] copy];
    v6->mSlideProvidersForElementIDs = objc_alloc_init(NSMutableDictionary);
    v6->mTextsForElementIDs = objc_alloc_init(NSMutableDictionary);
    v6->mNeedsToUpdateEffect = 1;
    v6->mNeedsToUpdateEffectAttributes = 0;
    v6->mNeedsToUpdateTexts = 0;
    v6->mNeedsToUpdateSlides = 0;
    v6->mSlidesAreReadonly = [-[NSDictionary objectForKey:](v6->super.mParameters objectForKey:{@"slidesAreReadonly", "BOOLValue"}];
    if (!v6->super.mIsReadonly)
    {
      [(MRLayerEffect *)v6 _observePlug];
    }
  }

  return v6;
}

- (MRLayerEffect)initWithEffectID:(id)a3 andParameters:(id)a4
{
  v7.receiver = self;
  v7.super_class = MRLayerEffect;
  v5 = [(MRLayer *)&v7 initWithParameters:a4];
  if (v5)
  {
    v5->mEffectID = [a3 copy];
    v5->mSlideProvidersForElementIDs = objc_alloc_init(NSMutableDictionary);
    v5->mTextsForElementIDs = objc_alloc_init(NSMutableDictionary);
    v5->mNeedsToUpdateEffect = 1;
    v5->mSlidesAreReadonly = 1;
    [(MRLayerEffect *)v5 _rebuildEffect];
  }

  return v5;
}

- (void)cleanup
{
  if (self->super.mUUID)
  {
    [(MRLayerEffect *)self _cleanupProviders];
    [(MREffect *)self->mEffect releaseByEffectLayer:self];
    self->mEffect = 0;
    v3.receiver = self;
    v3.super_class = MRLayerEffect;
    [(MRLayer *)&v3 cleanup];

    self->mContainer = 0;
    self->mEffectID = 0;

    self->mSlideProvidersForElementIDs = 0;
    self->mMultiImageModelInput = 0;

    self->mSlideProviders = 0;
    self->mTextsForElementIDs = 0;

    self->mEditedElement = 0;
    self->mTargetedElement = 0;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:@"effectID"])
  {
    v11 = &OBJC_IVAR___MRLayerEffect_mNeedsToUpdateEffect;
LABEL_5:
    *(&self->super.super.isa + *v11) = 1;
    mDoAudio = self->super.mDoAudio;
    v13 = &OBJC_IVAR___MRLayer_mNeedsToRequestRebuildAudio;
LABEL_6:
    *(&self->super.super.isa + *v13) = mDoAudio;
    goto LABEL_7;
  }

  if ([a3 isEqualToString:@"slides"])
  {
    v11 = &OBJC_IVAR___MRLayerEffect_mNeedsToUpdateSlides;
    goto LABEL_5;
  }

  if ([a3 isEqualToString:@"asset.path"])
  {
    mDoAudio = 1;
    v13 = &OBJC_IVAR___MRLayerEffect_mNeedsToUpdateSlides;
    goto LABEL_6;
  }

  if (([a3 isEqualToString:@"plug"] & 1) == 0)
  {
    if ([a3 isEqualToString:@"texts"])
    {
      mDoAudio = 1;
      v13 = &OBJC_IVAR___MRLayerEffect_mNeedsToUpdateTexts;
      goto LABEL_6;
    }

    if ([a3 isEqualToString:@"fullDuration"])
    {
      mDoAudio = 1;
      v13 = &OBJC_IVAR___MRLayerEffect_mNeedsToUpdateTiming;
      goto LABEL_6;
    }

    if (![a3 isEqualToString:@"effectAttributes"])
    {
      if ([a3 isEqualToString:@"audioNoVolume"])
      {
        v14 = self->super.mDoAudio;
        v15 = &OBJC_IVAR___MRLayer_mNeedsToRequestRebuildAudio;
      }

      else
      {
        if (![a3 isEqualToString:@"builtVolume"])
        {
          goto LABEL_9;
        }

        v14 = self->super.mDoAudio;
        v15 = &OBJC_IVAR___MRLayer_mNeedsToRequestRebuildVolume;
      }

      *(&self->super.super.isa + *v15) = v14;
      goto LABEL_9;
    }

    self->mNeedsToUpdateEffectAttributes = 1;
    v11 = &OBJC_IVAR___MRLayerEffect_mNeedsToUpdateTexts;
    goto LABEL_5;
  }

LABEL_7:
  if (!self->super.mIsPrecomputing)
  {
    [(MRLayer *)self->super.mSuperlayer setNeedsUpdateForPluggerOfSublayer:self];
    [(MRLayer *)self stampTime];
  }

LABEL_9:
  v16.receiver = self;
  v16.super_class = MRLayerEffect;
  [(MRLayer *)&v16 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:a6];
}

- (void)resumeOrPause:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = MRLayerEffect;
  [(MRLayer *)&v3 resumeOrPause:a3];
}

- (void)synchronizeTime
{
  v13.receiver = self;
  v13.super_class = MRLayerEffect;
  [(MRLayer *)&v13 synchronizeTime];
  if (self->_ignoresNextTimeSynchronization)
  {
    self->_ignoresNextTimeSynchronization = 0;
  }

  else if (!self->_isInInteractiveMode)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    mSlideProviders = self->mSlideProviders;
    v4 = [(NSArray *)mSlideProviders countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(mSlideProviders);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          [(MRLayerClock *)self->super.mClock containerTime];
          [v8 setTime:?];
        }

        v5 = [(NSArray *)mSlideProviders countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

- (void)beginMorphingToAspectRatio:(double)a3 withDuration:(double)a4
{
  [(MREffect *)self->mEffect beginMorphingToAspectRatio:a3 withDuration:a4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  mSlideProviders = self->mSlideProviders;
  v6 = [(NSArray *)mSlideProviders countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(mSlideProviders);
        }

        [*(*(&v10 + 1) + 8 * v9) beginLiveUpdate];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)mSlideProviders countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)activate
{
  v3.receiver = self;
  v3.super_class = MRLayerEffect;
  [(MRLayer *)&v3 activate];
  [(MRLayerEffect *)self _updateTiming];
  self->super.mNeedsToSynchronizeTime = 1;
}

- (void)setDuration:(double)a3
{
  v4.receiver = self;
  v4.super_class = MRLayerEffect;
  [(MRLayer *)&v4 setDuration:a3];
  [(MRLayerEffect *)self _updateTiming];
}

- (void)preactivate
{
  v3.receiver = self;
  v3.super_class = MRLayerEffect;
  [(MRLayer *)&v3 preactivate];
  if (self->mNeedsToUpdateEffect)
  {
    [(MRLayerEffect *)self _rebuildEffect];
  }

  if (self->mNeedsToUpdateSlides)
  {
    [(MRLayerEffect *)self _updateSlides];
  }

  if (self->mNeedsToUpdateTexts)
  {
    [(MRLayerEffect *)self _updateTexts];
  }

  if (self->mNeedsToUpdateEffectAttributes)
  {
    [(MRLayerEffect *)self _updateEffectAttributes];
  }
}

- (BOOL)isLoadedForTime:(double)a3
{
  v23.receiver = self;
  v23.super_class = MRLayerEffect;
  v5 = [(MRLayer *)&v23 isLoadedForTime:?];
  if (v5)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    mSlideProviders = self->mSlideProviders;
    v7 = [(NSArray *)mSlideProviders countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(mSlideProviders);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          if (([v11 isLoaded] & 1) == 0)
          {
            [v11 showTime];
            if (v12 <= a3)
            {
              [v11 showDuration];
              if (v13 < 0.0 || ([v11 showTime], v15 = v14, objc_msgSend(v11, "showDuration"), v15 + v16 > a3))
              {
                LOBYTE(v5) = 0;
                return v5;
              }
            }
          }
        }

        v8 = [(NSArray *)mSlideProviders countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    mEffect = self->mEffect;
    if (mEffect)
    {
      LOBYTE(v5) = [(MREffect *)mEffect isLoadedForTime:a3];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)unload
{
  [(MREffect *)self->mEffect releaseByEffectLayer:self];
  self->mEffect = 0;
  self->mNeedsToUpdateEffect = 1;
  [(MRLayerEffect *)self _cleanupProviders];
  self->mMultiImageSlideRange.location = 0;
  self->mMultiImageSlideRange.length = 0;
}

- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  v49.receiver = self;
  v49.super_class = MRLayerEffect;
  v8 = [MRLayer prerenderForTime:"prerenderForTime:inContext:withArguments:" inContext:? withArguments:?];
  if (!self->mHasRequestedMoreSlides)
  {
    if ([(MREffect *)self->mEffect supportsDynamicExpansion])
    {
      mEffect = self->mEffect;
      [(MRLayerClock *)self->super.mClock containerTime];
      if ([(MREffect *)mEffect needsMoreSlidesAtTime:?])
      {
        self->mHasRequestedMoreSlides = 1;
        [(MRRenderer *)self->super.mRenderer effect:self->mContainer requestedNumberOfSlides:[(MREffect *)self->mEffect typicalSlideBatchSize] firstSlideIndexStillNeeded:[(MREffect *)self->mEffect firstSlideIndexStillNeededAtTime:a3]];
      }
    }
  }

  [a4 localAspectRatio];
  v10 = LODWORD(v12);
  height = self->super.mPixelSize.height;
  LODWORD(v12) = 1.0;
  if (height > 0.0)
  {
    v12 = self->super.mPixelSize.width / height;
    *&v12 = v12;
  }

  [a4 setLocalAspectRatio:v12];
  if (self->mNeedsToUpdateEffect)
  {
    [(MRLayerEffect *)self _rebuildEffect];
    if (!self->mNeedsToUpdateSlides)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (self->mNeedsToUpdateSlides)
  {
LABEL_11:
    [(MRLayerEffect *)self _updateSlides];
LABEL_12:
    v13 = 1;
    goto LABEL_13;
  }

  if (self->mNeedsToUpdateTexts || self->mNeedsToUpdateEffectAttributes)
  {
    goto LABEL_12;
  }

  v13 = self->mNeedsToUpdateEffectLiveAttributes | v8;
LABEL_13:
  v39 = v13;
  if (self->mNeedsToUpdateTexts)
  {
    [(MRLayerEffect *)self _updateTexts];
  }

  if (self->mNeedsToUpdateEffectAttributes)
  {
    [(MRLayerEffect *)self _updateEffectAttributes];
  }

  if (self->mNeedsToUpdateEffectLiveAttributes)
  {
    self->mNeedsToUpdateEffectLiveAttributes = 0;
    [(MREffect *)self->mEffect setLiveAttributes:self->super.mPersistentState];
  }

  v14 = [a5 currentLayoutIndex];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  mSlideProviders = self->mSlideProviders;
  v16 = [(NSArray *)mSlideProviders countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v46;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(mSlideProviders);
        }

        v20 = *(*(&v45 + 1) + 8 * i);
        if ([objc_msgSend(v20 "slide")] != v14)
        {
          [objc_msgSend(v20 "slide")];
          [v20 setNeedsToUpdateLayout:1];
        }

        [v20 updateStuffWithAssetManager:{objc_msgSend(a4, "assetManager")}];
      }

      v17 = [(NSArray *)mSlideProviders countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v17);
  }

  if (self->mNeedsToUpdateTiming)
  {
    [(MRLayerEffect *)self _updateTiming];
  }

  [(MRLayerClock *)self->super.mClock containerTime];
  v22 = v21;
  previouslyRenderedContainerTime = self->_previouslyRenderedContainerTime;
  v24 = self->mEffect;
  [(MRLayerClock *)self->super.mClock containerTime];
  v25 = [(MREffect *)v24 prerenderForTime:a4 inContext:a5 withArguments:?];
  if (v22 == previouslyRenderedContainerTime)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  v27 = v26 | v39;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v28 = self->mSlideProviders;
  v29 = [(NSArray *)v28 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v29)
  {
    v31 = v29;
    v32 = *v42;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(v28);
        }

        v34 = *(*(&v41 + 1) + 8 * j);
        if (self->super.mIsPrecomputing)
        {
          [(MRLayerClock *)self->super.mClock containerTime];
          *&v35 = v35;
          [v34 setStillTime:v35];
        }

        [(MRLayerClock *)self->super.mClock containerTime];
        v36 = [v34 prerenderForTime:a4 inContext:a5 withArguments:?];
        if (v22 == previouslyRenderedContainerTime)
        {
          v37 = 0;
        }

        else
        {
          v37 = v36;
        }

        v27 |= v37;
      }

      v31 = [(NSArray *)v28 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v31);
  }

  LODWORD(v30) = v10;
  [a4 setLocalAspectRatio:v30];
  return self->super.mIsActivated & v27 & 1;
}

- (id)patchworkAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  if (self->super.mPixelSize.width > 0.0 && self->super.mPixelSize.height > 0.0)
  {
    [(MRLayerClock *)self->super.mClock containerTime];
    v10 = v9;
    v11 = [(MREffect *)self->mEffect patchworkAtTime:a4 inContext:a5 withArguments:?];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v14.receiver = self;
      v14.super_class = MRLayerEffect;
      v12 = [(MRLayer *)&v14 patchworkAtTime:a4 inContext:a5 withArguments:a3];
      if (!v12)
      {
LABEL_8:
        self->_previouslyRenderedContainerTime = v10;
        return v12;
      }
    }

    [(MRRenderer *)self->super.mRenderer addIDToDisplay:self->mEffectID];
    goto LABEL_8;
  }

  return 0;
}

- (void)setPixelSize:(CGSize)a3
{
  p_mPixelSize = &self->super.mPixelSize;
  if (a3.width != self->super.mPixelSize.width || a3.height != self->super.mPixelSize.height)
  {
    v15.receiver = self;
    v15.super_class = MRLayerEffect;
    [(MRLayer *)&v15 setPixelSize:?];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    mSlideProviders = self->mSlideProviders;
    v7 = [(NSArray *)mSlideProviders countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(mSlideProviders);
          }

          [*(*(&v11 + 1) + 8 * i) setDefaultSize:{p_mPixelSize->width, p_mPixelSize->height}];
        }

        v8 = [(NSArray *)mSlideProviders countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v8);
    }

    [(MREffect *)self->mEffect setPixelSize:p_mPixelSize->width, p_mPixelSize->height];
  }
}

- (BOOL)hasSomethingToRender
{
  v5.receiver = self;
  v5.super_class = MRLayerEffect;
  v3 = [(MRLayer *)&v5 hasSomethingToRender];
  if (v3)
  {
    LOBYTE(v3) = self->mEffect != 0;
  }

  return v3;
}

- (void)setTargetedElement:(id)a3
{
  if (([a3 isEqualToString:self->mTargetedElement] & 1) == 0)
  {

    self->mTargetedElement = [a3 copy];
    self->super.mNeedsRendering = 1;
  }
}

- (void)setEditedElement:(id)a3
{
  if (([a3 isEqualToString:self->mEditedElement] & 1) == 0)
  {

    self->mEditedElement = [a3 copy];
    self->super.mNeedsRendering = 1;
  }
}

- (BOOL)hasAudio
{
  v3 = [(MCAudioPlaylist *)[(MCContainer *)self->mContainer audioPlaylist] songs];
  if (!v3 || ![(NSSet *)v3 count])
  {
    v5 = [(MRRenderer *)self->super.mRenderer assetManagementDelegate];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(MCContainerEffect *)self->mContainer slides];
    v4 = [(NSSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (!v4)
    {
      return v4;
    }

    v7 = v4;
    v8 = *v13;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      if ([v10 song] || (-[MZMediaManagement isSupportedMovieForAssetAtPath:](v5, "isSupportedMovieForAssetAtPath:", objc_msgSend(objc_msgSend(v10, "asset"), "path")) & 1) != 0)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        LOBYTE(v4) = 0;
        if (v7)
        {
          goto LABEL_6;
        }

        return v4;
      }
    }
  }

  LOBYTE(v4) = 1;
  return v4;
}

- (BOOL)_isNative3D
{
  mEffect = self->mEffect;
  if (mEffect)
  {
    return [(MREffect *)mEffect isNative3D];
  }

  else
  {
    return 1;
  }
}

- (BOOL)_setStateValue:(id)a3 forKey:(id)a4
{
  v21.receiver = self;
  v21.super_class = MRLayerEffect;
  v7 = [MRLayer _setStateValue:"_setStateValue:forKey:" forKey:?];
  self->mNeedsToUpdateEffectLiveAttributes = v7;
  if ([a4 isEqualToString:@"isPlaying"])
  {
    v8 = [a3 BOOLValue];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    mSlideProviders = self->mSlideProviders;
    v10 = [(NSArray *)mSlideProviders countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(mSlideProviders);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          [v14 setIsStill:v8 ^ 1];
          v15 = 0.0;
          if ((v8 & self->super.mIsActivated) == 1)
          {
            [(MRLayerClock *)self->super.mClock containerTime];
          }

          [v14 setShowTime:v15];
        }

        v11 = [(NSArray *)mSlideProviders countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v11);
    }

    [(MRRenderer *)self->super.mRenderer requestRendering:0];
  }

  return v7;
}

- (void)setAssetPath:(id)a3 ofSlide:(id)a4
{
  [-[NSMutableDictionary objectForKey:](self->mSlideProvidersForElementIDs objectForKey:{a4), "setAssetPath:", a3}];
  if (objc_opt_respondsToSelector())
  {
    mEffect = self->mEffect;

    [(MREffect *)mEffect resetPZR];
  }
}

- (void)setKenBurnsType:(int)a3 ofSlide:(id)a4
{
  v4 = *&a3;
  v5 = [(NSMutableDictionary *)self->mSlideProvidersForElementIDs objectForKey:a4];

  [v5 setDefaultKenBurnsType:v4];
}

- (void)setCenter:(CGPoint)a3 ofSlide:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = [(NSMutableDictionary *)self->mSlideProvidersForElementIDs objectForKey:a4];

  [v6 setCenter:{x, y}];
}

- (void)setScale:(double)a3 ofSlide:(id)a4
{
  v5 = [(NSMutableDictionary *)self->mSlideProvidersForElementIDs objectForKey:a4];

  [v5 setScale:a3];
}

- (void)setRotation:(double)a3 ofSlide:(id)a4
{
  v5 = [(NSMutableDictionary *)self->mSlideProvidersForElementIDs objectForKey:a4];

  [v5 setRotation:a3];
}

- (void)setMaxScale:(double)a3 ofSlide:(id)a4
{
  v6 = [(NSMutableDictionary *)self->mSlideProvidersForElementIDs objectForKey:a4];
  if (a3 <= 0.0)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = a3;
  }

  v8 = v7 * self->super.mPixelSize.width;
  v9 = v7 * self->super.mPixelSize.height;

  [v6 setDefaultSize:{v8, v9}];
}

- (void)animateCenterOfSlide:(id)a3 to:(CGPoint)a4 withDuration:(double)a5
{
  y = a4.y;
  x = a4.x;
  v8 = [(NSMutableDictionary *)self->mSlideProvidersForElementIDs objectForKey:a3];
  if (v8)
  {
    v9 = v8;
    if (a5 <= 0.0)
    {

      [v8 setCenter:{x, y}];
    }

    else
    {
      v10 = [MCAnimationPathKeyframed animationPathWithKey:@"center"];
      [v10 setIsTriggered:1];
      [v9 center];
      v11 = [v10 createKeyframeWithPoint:100 atTime:? offsetKind:?];
      LODWORD(v12) = 0.5;
      [v11 setPostControl:v12];
      v13 = [v10 createKeyframeWithPoint:100 atTime:x offsetKind:{y, a5}];
      LODWORD(v14) = -0.5;
      [v13 setPreControl:v14];

      [v9 setCenterAnimationPath:v10];
    }
  }
}

- (void)animateScaleOfSlide:(id)a3 to:(double)a4 withDuration:(double)a5
{
  v7 = [(NSMutableDictionary *)self->mSlideProvidersForElementIDs objectForKey:a3];
  if (v7)
  {
    v8 = v7;
    if (a5 <= 0.0)
    {

      [v7 setScale:a4];
    }

    else
    {
      v9 = [MCAnimationPathKeyframed animationPathWithKey:@"scale"];
      [v9 setIsTriggered:1];
      [v8 scale];
      *&v10 = v10;
      v11 = [v9 createKeyframeWithScalar:100 atTime:v10 offsetKind:0.0];
      LODWORD(v12) = 0.5;
      [v11 setPostControl:v12];
      *&v13 = a4;
      v14 = [v9 createKeyframeWithScalar:100 atTime:v13 offsetKind:a5];
      LODWORD(v15) = -0.5;
      [v14 setPreControl:v15];

      [v8 setScaleAnimationPath:v9];
    }
  }
}

- (void)animateRotationOfSlide:(id)a3 to:(double)a4 withDuration:(double)a5
{
  v7 = [(NSMutableDictionary *)self->mSlideProvidersForElementIDs objectForKey:a3];
  if (v7)
  {
    v8 = v7;
    if (a5 <= 0.0)
    {

      [v7 setRotation:a4];
    }

    else
    {
      v9 = [MCAnimationPathKeyframed animationPathWithKey:@"angle"];
      [v9 setIsTriggered:1];
      [v8 rotation];
      *&v10 = v10;
      v11 = [v9 createKeyframeWithScalar:100 atTime:v10 offsetKind:0.0];
      LODWORD(v12) = 0.5;
      [v11 setPostControl:v12];
      *&v13 = a4;
      v14 = [v9 createKeyframeWithScalar:100 atTime:v13 offsetKind:a5];
      LODWORD(v15) = -0.5;
      [v14 setPreControl:v15];

      [v8 setRotationAnimationPath:v9];
    }
  }
}

- (void)animateCenterOfSlide:(id)a3 to:(CGPoint)a4 withDuration:(double)a5 andInitialSpeed:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  y = a4.y;
  x = a4.x;
  v11 = [(NSMutableDictionary *)self->mSlideProvidersForElementIDs objectForKey:a3];
  if (v11)
  {
    v12 = v11;
    if (a5 <= 0.0)
    {

      [v11 setCenter:{x, y}];
    }

    else
    {
      v13 = [MCAnimationPathKeyframed animationPathWithKey:@"center"];
      [v13 setIsTriggered:1];
      [v12 center];
      [objc_msgSend(v13 createKeyframeWithPoint:100) atTime:"setC2:" offsetKind:{x + width, y + height}];
      v14 = [v13 createKeyframeWithPoint:100 atTime:x offsetKind:{y, a5}];
      LODWORD(v15) = -1.0;
      [v14 setPreControl:v15];

      [v12 setCenterAnimationPath:v13];
    }
  }
}

- (id)elementHitAtPoint:(CGPoint)a3 localPoint:(CGPoint *)a4
{
  if (self->super.mIsActivated && (y = a3.y, x = a3.x, memset(v13, 0, sizeof(v13)), memset(v12, 0, sizeof(v12)), MRMatrix_MultiplyWithMatrix(self->super.mRenderingState->var13, self->super.mRenderingState->var14, v13), v8 = MRMatrix_ProjectPoint(v13, x, y * (self->super.mPixelSize.height / self->super.mPixelSize.width)), v10 = v9, MRMatrix_Invert(v13, v12)))
  {
    return [(MREffect *)self->mEffect elementHitAtPoint:v12 withInverseMatrix:a4 localPoint:v8, v10];
  }

  else
  {
    return 0;
  }
}

- (BOOL)getVerticesCoordinates:(CGPoint *)(a3 forElement:
{
  if (self->super.mIsActivated)
  {
    mSuperlayer = self;
    memset(v28, 0, sizeof(v28));
    *&v7 = MRMatrix_MultiplyWithMatrix(self->super.mRenderingState->var13, self->super.mRenderingState->var14, v28);
    v8 = [(MREffect *)mSuperlayer->mEffect getVerticesCoordinates:a3 withMatrix:v28 forElement:a4, v7];
    if (v8)
    {
      while (1)
      {
        mSuperlayer = mSuperlayer->super.mSuperlayer;
        if (!mSuperlayer)
        {
          break;
        }

        v9 = [(MRLayer *)mSuperlayer renderingState];
        if (v9->var18)
        {
          (*a3)[0].y = -(*a3)[0].y;
          (*a3)[1].y = -(*a3)[1].y;
          (*a3)[2].y = -(*a3)[2].y;
          (*a3)[3].y = -(*a3)[3].y;
        }

        if (v9->var17)
        {
          *&v10 = MRMatrix_MultiplyWithMatrix(v9->var13, v9->var14, v28);
          [(MRLayer *)mSuperlayer pixelSize];
          v12 = v11;
          [(MRLayer *)mSuperlayer pixelSize];
          *&v13 = v12 / v13;
          v14 = *&v13;
          x = (*a3)[0].x;
          v16 = (*a3)[0].y * v14;
          (*a3)[0].y = v16;
          (*a3)[0].x = MRMatrix_ProjectPoint(v28, x, v16);
          (*a3)[0].y = v17;
          v18 = (*a3)[1].x;
          v19 = (*a3)[1].y * v14;
          (*a3)[1].y = v19;
          (*a3)[1].x = MRMatrix_ProjectPoint(v28, v18, v19);
          (*a3)[1].y = v20;
          v21 = (*a3)[2].x;
          v22 = (*a3)[2].y * v14;
          (*a3)[2].y = v22;
          (*a3)[2].x = MRMatrix_ProjectPoint(v28, v21, v22);
          (*a3)[2].y = v23;
          v24 = (*a3)[3].x;
          v25 = (*a3)[3].y * v14;
          (*a3)[3].y = v25;
          (*a3)[3].x = MRMatrix_ProjectPoint(v28, v24, v25);
          (*a3)[3].y = v26;
        }
      }
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)hasSlides
{
  v3 = [(NSString *)self->mEffectID isEqualToString:@"JustASlide"];
  mSlideProviders = self->mSlideProviders;
  if (v3)
  {
    if ([-[NSArray lastObject](mSlideProviders "lastObject")])
    {
      return 1;
    }

    v6 = [objc_msgSend(objc_msgSend(-[NSArray lastObject](self->mSlideProviders "lastObject")];
  }

  else
  {
    v6 = [(NSArray *)mSlideProviders count];
  }

  return v6 != 0;
}

- (void)setIsInInteractiveMode:(BOOL)a3
{
  self->_isInInteractiveMode = a3;
  mEffect = self->mEffect;
  if (a3)
  {
    [(MRLayerClock *)self->super.mClock containerTime];

    [(MREffect *)mEffect enterInteractiveModeAtTime:?];
  }

  else
  {
    v4 = self->mEffect;

    [(MREffect *)v4 exitInteractiveMode];
  }
}

- (id)currentSlideInfoForElement:(id)a3
{
  if (!NSStringHasPrefix(a3, "image"))
  {
    return 0;
  }

  v5 = [-[NSMutableDictionary objectForKey:](self->mSlideProvidersForElementIDs objectForKey:{a3), "currentSlideInfo"}];
  if (v5)
  {
    v6 = v5;
    v43 = CGPointZero;
    v41 = 0.0;
    v42 = 1.0;
    v40 = 0;
    if (![(MREffect *)self->mEffect getCurrentCenter:&v43 scale:&v42 rotation:&v41 isMain:&v40 forElement:a3])
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      if ([(MRLayerEffect *)self getVerticesCoordinates:&v44 forElement:a3])
      {
        v38 = v44;
        v39 = v45;
        __asm { FMOV            V1.2D, #0.25 }

        v43 = vmulq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v44, v45), v46), v47), _Q1);
        v11 = vsubq_f64(v45, v44);
        v12 = v11.f64[1];
        v37 = v11;
        v13 = atan2(v11.f64[1], v11.f64[0]);
        v41 = v13;
        if (vmovn_s64(vmvnq_s8(vceqq_f64(v39, v38))).u8[0])
        {
          v14 = v37.f64[0] * 0.5;
          v15 = cos(v13);
        }

        else
        {
          v14 = v12 * 0.5;
          v15 = sin(v13);
        }

        v42 = v14 / v15;
        v40 = 1;
      }
    }

    [(MRSlideInfo *)v6 center];
    v24 = v23;
    v26 = v25;
    [(MRSlideInfo *)v6 scale];
    v28 = v27;
    [(MRSlideInfo *)v6 rotation];
    v30 = v29;
    if (v24 != CGPointZero.x || v26 != CGPointZero.y)
    {
      v32 = __sincos_stret(v29);
      y = v43.y;
      v43.x = v43.x + -(v42 * v28) * (v24 * v32.__cosval - v26 * v32.__sinval);
      v34 = (v26 * v32.__cosval + v24 * v32.__sinval) * (v28 * v42);
      [(MRSlideInfo *)v6 aspectRatio];
      v43.y = y - v34 / v35;
    }

    v41 = v30 + v41;
    v42 = v28 * v42;
    [(MRSlideInfo *)v6 setCenter:v43.x];
    [(MRSlideInfo *)v6 setScale:v42];
    [(MRSlideInfo *)v6 setRotation:v41];
    [(MRSlideInfo *)v6 setIsMain:v40];
  }

  else
  {
    v16 = [objc_msgSend(a3 substringFromIndex:{5), "intValue"}];
    v17 = [(MCContainerEffect *)self->mContainer orderedSlides];
    if ([(NSArray *)v17 count]<= v16)
    {
      NSLog(@"Request for info about a non-existent slide");
      v6 = 0;
    }

    else
    {
      v18 = v16;
      v6 = objc_alloc_init(MRSlideInfo);
      v19 = [objc_msgSend(-[NSArray objectAtIndex:](v17 objectAtIndex:{v18), "asset"), "path"}];
      [(MRSlideInfo *)v6 setAssetPath:v19];
      [(MZMediaManagement *)[(MRRenderer *)self->super.mRenderer assetManagementDelegate] resolutionForAssetAtPath:v19];
      v22 = v20 / v21;
      if (v21 <= 0.0)
      {
        v22 = 1.0;
      }

      [(MRSlideInfo *)v6 setAspectRatio:v22];
    }
  }

  -[MRSlideInfo setIndex:](v6, "setIndex:", [objc_msgSend(a3 substringFromIndex:{5), "intValue"}]);
  return v6;
}

- (id)currentSlideInfos
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [objc_msgSend(+[MREffectManager sharedManager](MREffectManager "sharedManager")];
  if (v4)
  {
    v5 = [v4 intValue];
  }

  else
  {
    v5 = [(NSArray *)self->mSlideProviders count];
  }

  mSlideProvidersForElementIDs = self->mSlideProvidersForElementIDs;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_FD8F8;
  v8[3] = &unk_1AB688;
  v8[5] = v3;
  v8[6] = v5;
  v8[4] = self;
  [(NSMutableDictionary *)mSlideProvidersForElementIDs enumerateKeysAndObjectsUsingBlock:v8];
  return v3;
}

- (CGSize)_maxSizeForTextElement:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    [(MREffect *)self->mEffect _maxSizeForTextElement:a3];
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (int64_t)_maxLinesForTextElement:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mEffect = self->mEffect;

  return [(MREffect *)mEffect _maxLinesForTextElement:a3];
}

- (id)_dumpLayerWithOptions:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = MRLayerEffect;
  return [-[MRLayer _dumpLayerWithOptions:](&v4 _dumpLayerWithOptions:{a3), "stringByAppendingFormat:", @"%@/%@", self->mEffectID, -[NSDictionary objectForKey:](-[MCContainerEffect effectAttributes](self->mContainer, "effectAttributes"), "objectForKey:", @"PresetID"}];
}

- (CGSize)_rendererSize
{
  [(MRRenderer *)self->super.mRenderer size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_effectTriggeredStop
{
  if ([-[NSMutableDictionary objectForKey:](self->super.mPersistentState objectForKey:{@"isPlaying", "BOOLValue"}])
  {
    v3 = [MCStateOperationScalarSet stateOperationForTargetPlugObjectID:&stru_1AC858 withStateKey:@"isPlaying" andScalar:0.0];

    [(MRLayer *)self _sendAction:v3 withStates:0 async:0 yesterday:0];
  }
}

- (void)_addAudioDucker:(id)a3
{
  if (self->super.mDoAudio)
  {
    [(MRRenderer *)self->super.mRenderer addAudioObject:a3];
  }
}

- (void)_removeAudioDucker:(id)a3
{
  if (self->super.mDoAudio)
  {
    [(MRRenderer *)self->super.mRenderer removeAudioObject:a3];
  }
}

- (void)_rebuildEffect
{
  [(MREffect *)self->mEffect releaseByEffectLayer:self];
  self->mEffect = 0;
  [(MRLayerEffect *)self _cleanupProviders];
  mEffectID = self->mEffectID;
  if (self->mContainer)
  {

    mEffectID = [(NSString *)[(MCContainerEffect *)self->mContainer effectID] copy];
    self->mEffectID = mEffectID;
  }

  p_vtable = &OBJC_METACLASS___MPDocumentInternal.vtable;
  if (!mEffectID)
  {
    goto LABEL_36;
  }

  self->mEffect = [MREffect retainedEffectWithEffectID:mEffectID forEffectLayer:self];
  v5 = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v46 objects:v51 count:16];
  v7 = &OBJC_IVAR___MRLayer_mPixelSize;
  if (!v6)
  {
    v23 = 72;
    goto LABEL_34;
  }

  v8 = v6;
  v9 = 0;
  v41 = *v47;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      v11 = v7;
      if (*v47 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v46 + 1) + 8 * i);
      v13 = ImageKey(v9);
      v14 = [[MRSlideProvider alloc] initWithEffectLayer:self];
      v15 = v14;
      v16 = 1;
      mSlidesAreReadonly = 1;
      if (!self->super.mIsReadonly)
      {
        mSlidesAreReadonly = self->mSlidesAreReadonly;
      }

      [(MRSlideProvider *)v14 setSlideIsReadonly:mSlidesAreReadonly];
      [(MRSlideProvider *)v15 setIsMuted:!self->super.mDoAudio];
      -[MRSlideProvider setWantsMonochromatic:](v15, "setWantsMonochromatic:", [objc_msgSend(v12 objectForKey:{@"isMonochromatic", "BOOLValue"}]);
      if (([objc_msgSend(v12 objectForKey:{@"usesMipmapping", "BOOLValue"}] & 1) == 0)
      {
        v16 = [(NSString *)self->mEffectID isEqualToString:@"Floating"];
      }

      [(MRSlideProvider *)v15 setWantsMipmap:v16];
      v18 = [(NSDictionary *)[(MCContainerEffect *)self->mContainer effectAttributes] objectForKey:[(NSString *)v13 stringByAppendingString:@"StillTime"]];
      if (!v18)
      {
        v18 = [v12 objectForKey:@"isStillWithTime"];
      }

      if (([objc_msgSend(v12 objectForKey:{@"isStill", "BOOLValue"}] & 1) != 0 || v18)
      {
        [(MRSlideProvider *)v15 setIsStill:1];
        if (v18)
        {
          [v18 floatValue];
          goto LABEL_21;
        }
      }

      else
      {
        [(MRSlideProvider *)v15 setIsStill:self->super.mIsPrecomputing];
      }

      LODWORD(v19) = -1.0;
LABEL_21:
      [(MRSlideProvider *)v15 setStillTime:v19];
      -[MRSlideProvider setImageSizeScript:](v15, "setImageSizeScript:", [v12 objectForKey:@"sizeScript"]);
      v20 = [v12 objectForKey:@"kenBurnsType"];
      v21 = [v12 objectForKey:@"showTimeScript"];
      if (v21)
      {
        [(MRSlideProvider *)v15 setShowTimeScript:v21];
      }

      if ([v20 isEqualToString:@"Crop to Fit"])
      {
        v22 = 1;
      }

      else if ([v20 isEqualToString:@"Scale to Fit"])
      {
        v22 = 2;
      }

      else if ([v20 isEqualToString:@"Scrop to Fit"])
      {
        v22 = 3;
      }

      else
      {
        v22 = 0;
      }

      [(MRSlideProvider *)v15 setDefaultKenBurnsType:v22];
      v7 = v11;
      v23 = *v11;
      [(MRSlideProvider *)v15 setDefaultSize:*(&self->super.super.isa + v23), *(&self->super.mSuperlayer + v23)];
      [(NSMutableDictionary *)self->mSlideProvidersForElementIDs setObject:v15 forKey:v13];

      ++v9;
    }

    v8 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  }

  while (v8);
  p_vtable = (&OBJC_METACLASS___MPDocumentInternal + 24);
LABEL_34:
  if (*(&self->super.super.isa + v23) > 0.0)
  {
    [(MREffect *)self->mEffect setPixelSize:?];
  }

LABEL_36:
  if ([objc_msgSend(p_vtable + 107 "sharedManager")])
  {
    v24 = [(NSMutableDictionary *)self->mSlideProvidersForElementIDs count]- 1;
    self->mIndexOfFirstMultiImageInput = v24;
    v25 = ImageKey(v24);
    self->mMultiImageModelInput = [(NSMutableDictionary *)self->mSlideProvidersForElementIDs objectForKey:v25];
    [(NSMutableDictionary *)self->mSlideProvidersForElementIDs removeObjectForKey:v25];
  }

  v26 = [(NSMutableDictionary *)self->mSlideProvidersForElementIDs allValues];
  self->mSlideProviders = v26;
  if (self->super.mIsActivated)
  {
    v27 = v26;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v28 = [(NSArray *)v26 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v43;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v42 + 1) + 8 * j);
          [(MRLayerClock *)self->super.mClock containerTime];
          v34 = v33;
          [v32 setTime:?];
          if (([v32 isStill] & 1) == 0)
          {
            if (-[MRRenderer isPlaying](self->super.mRenderer, "isPlaying") && ([v32 showTime], v34 >= v35))
            {
              [v32 showTime];
              v38 = v37;
              [v32 showDuration];
              v36 = v34 < v38 + v39;
            }

            else
            {
              v36 = 0;
            }

            [v32 setIsPlaying:v36];
          }
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v29);
    }
  }

  self->mNeedsToUpdateEffect = 0;
  self->mNeedsToUpdateSlides = 1;
  self->mNeedsToUpdateTexts = 1;
  self->mNeedsToUpdateEffectAttributes = 1;
  self->mNeedsToUpdateTiming = 1;
  self->mNeedsToUpdateEffectLiveAttributes = 1;
}

- (void)_cleanupProviders
{
  mSlideProviders = self->mSlideProviders;
  if (mSlideProviders && [(NSArray *)mSlideProviders count])
  {
    mMultiImageModelInput = self->mMultiImageModelInput;
    if (mMultiImageModelInput)
    {

      self->mMultiImageModelInput = 0;
    }

    if (!self->super.mIsPrecomputing && !self->super.mIsReadonly && !self->mSlidesAreReadonly)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v5 = self->mSlideProviders;
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v21;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v21 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v20 + 1) + 8 * i) slide];
            [v10 removeObserver:self forKeyPath:@"animationPaths"];
            [v10 removeObserver:self forKeyPath:@"asset.path"];
            [v10 removeObserver:self forKeyPath:@"plug"];
            if (self->super.mDoAudio)
            {
              [v10 removeObserver:self forKeyPath:@"audioNoVolume"];
              [v10 removeObserver:self forKeyPath:@"builtVolume"];
            }
          }

          v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v7);
      }
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = self->mSlideProviders;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * j) cleanup];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }

    [(NSMutableDictionary *)self->mSlideProvidersForElementIDs removeAllObjects];

    self->mSlideProviders = 0;
  }
}

- (void)_updateTiming
{
  self->mNeedsToUpdateTiming = 0;
  if (([objc_opt_class() hasCustomTiming] & 1) == 0)
  {
    v3 = [(MCContainerEffect *)self->mContainer effectAttributes];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    mSlideProviders = self->mSlideProviders;
    v5 = [(NSArray *)mSlideProviders countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(mSlideProviders);
          }

          [*(*(&v15 + 1) + 8 * i) updateShowTimeAndDurationWithPlugTiming:self->super.mClock andAttributes:v3];
        }

        v6 = [(NSArray *)mSlideProviders countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  mEffect = self->mEffect;
  [(MRLayerClock *)self->super.mClock phaseInDuration];
  v11 = v10;
  [(MRLayerClock *)self->super.mClock loopDuration];
  v13 = v12;
  [(MRLayerClock *)self->super.mClock phaseOutDuration];
  [(MREffect *)mEffect setPhaseInDuration:v11 mainDuration:v13 phaseOutDuration:v14];
}

- (void)_updateSlides
{
  self->mNeedsToUpdateSlides = 0;
  v3 = &OBJC_IVAR___MRImageProvider_mShowTime;
  if (self->mMultiImageModelInput)
  {
    v29 = [[NSMutableSet alloc] initWithArray:{-[NSMutableDictionary allKeys](self->mSlideProvidersForElementIDs, "allKeys")}];
  }

  else
  {
    v29 = 0;
  }

  self->mMultiImageSlideRange = xmmword_163FF0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(MCContainerEffect *)self->mContainer slides];
  v4 = [(NSSet *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v30 = *v36;
    do
    {
      v6 = 0;
      do
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v35 + 1) + 8 * v6);
        v8 = [(MCSlide *)v7 index];
        v9 = ImageKey(v8);
        v10 = v3[45];
        v11 = [*(&self->super.super.isa + v10) objectForKey:v9];
        if (v11 || self->mMultiImageModelInput && ((v15 = ImageKey(v8), v16 = -[MRSlideProvider initWithEffectLayer:]([MRSlideProvider alloc], "initWithEffectLayer:", self), v11 = v16, !self->super.mIsReadonly) ? (mSlidesAreReadonly = self->mSlidesAreReadonly) : (mSlidesAreReadonly = 1), -[MRSlideProvider setSlideIsReadonly:](v16, "setSlideIsReadonly:", mSlidesAreReadonly), -[MRSlideProvider setIsMuted:](v11, "setIsMuted:", !self->super.mDoAudio), -[MRSlideProvider setWantsMonochromatic:](v11, "setWantsMonochromatic:", -[MRSlideProvider wantsMonochromatic](self->mMultiImageModelInput, "wantsMonochromatic")), -[MRSlideProvider setWantsMipmap:](v11, "setWantsMipmap:", -[MRSlideProvider wantsMipmap](self->mMultiImageModelInput, "wantsMipmap")), -[MRSlideProvider setIsStill:](v11, "setIsStill:", -[MRSlideProvider isStill](self->mMultiImageModelInput, "isStill")), -[MRSlideProvider stillTime](self->mMultiImageModelInput, "stillTime"), -[MRSlideProvider setStillTime:](v11, "setStillTime:"), -[MRSlideProvider setImageSizeScript:](v11, "setImageSizeScript:", -[MRSlideProvider imageSizeScript](self->mMultiImageModelInput, "imageSizeScript")), -[MRSlideProvider setShowTimeScript:](v11, "setShowTimeScript:", -[MRSlideProvider showTimeScript](self->mMultiImageModelInput, "showTimeScript")), -[MRSlideProvider setDefaultKenBurnsType:](v11, "setDefaultKenBurnsType:", -[MRSlideProvider defaultKenBurnsType](self->mMultiImageModelInput, "defaultKenBurnsType")), -[MRSlideProvider setDefaultSize:](v11, "setDefaultSize:", self->super.mPixelSize.width, self->super.mPixelSize.height), [*(&self->super.super.isa + v10) setObject:v11 forKey:v15], v11, v3 = &OBJC_IVAR___MRImageProvider_mShowTime, v11))
        {
          if ([(MCSlide *)v7 asset]|| [(MCSlide *)v7 plug])
          {
            [v29 removeObject:v9];
            if (v8 >= self->mIndexOfFirstMultiImageInput)
            {
              v12 = *v27;
              v13 = v27[1];
              if (*v27 <= v8)
              {
                if (v8 >= v13 + v12)
                {
                  v27[1] = &v8[-v12 + 1];
                }
              }

              else
              {
                v14 = *v27 - v8 + v13;
                if (!v13)
                {
                  v14 = 1;
                }

                *v27 = v8;
                v27[1] = v14;
              }
            }

            v18 = 1;
          }

          else
          {
            v18 = 0;
          }

          v19 = [(MRSlideProvider *)v11 slide];
          if (v7 != v19)
          {
            if (!self->super.mIsReadonly && !self->mSlidesAreReadonly)
            {
              v20 = v19;
              [(MCSlide *)v19 removeObserver:self forKeyPath:@"animationPaths"];
              [(MCSlide *)v20 removeObserver:self forKeyPath:@"asset.path"];
              [(MCSlide *)v20 removeObserver:self forKeyPath:@"plug"];
              if (self->super.mDoAudio)
              {
                [(MCSlide *)v20 removeObserver:self forKeyPath:@"audioNoVolume"];
                [(MCSlide *)v20 removeObserver:self forKeyPath:@"builtVolume"];
              }
            }

            if (v18)
            {
              [(MRSlideProvider *)v11 setSlide:v7];
              v3 = &OBJC_IVAR___MRImageProvider_mShowTime;
              if (!self->super.mIsReadonly && !self->mSlidesAreReadonly)
              {
                [(MCSlide *)v7 addObserver:self forKeyPath:@"animationPaths" options:0 context:0];
                [(MCSlide *)v7 addObserver:self forKeyPath:@"asset.path" options:0 context:0];
                [(MCSlide *)v7 addObserver:self forKeyPath:@"plug" options:0 context:0];
                if (self->super.mDoAudio)
                {
                  [(MCSlide *)v7 addObserver:self forKeyPath:@"audioNoVolume" options:0 context:0];
                  [(MCSlide *)v7 addObserver:self forKeyPath:@"builtVolume" options:0 context:0];
                }
              }
            }

            else
            {
              [(MRSlideProvider *)v11 setSlide:0];
              v3 = &OBJC_IVAR___MRImageProvider_mShowTime;
            }
          }
        }

        v6 = v6 + 1;
      }

      while (v5 != v6);
      v21 = [(NSSet *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      v5 = v21;
    }

    while (v21);
  }

  if (v29)
  {
    if (!self->super.mIsReadonly && !self->mSlidesAreReadonly)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v22 = [v29 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v32;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v32 != v24)
            {
              objc_enumerationMutation(v29);
            }

            v26 = [-[NSMutableDictionary objectForKey:](self->mSlideProvidersForElementIDs objectForKey:{*(*(&v31 + 1) + 8 * i)), "slide"}];
            [v26 removeObserver:self forKeyPath:@"animationPaths"];
            [v26 removeObserver:self forKeyPath:@"asset.path"];
            [v26 removeObserver:self forKeyPath:@"plug"];
            if (self->super.mDoAudio)
            {
              [v26 removeObserver:self forKeyPath:@"audioNoVolume"];
              [v26 removeObserver:self forKeyPath:@"builtVolume"];
            }
          }

          v23 = [v29 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v23);
      }
    }

    -[NSMutableDictionary removeObjectsForKeys:](self->mSlideProvidersForElementIDs, "removeObjectsForKeys:", [v29 allObjects]);

    self->mSlideProviders = [(NSMutableDictionary *)self->mSlideProvidersForElementIDs allValues];
  }

  [(MREffect *)self->mEffect setNeedsToUpdateSlides:1];
  [(MREffect *)self->mEffect setMultiImageSlideRange:*v27, v27[1]];
  self->mHasRequestedMoreSlides = 0;
}

- (void)_updateTexts
{
  self->mNeedsToUpdateTexts = 0;
  [(NSMutableDictionary *)self->mTextsForElementIDs removeAllObjects];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  obj = [(MCContainerEffect *)self->mContainer texts];
  v3 = [(NSSet *)obj countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(obj);
        }

        -[NSMutableDictionary setObject:forKey:](self->mTextsForElementIDs, "setObject:forKey:", [*(*(&v8 + 1) + 8 * v6) attributedString], +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"text%d", objc_msgSend(*(*(&v8 + 1) + 8 * v6), "index")));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSSet *)obj countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [(MREffect *)self->mEffect setNeedsToUpdateTexts:1];
}

- (void)_updateEffectAttributes
{
  self->mNeedsToUpdateEffectAttributes = 0;
  v3 = [(MCContainerEffect *)self->mContainer effectAttributes];
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if (v5)
  {
    [v4 addEntriesFromDictionary:v5];
  }

  [v4 addEntriesFromDictionary:v3];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  mSlideProviders = self->mSlideProviders;
  v7 = [(NSArray *)mSlideProviders countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(mSlideProviders);
        }

        [*(*(&v11 + 1) + 8 * i) setEffectAttributes:v4];
      }

      v8 = [(NSArray *)mSlideProviders countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(MREffect *)self->mEffect setAttributes:[(MCContainerEffect *)self->mContainer effectAttributes]];
  self->mNeedsToUpdateTiming = 1;
}

- (void)_observePlug
{
  v3.receiver = self;
  v3.super_class = MRLayerEffect;
  [(MRLayer *)&v3 _observePlug];
  [(MCContainerEffect *)self->mContainer addObserver:self forKeyPath:@"effectID" options:0 context:0];
  [(MCContainerEffect *)self->mContainer addObserver:self forKeyPath:@"slides" options:0 context:0];
  [(MCContainerEffect *)self->mContainer addObserver:self forKeyPath:@"effectAttributes" options:0 context:0];
}

- (void)_unobservePlug
{
  [(MCContainerEffect *)self->mContainer removeObserver:self forKeyPath:@"effectID"];
  [(MCContainerEffect *)self->mContainer removeObserver:self forKeyPath:@"slides"];
  [(MCContainerEffect *)self->mContainer removeObserver:self forKeyPath:@"effectAttributes"];
  v3.receiver = self;
  v3.super_class = MRLayerEffect;
  [(MRLayer *)&v3 _unobservePlug];
}

- (void)_observePlugOnPreactivate
{
  v3.receiver = self;
  v3.super_class = MRLayerEffect;
  [(MRLayer *)&v3 _observePlugOnPreactivate];
  [(MCContainerEffect *)self->mContainer addObserver:self forKeyPath:@"texts" options:0 context:0];
  if (self->super.mDoAudio)
  {
    [(MCContainerEffect *)self->mContainer addObserver:self forKeyPath:@"audioPlaylist.audioNoVolume" options:0 context:0];
    [(MCContainerEffect *)self->mContainer addObserver:self forKeyPath:@"audioPlaylist.builtVolume" options:0 context:0];
  }
}

- (void)_unobservePlugOnDepreactivate
{
  [(MCContainerEffect *)self->mContainer removeObserver:self forKeyPath:@"texts"];
  if (self->super.mDoAudio)
  {
    [(MCContainerEffect *)self->mContainer removeObserver:self forKeyPath:@"audioPlaylist.audioNoVolume"];
    [(MCContainerEffect *)self->mContainer removeObserver:self forKeyPath:@"audioPlaylist.builtVolume"];
  }

  v3.receiver = self;
  v3.super_class = MRLayerEffect;
  [(MRLayer *)&v3 _unobservePlugOnDepreactivate];
}

- (void)_renderAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  [(MRRenderer *)self->super.mRenderer addIDToDisplay:self->mEffectID];
  [(MRLayerClock *)self->super.mClock containerTime];
  v9 = v8;
  [(MREffect *)self->mEffect renderAtTime:a4 inContext:a5 withArguments:?];
  self->_previouslyRenderedContainerTime = v9;
}

- (id)_retainedByUserRenderedImageAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  [(MRRenderer *)self->super.mRenderer addIDToDisplay:self->mEffectID];
  [(MRLayerClock *)self->super.mClock containerTime];
  v9 = v8;
  result = [(MREffect *)self->mEffect retainedByUserRenderedImageAtTime:a4 inContext:a5 withArguments:?];
  self->_previouslyRenderedContainerTime = v9;
  return result;
}

- (double)pzrStart:(id)a3
{
  if (!self->mEffect || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0.0;
  }

  mEffect = self->mEffect;
  v6 = [a3 specificObject];

  [(MREffect *)mEffect pzrStart:v6];
  return result;
}

- (double)pzrUpdate:(id)a3
{
  if (!self->super.mIsActivated || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0.0;
  }

  mEffect = self->mEffect;
  v6 = [a3 specificObject];

  [(MREffect *)mEffect pzrUpdate:v6];
  return result;
}

- (double)pzrEnd:(id)a3
{
  if (!self->super.mIsActivated || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0.0;
  }

  mEffect = self->mEffect;
  v6 = [a3 specificObject];

  [(MREffect *)mEffect pzrEnd:v6];
  return result;
}

- (double)pzrCancel:(id)a3
{
  if (!self->super.mIsActivated || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0.0;
  }

  mEffect = self->mEffect;
  v6 = [a3 specificObject];

  [(MREffect *)mEffect pzrCancel:v6];
  return result;
}

- (double)panoramaPanningStart:(id)a3
{
  v4 = [a3 specificObject];
  memset(v9, 0, sizeof(v9));
  MRMatrix_Invert(self->super.mRenderingState->var13, v9);
  v5 = [(MREffect *)self->mEffect elementHitAtPoint:v9 withInverseMatrix:0 localPoint:v4[2], v4[3]];
  if (v5)
  {
    [-[NSMutableDictionary objectForKey:](self->mSlideProvidersForElementIDs objectForKey:{v5), "imageAspectRatio"}];
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  if (v7 < 0.5 || v7 > 2.0)
  {
    if ([(MREffect *)self->mEffect startPanoramaPanningForElementID:v5 isLandscape:&self->_panoramaPanningIsLandscape])
    {
      self->_panoramaPanningIsLandscape = v7 >= 1.0;
      self->_panoramaPanningSlideID = v5;
      self->_panoramaPanningPreviousDelta = 0.0;
      [(MRLayerClock *)self->super.mClock pauseOnNextUpdate];
    }
  }

  return 0.0;
}

- (double)panoramaPanningUpdate:(id)a3
{
  if (self->_panoramaPanningSlideID)
  {
    v4 = [a3 specificObject];
    if (self->_panoramaPanningIsLandscape)
    {
      v5 = &OBJC_IVAR___MRGesturePanZoomRotation_deltaX;
    }

    else
    {
      v5 = &OBJC_IVAR___MRGesturePanZoomRotation_deltaY;
    }

    [(MREffect *)self->mEffect updatePanoramaPanningForElementID:self->_panoramaPanningSlideID withDelta:*&v4[*v5] - self->_panoramaPanningPreviousDelta];
    if (self->_panoramaPanningIsLandscape)
    {
      v6 = &OBJC_IVAR___MRGesturePanZoomRotation_deltaX;
    }

    else
    {
      v6 = &OBJC_IVAR___MRGesturePanZoomRotation_deltaY;
    }

    self->_panoramaPanningPreviousDelta = *&v4[*v6];
  }

  return 0.0;
}

- (double)panoramaPanningEnd:(id)a3
{
  if (self->_panoramaPanningSlideID)
  {
    [(MREffect *)self->mEffect endPanoramaPanning];

    self->_panoramaPanningSlideID = 0;
    [(MRLayerClock *)self->super.mClock resumeAfter:2.0];
  }

  return 0.0;
}

- (double)panoramaPanningCancel:(id)a3
{
  if (self->_panoramaPanningSlideID)
  {
    [(MREffect *)self->mEffect endPanoramaPanning];

    self->_panoramaPanningSlideID = 0;
    [(MRLayerClock *)self->super.mClock resumeAfter:2.0];
  }

  return 0.0;
}

@end