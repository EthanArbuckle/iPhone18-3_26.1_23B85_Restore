@interface MRLayerNavigator
- (BOOL)_isNative3D;
- (BOOL)canTransitionToMoreSlides:(BOOL)a3;
- (BOOL)enterSlideFocusModeWithState:(id)a3;
- (BOOL)hasAudio;
- (BOOL)hasMoreSlidesFromTime:(double)a3 backwards:(BOOL)a4 startTime:(double *)a5 duration:(double *)a6;
- (BOOL)hasSomethingToRender;
- (BOOL)isAlphaFriendly;
- (BOOL)isLoadedForTime:(double)a3;
- (BOOL)isOpaque;
- (BOOL)isReadyToTransitionToNextSublayer;
- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (BOOL)willFocusOnNextSlideWithState:(id)a3 animate:(BOOL)a4;
- (BOOL)willFocusOnPreviousSlideWithState:(id)a3 animate:(BOOL)a4;
- (MRLayerNavigator)initWithParameters:(id)a3;
- (MRLayerNavigator)initWithPlug:(id)a3 andParameters:(id)a4 inSuperlayer:(id)a5;
- (NSArray)sublayers;
- (double)abortTransition:(id)a3;
- (double)attemptToFinishTransition:(id)a3 didTransition:(BOOL *)a4 gotReversed:(BOOL *)a5;
- (double)doActionTrigger:(id)a3;
- (double)doTransition:(id)a3 backwards:(BOOL)a4 updateHistory:(BOOL)a5 deltaStartTime:(double)a6 pzr:(id)a7;
- (double)fastScrubCancel:(id)a3;
- (double)fastScrubEnd:(id)a3;
- (double)fastScrubStart:(id)a3;
- (double)fastScrubUpdate:(id)a3;
- (double)finishTransition:(id)a3;
- (double)goBack;
- (double)goForth;
- (double)gotoMoreSlidesWithAction:(id)a3 backwards:(BOOL)a4 animate:(BOOL)a5 canCatchCurrentTransition:(BOOL)a6;
- (double)gotoNextOrPreviousSlideInCurrentSublayer:(BOOL)a3;
- (double)gotoNextSublayer:(id)a3 animate:(BOOL)a4;
- (double)gotoPreviousSublayer:(id)a3 animate:(BOOL)a4;
- (double)interestingTimeForElement:(id)a3;
- (double)interestingTimeForTime:(double)a3;
- (double)startMovingCurrentSublayer:(BOOL)a3;
- (double)transitionToNextSublayerWithDeltaStartTime:(double)a3;
- (id)_createSublayerForPlug:(id)a3;
- (id)_createSublayerForPrecomputingWithPlug:(id)a3;
- (id)_currentState;
- (id)_dumpLayerWithOptions:(unint64_t)a3;
- (id)_retainedByUserRenderedImageAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (id)_transitionWithTransitionTrigger:(id)a3;
- (id)patchworkAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (id)sublayerForKey:(id)a3;
- (id)sublayerForPlugObjectID:(id)a3 recursive:(BOOL)a4;
- (id)sublayerHitAtPoint:(CGPoint)a3 onlyIfHitElement:(BOOL)a4 localPoint:(CGPoint *)a5;
- (void)_createExtraSublayer;
- (void)_deleteSublayer:(id)a3;
- (void)_executeLayerCommandQueue;
- (void)_getInterestingTimesForSublayerControl;
- (void)_observePlug;
- (void)_observePlugOnPreactivate;
- (void)_observeSublayer:(id)a3;
- (void)_precomputeAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (void)_prerenderSublayersAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (void)_registerTransitionForHistory:(id)a3 withDestinationPlugID:(id)a4 backwards:(BOOL)a5;
- (void)_removeExtraSublayer;
- (void)_renderAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (void)_resyncToSerializerForTime:(double)a3;
- (void)_setNeedsToRequestRebuildAudio:(BOOL)a3;
- (void)_unobservePlug;
- (void)_unobservePlugOnDepreactivate;
- (void)_unobserveSublayer:(id)a3;
- (void)activate;
- (void)beginMorphingToAspectRatio:(double)a3 withDuration:(double)a4;
- (void)cleanup;
- (void)deactivate;
- (void)depreactivate:(BOOL)a3;
- (void)didFocusOnNextSlideWithState:(id)a3;
- (void)didFocusOnPreviousSlideWithState:(id)a3;
- (void)endMorphing;
- (void)endMovingCurrentSublayer;
- (void)endTransitionToSublayer;
- (void)exitSlideFocusModeWithState:(id)a3;
- (void)fillInNextSlideInformationInState:(id)a3;
- (void)fillInPreviousSlideInformationInState:(id)a3;
- (void)getLazyDuration:(double *)a3 lazyFactor:(double *)a4 animationDuration:(double *)a5 fromInterestingTime:(double)a6;
- (void)jumpToNextMarker:(id)a3;
- (void)jumpToPreviousMarker:(id)a3;
- (void)jumpToSublayer:(id)a3 atTime:(double)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setPixelSize:(CGSize)a3;
- (void)setSublayer:(id)a3 forKey:(id)a4;
- (void)synchronizeTime;
- (void)updateTransition:(id)a3;
@end

@implementation MRLayerNavigator

- (MRLayerNavigator)initWithPlug:(id)a3 andParameters:(id)a4 inSuperlayer:(id)a5
{
  v8.receiver = self;
  v8.super_class = MRLayerNavigator;
  v5 = [(MRLayer *)&v8 initWithPlug:a3 andParameters:a4 inSuperlayer:a5];
  v6 = v5;
  if (v5)
  {
    v5->mContainer = [(MCPlug *)v5->super.mPlug container];
    objc_opt_class();
    v6->mIsSerializerBased = objc_opt_isKindOfClass() & 1;
    v6->mSublayers = objc_alloc_init(NSMutableArray);
    v6->mSublayersForPlugs = objc_alloc_init(NSMutableDictionary);
    v6->mNextSublayer = 0;
    v6->mCurrentSublayer = 0;
    v6->mCurrentTransition = 0;
    v6->mSublayerToPrecompute = 0;
    v6->mCurrentSublayerContainerTimeOnTransitionStart = -1.0;
    v6->mForcedTransitionProgress = -1.0;
    v6->mPotentialTargetSublayers = objc_alloc_init(NSMutableSet);
    if (!v6->super.mIsReadonly)
    {
      [(MRLayerNavigator *)v6 _observePlug];
    }

    [(MRLayerNavigator *)v6 observeValueForKeyPath:@"plugs" ofObject:v6->mContainer change:0 context:0];
  }

  return v6;
}

- (MRLayerNavigator)initWithParameters:(id)a3
{
  v5.receiver = self;
  v5.super_class = MRLayerNavigator;
  v3 = [(MRLayer *)&v5 initWithParameters:a3];
  if (v3)
  {
    v3->mSublayers = objc_alloc_init(NSMutableArray);
    v3->mSublayersForPlugs = objc_alloc_init(NSMutableDictionary);
    v3->mCurrentSublayerContainerTimeOnTransitionStart = -1.0;
    v3->mForcedTransitionProgress = -1.0;
    v3->mPotentialTargetSublayers = objc_alloc_init(NSMutableSet);
  }

  return v3;
}

- (void)cleanup
{
  if (self->super.mUUID)
  {
    mSublayers = self->mSublayers;
    objc_sync_enter(mSublayers);
    if (self->mExtraSublayer)
    {
      [(MRLayerNavigator *)self _removeExtraSublayer];
    }

    v4 = [(NSMutableArray *)self->mSublayers copy];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          [(MRLayerNavigator *)self _unobserveSublayer:v8];
          [(MRLayerNavigator *)self _deleteSublayer:v8];
        }

        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    self->mSublayersForPlugs = 0;
    self->mSublayers = 0;
    [(MRTransition *)self->mCurrentTransition releaseByTransitioner:self];
    self->mCurrentTransition = 0;

    self->mPotentialTargetSublayers = 0;
    objc_sync_exit(mSublayers);
    [(MRLayer *)self->mSublayerToPrecompute cleanup];

    self->mSublayerToPrecompute = 0;
    self->mHistoryBack = 0;

    self->mHistoryForth = 0;
    v9.receiver = self;
    v9.super_class = MRLayerNavigator;
    [(MRLayer *)&v9 cleanup];

    self->mContainer = 0;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:@"plugs"])
  {
    v11 = [objc_msgSend(a5 objectForKey:{NSKeyValueChangeKindKey), "unsignedIntegerValue"}];
    v26 = a6;
    v27 = a4;
    if (v11 == &dword_0 + 2)
    {
      v20 = [a5 objectForKey:NSKeyValueChangeNewKey];
    }

    else
    {
      if (v11 == &dword_0 + 3)
      {
        v12 = [a5 objectForKey:NSKeyValueChangeOldKey];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v34;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v34 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v33 + 1) + 8 * i);
              v18 = -[NSMutableDictionary objectForKey:](self->mSublayersForPlugs, "objectForKey:", [v17 objectID]);
              if (([v18 isScheduledForDestruction] & 1) == 0)
              {
                [(MRLayerNavigator *)self _unobserveSublayer:v18];
                [v18 scheduleForDestruction];
                [(MRLayer *)self _queueLayerCommand:1 object:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
          }

          while (v14);
        }

        goto LABEL_28;
      }

      v20 = [(MCContainer *)self->mContainer plugs];
    }

    v21 = v20;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:{16, a6}];
    if (v22)
    {
      v23 = v22;
      v24 = *v30;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [(MRLayer *)self _queueLayerCommand:0 object:*(*(&v29 + 1) + 8 * j)];
        }

        v23 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v23);
    }

    goto LABEL_28;
  }

  if (![a3 isEqualToString:@"container"])
  {
    goto LABEL_30;
  }

  v26 = a6;
  v19 = -[NSMutableDictionary objectForKey:](self->mSublayersForPlugs, "objectForKey:", [a4 objectID]);
  if (([v19 isScheduledForDestruction] & 1) == 0)
  {
    [(MRLayerNavigator *)self _unobserveSublayer:v19];
    [v19 scheduleForDestruction];
    [(MRLayer *)self _queueLayerCommand:1 object:a4];
  }

  v27 = a4;
  if ([a4 container])
  {
    [(MRLayer *)self _queueLayerCommand:0 object:a4];
  }

LABEL_28:
  a6 = v26;
  a4 = v27;
  if (!self->super.mIsPrecomputing)
  {
    [(MRLayer *)self->super.mSuperlayer setNeedsUpdateForPluggerOfSublayer:self];
    [(MRLayer *)self stampTime];
  }

LABEL_30:
  v28.receiver = self;
  v28.super_class = MRLayerNavigator;
  [(MRLayer *)&v28 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:a6, v26];
}

- (void)setPixelSize:(CGSize)a3
{
  v13.receiver = self;
  v13.super_class = MRLayerNavigator;
  [(MRLayer *)&v13 setPixelSize:a3.width, a3.height];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  mSublayers = self->mSublayers;
  v5 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(mSublayers);
        }

        [*(*(&v9 + 1) + 8 * v8) setNeedsToUpdateGeometry:1];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)hasSomethingToRender
{
  v6.receiver = self;
  v6.super_class = MRLayerNavigator;
  v3 = [(MRLayer *)&v6 hasSomethingToRender];
  if (v3)
  {
    mCurrentSublayer = self->mCurrentSublayer;
    if (mCurrentSublayer && [(MRLayer *)mCurrentSublayer hasSomethingToRender])
    {
      LOBYTE(v3) = 1;
    }

    else if (self->mIsTransitioning)
    {
      LOBYTE(v3) = [(MRLayer *)self->mNextSublayer hasSomethingToRender];
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)synchronizeTime
{
  v3.receiver = self;
  v3.super_class = MRLayerNavigator;
  [(MRLayer *)&v3 synchronizeTime];
  if ([(MRLayer *)self->mCurrentSublayer isPreactivated])
  {
    [(MRLayer *)self->mCurrentSublayer synchronizeTime];
  }

  if ([(MRLayer *)self->mNextSublayer isPreactivated])
  {
    [(MRLayer *)self->mNextSublayer synchronizeTime];
  }
}

- (void)beginMorphingToAspectRatio:(double)a3 withDuration:(double)a4
{
  if (self->mIsTransitioning)
  {
    [(MRLayerNavigator *)self endTransitionToSublayer];
  }

  [(MRLayer *)self->mCurrentSublayer beginMorphingToAspectRatio:a3 withDuration:a4];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  mPotentialTargetSublayers = self->mPotentialTargetSublayers;
  v8 = [(NSMutableSet *)mPotentialTargetSublayers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(mPotentialTargetSublayers);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (v12 != self->mCurrentSublayer)
        {
          [(MRLayer *)v12 beginMorphingToAspectRatio:a3 withDuration:a4];
        }
      }

      v9 = [(NSMutableSet *)mPotentialTargetSublayers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)endMorphing
{
  [(MRLayer *)self->mCurrentSublayer endMorphing];
  if (self->mIsTransitioning)
  {
    mNextSublayer = self->mNextSublayer;

    [(MRLayer *)mNextSublayer endMorphing];
  }
}

- (void)activate
{
  v4.receiver = self;
  v4.super_class = MRLayerNavigator;
  [(MRLayer *)&v4 activate];
  mCurrentSublayer = self->mCurrentSublayer;
  if (mCurrentSublayer)
  {
    [(MRLayer *)mCurrentSublayer setTimeIn:0.0];
  }
}

- (void)deactivate
{
  if (self->mCurrentTransition)
  {
    [(MRLayerNavigator *)self endTransitionToSublayer];
  }

  if (self->mIsInnerTransitioning)
  {
    [(MRLayerNavigator *)self endMovingCurrentSublayer];
  }

  mTransitionChanges = self->mTransitionChanges;
  if (mTransitionChanges)
  {

    self->mTransitionChanges = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  mSublayers = self->mSublayers;
  v5 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(mSublayers);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isActivated])
        {
          [v9 deactivate];
        }
      }

      v6 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  mSublayerToPrecompute = self->mSublayerToPrecompute;
  if (mSublayerToPrecompute)
  {
    [(MRLayer *)mSublayerToPrecompute deactivate];
    [(MRLayer *)self->mSublayerToPrecompute depreactivate:0];
    [(MRLayer *)self->mSublayerToPrecompute cleanup];

    self->mSublayerToPrecompute = 0;
    self->mPrecomputingTarget = 0;
    self->mPrecomputingType = 0;
  }

  v11.receiver = self;
  v11.super_class = MRLayerNavigator;
  [(MRLayer *)&v11 deactivate];
}

- (void)depreactivate:(BOOL)a3
{
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mSublayers = self->mSublayers;
  v6 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(mSublayers);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isPreactivated])
        {
          [v10 depreactivate:v3];
        }
      }

      v7 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11.receiver = self;
  v11.super_class = MRLayerNavigator;
  [(MRLayer *)&v11 depreactivate:v3];
}

- (BOOL)isLoadedForTime:(double)a3
{
  v21.receiver = self;
  v21.super_class = MRLayerNavigator;
  v5 = [(MRLayer *)&v21 isLoadedForTime:?];
  if (v5)
  {
    mCurrentTransition = self->mCurrentTransition;
    if (mCurrentTransition && [(NSString *)[(MRTransition *)mCurrentTransition transitionID] isEqualToString:@"SourceOver"]|| (v19 = 0u, v20 = 0u, v17 = 0u, v18 = 0u, mSublayers = self->mSublayers, (v8 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v17 objects:v22 count:16]) == 0))
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v9 = v8;
      v10 = *v18;
LABEL_6:
      v11 = 0;
      while (1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(mSublayers);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        [v12 timeIn];
        v14 = v13;
        if ([v12 isPreactivated])
        {
          v15 = a3 - v14;
          if ([v12 shouldBeActivatedAtTime:v15])
          {
            v5 = [v12 isLoadedForTime:v15];
            if (!v5)
            {
              break;
            }
          }
        }

        if (v9 == ++v11)
        {
          v9 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v17 objects:v22 count:16];
          LOBYTE(v5) = 1;
          if (v9)
          {
            goto LABEL_6;
          }

          return v5;
        }
      }
    }
  }

  return v5;
}

- (BOOL)isOpaque
{
  if (!self->mIsTransitioning)
  {
    goto LABEL_6;
  }

  if ([(MRTransition *)self->mCurrentTransition isOpaque])
  {
    return 1;
  }

  if (self->mIsTransitioning)
  {
    return 0;
  }

LABEL_6:
  mCurrentSublayer = self->mCurrentSublayer;

  return [(MRLayer *)mCurrentSublayer isOpaque];
}

- (BOOL)isAlphaFriendly
{
  if (!self->mIsTransitioning)
  {
    goto LABEL_6;
  }

  if ([(MRTransition *)self->mCurrentTransition isAlphaFriendly])
  {
    return 1;
  }

  if (self->mIsTransitioning)
  {
    return 0;
  }

LABEL_6:
  mCurrentSublayer = self->mCurrentSublayer;

  return [(MRLayer *)mCurrentSublayer isAlphaFriendly];
}

- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  if (self->super.mLayerCommandQueueNeedsAttention)
  {
    [(MRLayerNavigator *)self _executeLayerCommandQueue];
  }

  v105.receiver = self;
  v105.super_class = MRLayerNavigator;
  v9 = [(MRLayer *)&v105 prerenderForTime:a4 inContext:a5 withArguments:a3];
  v10 = [(NSMutableArray *)self->mSublayers count];
  if (!v10)
  {
    goto LABEL_43;
  }

  if (v10 == &dword_0 + 1 && !self->mExtraSublayer)
  {
    [(MCPlug *)self->super.mPlug numberOfLoops];
    if (v11 > 1.0)
    {
      [(MRLayerNavigator *)self _createExtraSublayer];
    }
  }

  [(MRLayerClock *)self->super.mClock containerTime];
  v13 = v12;
  mCurrentSublayer = self->mCurrentSublayer;
  mNextSublayer = self->mNextSublayer;
  mCurrentTransition = self->mCurrentTransition;
  v14 = [a5 forcedState];
  if (!v14)
  {
    v99 = 0;
    goto LABEL_17;
  }

  v15 = v14;
  v99 = [v14 objectForKey:@"currentSublayerState"];
  if (self->mIsSerializerBased)
  {
    v16 = [v15 objectForKey:@"currentSublayerIndex"];
    if (!v16)
    {
      goto LABEL_17;
    }

    v17 = -[MCContainer plugAtIndex:](self->mContainer, "plugAtIndex:", [v16 intValue]);
  }

  else
  {
    v18 = [v15 objectForKey:@"currentSublayerID"];
    if (!v18)
    {
      goto LABEL_17;
    }

    v17 = [(MCContainer *)self->mContainer plugForID:v18];
  }

  v19 = v17;
  if (v17)
  {
    [(MRLayerNavigator *)self endTransitionToSublayer];
    v20 = v9;
    mSublayersForPlugs = self->mSublayersForPlugs;
    v22 = [v19 objectID];
    v23 = mSublayersForPlugs;
    v9 = v20;
    self->mCurrentSublayer = [(NSMutableDictionary *)v23 objectForKey:v22];
    [objc_msgSend(v99 objectForKey:{@"timeIn", "doubleValue"}];
    [(MRLayer *)self->mCurrentSublayer setTimeIn:?];
    self->mNeedsToUpdatePotentialTargetSublayers = 1;
    self->_needsToRecomputeCurrentSublayerTheoreticalTimeIn = self->mIsSerializerBased;
  }

LABEL_17:
  v24 = &OBJC_IVAR___MPLayerGroup__parent;
  if ((([a5 timeWasSet] & 1) != 0 || self->mNeedsToResyncToSerializer) && self->mIsSerializerBased)
  {
    goto LABEL_20;
  }

  if (self->mIsTransitioning)
  {
    goto LABEL_22;
  }

  if (self->mCurrentSublayer)
  {
    if ([(MRLayerClock *)self->super.mClock jumpedBackInTime]|| ![(MRLayer *)self->mCurrentSublayer isPreactivated])
    {
      [(MRLayer *)self->mCurrentSublayer timeIn];
      if (v13 < v39)
      {
        [(MRLayer *)self->mCurrentSublayer setTimeIn:v13];
      }
    }

    goto LABEL_22;
  }

  if (self->mIsSerializerBased)
  {
LABEL_20:
    [(MRLayerNavigator *)self _resyncToSerializerForTime:v13];
    goto LABEL_22;
  }

  mContainer = self->mContainer;
  if (mContainer)
  {
    v68 = -[NSMutableDictionary objectForKey:](self->mSublayersForPlugs, "objectForKey:", [-[MCContainer startPlug](mContainer "startPlug")]);
  }

  else
  {
    if (![(NSMutableArray *)self->mSublayers count])
    {
      v68 = self->mCurrentSublayer;
      goto LABEL_118;
    }

    v68 = [(NSMutableArray *)self->mSublayers objectAtIndex:0];
  }

  self->mCurrentSublayer = v68;
LABEL_118:
  v84 = 0.0;
  if (self->super.mIsActivated)
  {
    v84 = v13;
  }

  [(MRLayer *)v68 setTimeIn:v84];
  self->mNeedsToUpdatePotentialTargetSublayers = 1;
LABEL_22:
  self->mElementToDraw = 0;
  [(MRLayerNavigator *)self _prerenderSublayersAtTime:a4 inContext:a5 withArguments:a3];
  v25 = self->mCurrentSublayer;
  if (v25 != mCurrentSublayer || self->mCurrentTransition != mCurrentTransition || self->mIsTransitioning && self->mNextSublayer != mNextSublayer)
  {
    v9 = 1;
  }

  if (!v25 && !self->mIsTransitioning)
  {
LABEL_43:
    v9 = 0;
    return v9 & 1;
  }

  if (self->mIsSerializerBased && !self->mHasWarnedDelegateAboutNearingEnd)
  {
    v26 = [(MCPlugSerial *)[(MRLayer *)v25 plugAsSerial] index]+ 3;
    v24 = &OBJC_IVAR___MPLayerGroup__parent;
    if (v26 >= [(NSMutableArray *)self->mSublayers count])
    {
      self->mHasWarnedDelegateAboutNearingEnd = 1;
      [(MRRenderer *)self->super.mRenderer nearingEndForSerializer:self->mContainer];
    }
  }

  v27 = self->mCurrentSublayer;
  if (self->mIsSerializerBased && (v27 != mCurrentSublayer || self->_needsToRecomputeCurrentSublayerTheoreticalTimeIn))
  {
    v28 = v9;
    v29 = [(MCContainer *)self->mContainer orderedPlugs];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v30 = [v29 countByEnumeratingWithState:&v101 objects:v106 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v102;
      v33 = 0.0;
LABEL_36:
      v34 = 0;
      while (1)
      {
        if (*v102 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v101 + 1) + 8 * v34);
        if (v35 == [(MRLayer *)self->mCurrentSublayer plug])
        {
          break;
        }

        [(MCPlug *)v35 fullDuration];
        v37 = v36;
        [(MCPlug *)v35 transitionDuration];
        v33 = v33 + v37 - v38;
        if (v31 == ++v34)
        {
          v31 = [v29 countByEnumeratingWithState:&v101 objects:v106 count:16];
          if (v31)
          {
            goto LABEL_36;
          }

          break;
        }
      }
    }

    else
    {
      v33 = 0.0;
    }

    self->_currentSublayerTheoreticalTimeIn = v33;
    self->_needsToRecomputeCurrentSublayerTheoreticalTimeIn = 0;
    v27 = self->mCurrentSublayer;
    v9 = v28;
    v24 = &OBJC_IVAR___MPLayerGroup__parent;
  }

  [(MRLayer *)v27 timeIn];
  [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] setExternalTime:v13 - v40];
  if (*(&self->super.super.isa + v24[192]) != 1 || !self->mCurrentTransition)
  {
    if (v99)
    {
      v53 = [v99 objectForKey:@"persistentState"];
      if (v53)
      {
        [(MRLayer *)self->mCurrentSublayer _applyState:v53];
      }

      [a5 setForcedState:v99];
    }

    if (!self->mIsInnerTransitioning)
    {
      if ([(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] selfIsPaused])
      {
        v61 = self->mCurrentSublayer;
        [(MRLayerClock *)[(MRLayer *)v61 clock] containerTime];
        if ([(MRLayer *)v61 isLoadedForTime:?])
        {
          [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] resumeOnNextUpdate];
        }
      }

      goto LABEL_107;
    }

    mForcedTransitionProgress = self->mForcedTransitionProgress;
    if (mForcedTransitionProgress < 0.0)
    {
      mForcedTransitionProgress = fmin(v13 - self->mTransitionStartTime, 1.0);
    }

    if (self->mTransitionWasAborted)
    {
      mForcedTransitionProgress = 1.0 - mForcedTransitionProgress;
    }

    if (self->mTransitionIsBackwards)
    {
      mCurrentSublayerInterestingTime = self->mCurrentSublayerInterestingTime;
      if (self->mCurrentSublayerContainerTimeOnTransitionStart >= mCurrentSublayerInterestingTime)
      {
        mCurrentSublayerContainerTimeOnTransitionStart = self->mCurrentSublayerContainerTimeOnTransitionStart;
      }

      else
      {
        mCurrentSublayerContainerTimeOnTransitionStart = self->mCurrentSublayerInterestingTime;
      }

      mTotalMotionDuration = self->mTotalMotionDuration;
      v58 = mForcedTransitionProgress * mTotalMotionDuration;
      mCurrentSublayerLazyFactor = self->mCurrentSublayerLazyFactor;
      v60 = (mCurrentSublayerContainerTimeOnTransitionStart - mCurrentSublayerInterestingTime) * mCurrentSublayerLazyFactor;
      if (mForcedTransitionProgress * mTotalMotionDuration < v60)
      {
        if (mCurrentSublayerLazyFactor > 0.0)
        {
          mCurrentSublayerContainerTimeOnTransitionStart = mCurrentSublayerContainerTimeOnTransitionStart - v58 / mCurrentSublayerLazyFactor;
        }

        goto LABEL_106;
      }

      mNextSublayerLazyDuration = self->mNextSublayerLazyDuration;
      mNextSublayerLazyFactor = self->mNextSublayerLazyFactor;
      if (v58 <= mTotalMotionDuration - mNextSublayerLazyDuration * mNextSublayerLazyFactor)
      {
        mCurrentSublayerContainerTimeOnTransitionStart = mNextSublayerLazyDuration + self->mNextSublayerInterestingTime + self->mTransitionDuration * (1.0 - -(v60 - mForcedTransitionProgress * mTotalMotionDuration) / self->mTransitionDuration);
        goto LABEL_106;
      }

      mCurrentSublayerContainerTimeOnTransitionStart = self->mNextSublayerInterestingTime;
      if (mNextSublayerLazyFactor > 0.0)
      {
        v65 = (1.0 - mForcedTransitionProgress) * mTotalMotionDuration / mNextSublayerLazyFactor;
        goto LABEL_100;
      }
    }

    else
    {
      v62 = self->mTotalMotionDuration;
      v63 = self->mCurrentSublayerLazyFactor;
      v64 = self->mCurrentSublayerLazyDuration * v63;
      if (mForcedTransitionProgress * v62 >= v64)
      {
        mCurrentSublayerContainerTimeOnTransitionStart = self->mNextSublayerInterestingTime - self->mTransitionDuration * (1.0 - -(v64 - mForcedTransitionProgress * v62) / self->mTransitionDuration);
        goto LABEL_106;
      }

      mCurrentSublayerContainerTimeOnTransitionStart = self->mCurrentSublayerInterestingTime;
      if (v63 > 0.0)
      {
        v65 = mForcedTransitionProgress * v62 / v63;
LABEL_100:
        mCurrentSublayerContainerTimeOnTransitionStart = v65 + mCurrentSublayerContainerTimeOnTransitionStart;
      }
    }

LABEL_106:
    [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] setContainerTime:mCurrentSublayerContainerTimeOnTransitionStart];
LABEL_107:
    v76 = self->mCurrentSublayer;
    [(MRLayerClock *)[(MRLayer *)v76 clock] externalTime];
    v9 |= [(MRLayer *)v76 prerenderForTime:a4 inContext:a5 withArguments:?];
    self->mElementToDraw = 1;
    goto LABEL_132;
  }

  v41 = self->mForcedTransitionProgress;
  if (v41 < 0.0)
  {
    v42 = self->mTotalMotionDuration;
    v41 = 1.0;
    if (v42 > 0.0)
    {
      v41 = (v13 - self->mTransitionStartTime) / v42;
    }
  }

  if (self->mTransitionWasAborted)
  {
    v43 = 1.0 - v41;
  }

  else
  {
    v43 = v41;
  }

  [(MRLayer *)self->mNextSublayer timeIn];
  v45 = v13 - v44;
  if (v45 >= 0.0)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0.0;
  }

  [(MRLayerClock *)[(MRLayer *)self->mNextSublayer clock] setExternalTime:v46];
  if (!self->mControlsSublayerTimes)
  {
    if (self->mTransitionIsBackwards)
    {
      v66 = 1.0 - v43;
    }

    else
    {
      v66 = v43;
    }

    goto LABEL_125;
  }

  v47 = self->mTotalMotionDuration;
  v48 = v43 * v47;
  if (!self->mTransitionIsBackwards)
  {
    v71 = self->mCurrentSublayerLazyFactor;
    v72 = self->mCurrentSublayerLazyDuration * v71;
    if (v48 < v72)
    {
      v52 = v48 / v71 + self->mCurrentSublayerInterestingTime;
      goto LABEL_104;
    }

    mTransitionDuration = self->mTransitionDuration;
    v66 = 1.0;
    if (mTransitionDuration > 0.0)
    {
      v66 = -(v72 - v43 * v47) / mTransitionDuration;
    }

    [(MRLayer *)self->mCurrentSublayer duration];
    v82 = (1.0 - v66) * self->mTransitionDuration;
    if (v82 < 0.001)
    {
      v82 = 0.001;
    }

    [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] setContainerTime:v81 - v82];
    v83 = v66 * self->mTransitionDuration;
    goto LABEL_124;
  }

  v49 = self->mCurrentSublayerContainerTimeOnTransitionStart;
  v50 = self->mCurrentSublayerLazyFactor;
  v51 = (v49 - self->mCurrentSublayerInterestingTime) * v50;
  if (v48 >= v51)
  {
    v77 = self->mNextSublayerLazyFactor;
    if (v48 > v47 - self->mNextSublayerLazyDuration * v77)
    {
      [(MRLayerClock *)[(MRLayer *)self->mNextSublayer clock] setContainerTime:(1.0 - v43) * v47 / v77 + self->mNextSublayerInterestingTime];
      v78 = self->mCurrentSublayer;
      [(MRLayerClock *)[(MRLayer *)v78 clock] externalTime];
      [(MRLayer *)v78 prerenderForTime:a4 inContext:a5 withArguments:?];
      v79 = self->mNextSublayer;
      [(MRLayerClock *)[(MRLayer *)v79 clock] externalTime];
      v9 |= [(MRLayer *)v79 prerenderForTime:a4 inContext:a5 withArguments:?];
      v75 = 2;
      goto LABEL_129;
    }

    v85 = self->mTransitionDuration;
    v66 = 1.0 - -(v51 - v43 * v47) / v85;
    [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] setContainerTime:v85 * v66];
    [(MRLayer *)self->mNextSublayer duration];
    v87 = (1.0 - v66) * self->mTransitionDuration;
    if (v87 < 0.001)
    {
      v87 = 0.001;
    }

    v83 = v86 - v87;
LABEL_124:
    [(MRLayerClock *)[(MRLayer *)self->mNextSublayer clock] setContainerTime:v83];
LABEL_125:
    if ([(MRTransition *)self->mCurrentTransition prerenderForTime:a4 inContext:a5 withArguments:v66]&& v66 != self->_previouslyRenderedTransitionProgress)
    {
      v9 = 1;
    }

    v75 = 3;
    goto LABEL_129;
  }

  v52 = v49 - v48 / v50;
LABEL_104:
  [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] setContainerTime:v52];
  v73 = self->mCurrentSublayer;
  [(MRLayerClock *)[(MRLayer *)v73 clock] externalTime];
  v9 |= [(MRLayer *)v73 prerenderForTime:a4 inContext:a5 withArguments:?];
  v74 = self->mNextSublayer;
  [(MRLayerClock *)[(MRLayer *)v74 clock] externalTime];
  [(MRLayer *)v74 prerenderForTime:a4 inContext:a5 withArguments:?];
  v75 = 1;
LABEL_129:
  self->mElementToDraw = v75;
  if ([(MRLayerClock *)[(MRLayer *)self->mNextSublayer clock] jumpedBackInTime]&& !self->mControlsSublayerTimes)
  {
    [(MRLayer *)self->mNextSublayer synchronizeTime];
  }

LABEL_132:
  if ([(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] jumpedBackInTime]&& !self->mControlsSublayerTimes)
  {
    [(MRLayer *)self->mCurrentSublayer synchronizeTime];
  }

  [(MRLayerNavigator *)self _preprecomputeAtTime:a4 inContext:a5 withArguments:a3];
  if (self->super.mIsActivated)
  {
    if (self->mIsSerializerBased)
    {
      v88 = self->mNextSublayer;
      if (v88 && ![(MCPlugSerial *)[(MRLayer *)v88 plugAsSerial] index])
      {
        [(MRLayerClock *)[(MRLayer *)self->mNextSublayer clock] containerTime];
      }

      else
      {
        currentSublayerTheoreticalTimeIn = self->_currentSublayerTheoreticalTimeIn;
        [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] containerTime];
        v91 = currentSublayerTheoreticalTimeIn + v90;
      }

      self->_currentSlideshowTime = v91;
    }

    mElementToDraw = self->mElementToDraw;
    switch(mElementToDraw)
    {
      case 3:
        v94 = [(MRLayer *)self->mCurrentSublayer renderingState];
        *&v94->var4 = xmmword_1633A0;
        *&v94->var8 = xmmword_163390;
        *&v94->var0 = xmmword_1633B0;
        v93 = self->mNextSublayer;
        if (v93)
        {
          goto LABEL_149;
        }

        break;
      case 2:
        v93 = self->mNextSublayer;
        goto LABEL_149;
      case 1:
        v93 = self->mCurrentSublayer;
LABEL_149:
        v95 = [(MRLayer *)v93 renderingState];
        *&v95->var4 = xmmword_1633A0;
        *&v95->var8 = xmmword_163390;
        *&v95->var0 = xmmword_1633B0;
        break;
    }
  }

  else
  {
    v9 = 0;
    self->_currentSlideshowTime = 0.0;
  }

  return v9 & 1;
}

- (id)patchworkAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  if (self->super.mPixelSize.width <= 0.0 || self->super.mPixelSize.height <= 0.0)
  {
    return 0;
  }

  mElementToDraw = self->mElementToDraw;
  if (mElementToDraw == 3)
  {
    mCurrentTransition = self->mCurrentTransition;
    [(MRTransition *)mCurrentTransition progress];
    v11 = [(MRTransition *)mCurrentTransition patchworkAtTime:a4 inContext:a5 withArguments:?];
    [(MRTransition *)self->mCurrentTransition progress];
    self->_previouslyRenderedTransitionProgress = v15;
    if (v11)
    {
      return v11;
    }

    goto LABEL_13;
  }

  if (mElementToDraw != 2)
  {
    if (mElementToDraw == 1)
    {
      v10 = 496;
      goto LABEL_10;
    }

LABEL_13:
    v16.receiver = self;
    v16.super_class = MRLayerNavigator;
    return [(MRLayer *)&v16 patchworkAtTime:a4 inContext:a5 withArguments:a3];
  }

  v10 = 240;
LABEL_10:
  v13 = *(&self->super.super.isa + v10);
  [objc_msgSend(v13 "clock")];
  v11 = [v13 patchworkAtTime:a4 inContext:a5 withArguments:?];
  if (!v11)
  {
    goto LABEL_13;
  }

  return v11;
}

- (NSArray)sublayers
{
  if (!self->mExtraSublayer)
  {
    return &self->mSublayers->super;
  }

  v2 = [(NSMutableArray *)self->mSublayers objectAtIndex:0];

  return [NSArray arrayWithObject:v2];
}

- (id)sublayerHitAtPoint:(CGPoint)a3 onlyIfHitElement:(BOOL)a4 localPoint:(CGPoint *)a5
{
  if (!self->super.mIsActivated)
  {
    return 0;
  }

  v21 = v10;
  v22 = v9;
  v23 = v8;
  v24 = v7;
  v25 = v5;
  v26 = v6;
  if (!self->mCurrentSublayer)
  {
    return 0;
  }

  v13 = a4;
  y = a3.y;
  x = a3.x;
  if (self->mIsTransitioning)
  {
    if ([(MRLayer *)self->mNextSublayer isActivated])
    {
      [(MRLayerClock *)[(MRLayer *)self->mNextSublayer clock] externalTime];
      v17 = v16;
      [(MRRenderer *)self->super.mRenderer timeQuantum];
      if (v17 > v18 + v18)
      {
        return 0;
      }
    }
  }

  if (self->super.mRenderingState->var18)
  {
    y = -y;
  }

  v20 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    result = [(MRLayer *)self->mCurrentSublayer sublayerHitAtPoint:v13 onlyIfHitElement:&v20 localPoint:x, y];
    if (!a5)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!v13 || (result = [(MRLayer *)self->mCurrentSublayer elementHitAtPoint:0 localPoint:x, y]) != 0)
  {
    result = self->mCurrentSublayer;
    v20.x = x;
    v20.y = y;
    if (a5)
    {
LABEL_16:
      if (result)
      {
        *a5 = v20;
      }
    }
  }

  return result;
}

- (BOOL)hasAudio
{
  v3 = [(MCAudioPlaylist *)[(MCContainer *)self->mContainer audioPlaylist] songs];
  if (!v3 || ![(NSSet *)v3 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    mSublayers = self->mSublayers;
    v4 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (!v4)
    {
      return v4;
    }

    v6 = v4;
    v7 = *v11;
LABEL_6:
    v8 = 0;
    while (1)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(mSublayers);
      }

      if ([*(*(&v10 + 1) + 8 * v8) hasAudio])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v10 objects:v14 count:16];
        LOBYTE(v4) = 0;
        if (v6)
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
  if (self->mIsFastScrubbing)
  {
    return 1;
  }

  if (self->mIsTransitioning && self->mCurrentTransition)
  {
    mCurrentTransition = self->mCurrentTransition;
  }

  else
  {
    mCurrentTransition = self->mCurrentSublayer;
  }

  return [mCurrentTransition isNative3D];
}

- (id)sublayerForKey:(id)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_5C6A4;
  v16 = sub_5C6B4;
  v17 = 0;
  if (a3)
  {
    mSublayers = self->mSublayers;
    objc_sync_enter(mSublayers);
    mContainer = self->mContainer;
    if (mContainer)
    {
      if (self->mIsSerializerBased)
      {
        v7 = -[MCContainer plugAtIndex:](mContainer, "plugAtIndex:", [a3 intValue]);
      }

      else
      {
        v7 = [(MCContainer *)self->mContainer plugForID:a3];
      }

      if (v7)
      {
        v7 = -[NSMutableDictionary objectForKey:](self->mSublayersForPlugs, "objectForKey:", [v7 objectID]);
      }

      v13[5] = v7;
    }

    else
    {
      v9 = self->mSublayers;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_5C6C0;
      v11[3] = &unk_1AAE60;
      v11[4] = a3;
      v11[5] = &v12;
      [(NSMutableArray *)v9 enumerateObjectsUsingBlock:v11];
    }

    objc_sync_exit(mSublayers);
    v8 = v13[5];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v12, 8);
  return v8;
}

- (void)setSublayer:(id)a3 forKey:(id)a4
{
  [(MRLayerNavigator *)self _removeExtraSublayer];
  v8 = -[MCObject _initWithObjectID:]([MCPlugHaven alloc], "_initWithObjectID:", [a3 uuid]);
  [a3 setIdInSupercontainer:a4];
  [v8 setIDInSupercontainer:a4];
  [v8 setPreactivatesWithParent:1];
  [v8 setLoopDuration:1.0e10];
  [a3 _setPlug:v8 andSuperlayer:self];
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  [(NSMutableArray *)self->mSublayers addObject:a3];
  -[NSMutableDictionary setObject:forKey:](self->mSublayersForPlugs, "setObject:forKey:", a3, [a3 uuid]);
  [(MRLayerNavigator *)self _observeSublayer:a3];
  objc_sync_exit(mSublayers);
}

- (id)sublayerForPlugObjectID:(id)a3 recursive:(BOOL)a4
{
  v4 = a4;
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  v8 = [(NSMutableDictionary *)self->mSublayersForPlugs objectForKey:a3];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !v4;
  }

  if (!v9)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = self->mSublayers;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = *v17;
LABEL_7:
      v13 = 0;
      while (1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (v14 != self->mExtraSublayer && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v8 = [(MRLayer *)v14 sublayerForPlugObjectID:a3 recursive:1];
          if (v8)
          {
            break;
          }
        }

        if (v11 == ++v13)
        {
          v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v11)
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      v8 = 0;
    }
  }

  objc_sync_exit(mSublayers);
  return v8;
}

- (double)doActionTrigger:(id)a3
{
  result = 0.0;
  if (self->super.mIsActivated)
  {
    v6 = [a3 mcAction];
    if ([objc_msgSend(v6 "actionKey")])
    {

      [(MRLayerNavigator *)self gotoNextSublayer:a3 animate:1];
    }

    else if ([objc_msgSend(v6 "actionKey")])
    {

      [(MRLayerNavigator *)self gotoPreviousSublayer:a3 animate:1];
    }

    else
    {
      v7.receiver = self;
      v7.super_class = MRLayerNavigator;
      [(MRLayer *)&v7 doActionTrigger:a3];
    }
  }

  return result;
}

- (void)updateTransition:(id)a3
{
  if (self->super.mIsActivated && (self->mCurrentTransition || self->mIsInnerTransitioning))
  {
    v5 = [a3 specificObject];
    v6 = v5;
    if (self->mNextSublayer || self->mIsInnerTransitioning)
    {
      mTransitionStartedWithNext = self->mTransitionStartedWithNext;
      v8 = v5[4];
      if (self->mTransitionStartedWithNext)
      {
        v8 = -v8;
      }

      v9 = self->mForcedTransitionProgressOffset + v8 * 0.5 * 1.5;
    }

    else
    {
      v11 = v5[4];
      mTransitionStartedWithNext = self->mTransitionStartedWithNext;
      if (mTransitionStartedWithNext == v11 >= 0.0)
      {
        v12 = -1.0;
      }

      else
      {
        v12 = 1.0;
      }

      v9 = self->mForcedTransitionProgressOffset + v12 * (sqrt(fabs(v11) * 0.5 * 1.5 + 1.0) + -1.0);
    }

    if (v9 > 1.0)
    {
      v9 = 1.0;
    }

    self->mForcedTransitionProgress = v9;
    v10 = v5[13];
    if (v10 != -10.0)
    {
      if (mTransitionStartedWithNext)
      {
        v10 = -v10;
      }

      v9 = self->mForcedTransitionProgressOffset + v10;
      if (v9 > 1.0)
      {
        v9 = 1.0;
      }

      self->mForcedTransitionProgress = v9;
    }

    if (self->mTransitionIsSubzero)
    {
      v9 = -v9;
      self->mForcedTransitionProgress = v9;
    }

    if (v9 >= 0.0)
    {
      if (v9 > 1.0)
      {
        self->mForcedTransitionProgress = 1.0;
      }
    }

    else if (self->mTransitionIsNextPrevious && ![(MRTransition *)self->mCurrentTransition dependsOnFingerPosition])
    {
      mTransitionIsSubzero = self->mTransitionIsSubzero;
      v14 = self->mTransitionStartedWithNext;
      -[MRTransition pzrCancel:](self->mCurrentTransition, "pzrCancel:", [a3 specificObject]);
      self->mTransitionWasAborted = 1;
      v15 = -self->mForcedTransitionProgress;
      if (self->mIsInnerTransitioning)
      {
        [(MRLayerNavigator *)self endMovingCurrentSublayer];
      }

      else
      {
        [(MRLayerNavigator *)self endTransitionToSublayer];
      }

      [(MRLayerNavigator *)self gotoMoreSlidesWithAction:a3 backwards:mTransitionIsSubzero != v14 animate:1 canCatchCurrentTransition:0];
      self->mForcedTransitionProgress = v15;
      self->mTransitionStartedWithNext = v14;
      self->mTransitionIsSubzero = mTransitionIsSubzero ^ 1;
    }

    else
    {
      self->mForcedTransitionProgress = 0.0;
    }

    mCurrentTransition = self->mCurrentTransition;
    if (mCurrentTransition)
    {

      [(MRTransition *)mCurrentTransition pzrUpdate:v6];
    }
  }
}

- (double)attemptToFinishTransition:(id)a3 didTransition:(BOOL *)a4 gotReversed:(BOOL *)a5
{
  v9 = [a3 specificObject];
  mForcedTransitionProgressOffset = self->mForcedTransitionProgressOffset;
  v11 = v9[4];
  v12 = v9[8];
  v13 = mForcedTransitionProgressOffset + v11 * 0.5 * 1.5;
  v14 = mForcedTransitionProgressOffset + v11 * -0.5 * 1.5;
  if (self->mTransitionStartedWithNext)
  {
    v12 = -v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v9[13];
  if (v15 != -10.0)
  {
    v16 = -v15;
    if (!self->mTransitionStartedWithNext)
    {
      v16 = v9[13];
    }

    v12 = v9[14];
    v17 = mForcedTransitionProgressOffset + v16;
    if (self->mTransitionStartedWithNext)
    {
      v12 = -v12;
    }

    v14 = 1.0;
    if (v17 <= 1.0)
    {
      v14 = v17;
    }
  }

  v18 = -v14;
  if (self->mTransitionIsSubzero)
  {
    v12 = -v12;
  }

  else
  {
    v18 = v14;
  }

  if (self->mNextSublayer || self->mIsInnerTransitioning)
  {
    v19 = v18 < 0.35;
    if (v12 >= 4.0)
    {
      v19 = 0;
    }

    if (v12 < -0.1)
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 1;
  }

  if (*(v9 + 120))
  {
    v19 = v18 < 0.0;
  }

  if (a4)
  {
    *a4 = !v19;
  }

  if (v19)
  {

    [(MRLayerNavigator *)self abortTransition:a3];
  }

  else
  {
    if (a5)
    {
      *a5 = self->mTransitionIsSubzero;
    }

    [(MRLayerNavigator *)self finishTransition:a3];
  }

  return result;
}

- (double)finishTransition:(id)a3
{
  v3 = 0.0;
  if (!self->super.mIsActivated || !self->mCurrentTransition && !self->mIsInnerTransitioning && !self->mTransitionChanges || self->mForcedTransitionProgress < 0.0)
  {
    return v3;
  }

  v6 = [a3 specificObject];
  mIsInnerTransitioning = self->mIsInnerTransitioning;
  if (v6)
  {
    v8 = 1.0;
    if (!mIsInnerTransitioning)
    {
      v8 = 1.0 / self->mTotalMotionDuration;
    }

    if (v6[13] == -10.0)
    {
      v10 = v6[8];
      if (self->mTransitionStartedWithNext)
      {
        v10 = -v10;
      }

      v9 = v10 * 0.5 * 1.5;
    }

    else
    {
      v9 = v6[14];
      if (self->mTransitionStartedWithNext)
      {
        v9 = -v9;
      }
    }

    if (v9 >= v8)
    {
      v8 = v9;
      if (v9 > 5.0)
      {
        v8 = 5.0;
      }
    }

    self->mTotalMotionDuration = 1.0 / v8;
    self->mTransitionDuration = 1.0 / v8;
    v3 = (1.0 - self->mForcedTransitionProgress) / v8;
    if (mIsInnerTransitioning)
    {
      goto LABEL_22;
    }

LABEL_24:
    [(MRLayerClock *)self->super.mClock containerTime];
    v12 = v13 - self->mTotalMotionDuration * self->mForcedTransitionProgress;
    goto LABEL_25;
  }

  if (!self->mIsInnerTransitioning)
  {
    v3 = self->mTotalMotionDuration * (1.0 - self->mForcedTransitionProgress);
    goto LABEL_24;
  }

  v3 = 1.0 - self->mForcedTransitionProgress;
LABEL_22:
  [(MRLayerClock *)self->super.mClock containerTime];
  v12 = v11 - self->mForcedTransitionProgress;
LABEL_25:
  self->mTransitionStartTime = v12;
  self->mForcedTransitionProgress = -1.0;
  self->mForcedTransitionProgressOffset = 0.0;
  mCurrentTransition = self->mCurrentTransition;
  if (mCurrentTransition)
  {
    -[MRTransition pzrEnd:](mCurrentTransition, "pzrEnd:", [a3 specificObject]);
  }

  mTransitionChanges = self->mTransitionChanges;
  if (mTransitionChanges)
  {
    [(MRTransitionChanges *)mTransitionChanges setPzr:0];
  }

  return v3;
}

- (double)abortTransition:(id)a3
{
  mForcedTransitionProgress = 0.0;
  if (self->super.mIsActivated && (self->mCurrentTransition || self->mIsInnerTransitioning || self->mTransitionChanges) && self->mForcedTransitionProgress >= 0.0)
  {
    self->mTransitionWasAborted = 1;
    mIsInnerTransitioning = self->mIsInnerTransitioning;
    [(MRLayerClock *)self->super.mClock containerTime];
    if (mIsInnerTransitioning)
    {
      v8 = v7 - (1.0 - self->mForcedTransitionProgress);
    }

    else
    {
      v8 = v7 - self->mTotalMotionDuration * (1.0 - self->mForcedTransitionProgress);
    }

    self->mTransitionStartTime = v8;
    if (self->mIsInnerTransitioning)
    {
      mForcedTransitionProgress = self->mForcedTransitionProgress;
    }

    else
    {
      mForcedTransitionProgress = self->mTotalMotionDuration * self->mForcedTransitionProgress;
    }

    mCurrentTransition = self->mCurrentTransition;
    if (mCurrentTransition)
    {
      -[MRTransition pzrCancel:](mCurrentTransition, "pzrCancel:", [a3 specificObject]);
    }

    self->mForcedTransitionProgress = -1.0;
    self->mForcedTransitionProgressOffset = 0.0;
    [(MCPlug *)[(MRLayer *)self->mCurrentSublayer plug] fullDuration];
    [(MRLayer *)self->mCurrentSublayer setDuration:?];
  }

  mTransitionChanges = self->mTransitionChanges;
  if (mTransitionChanges)
  {

    self->mTransitionChanges = 0;
  }

  return mForcedTransitionProgress;
}

- (double)doTransition:(id)a3 backwards:(BOOL)a4 updateHistory:(BOOL)a5 deltaStartTime:(double)a6 pzr:(id)a7
{
  v7 = 0.0;
  if (self->super.mIsPreactivated)
  {
    v10 = a5;
    v11 = a4;
    mSublayers = self->mSublayers;
    objc_sync_enter(mSublayers);
    v15 = -[MRLayerNavigator sublayerForKey:](self, "sublayerForKey:", [a3 transitionDestinationPlugID]);
    mExtraSublayer = v15;
    if (self->super.mIsActivated && (mCurrentSublayer = self->mCurrentSublayer) != 0)
    {
      if (self->mIsTransitioning)
      {
        [(MRLayerNavigator *)self endTransitionToSublayer];
        mCurrentSublayer = self->mCurrentSublayer;
      }

      if (mExtraSublayer == mCurrentSublayer && self->mExtraSublayer)
      {
        mExtraSublayer = self->mExtraSublayer;
      }

      if (![(MRLayer *)mExtraSublayer isPreactivated])
      {
        [(MRLayer *)mExtraSublayer preactivate];
      }

      if (a7 && ![(MRLayer *)mExtraSublayer hasSlides])
      {
        mExtraSublayer = 0;
      }

      v18 = self->mCurrentSublayer;
      if (mExtraSublayer != v18)
      {
        if (self->mHistoryIsEnabled && v10)
        {
          [(MRLayerNavigator *)self _registerTransitionForHistory:a3 withDestinationPlugID:[(MRLayer *)v18 idInSupercontainer] backwards:v11];
        }

        mTransitionChanges = self->mTransitionChanges;
        if (mTransitionChanges)
        {
        }

        v20 = objc_alloc_init(MRTransitionChanges);
        self->mTransitionChanges = v20;
        [(MRTransitionChanges *)v20 setTransition:a3];
        [(MRTransitionChanges *)self->mTransitionChanges setCurrentSublayer:v18];
        [(MRTransitionChanges *)self->mTransitionChanges setNextSublayer:mExtraSublayer];
        [(MRLayerClock *)self->super.mClock containerTime];
        self->mTransitionChanges->startTime = v21 - a6;
        [a3 transitionDuration];
        self->mTransitionChanges->duration = v22;
        self->mTransitionChanges->isBackwards = v11;
        [(MRTransitionChanges *)self->mTransitionChanges setPzr:a7];
        [a3 transitionDuration];
        v7 = v23;
      }
    }

    else if (v15)
    {
      self->mCurrentSublayer = v15;
      self->_needsToRecomputeCurrentSublayerTheoreticalTimeIn = self->mIsSerializerBased;
    }

    objc_sync_exit(mSublayers);
  }

  return v7;
}

- (void)jumpToSublayer:(id)a3 atTime:(double)a4
{
  if (self->super.mIsPreactivated)
  {
    mSublayers = self->mSublayers;
    objc_sync_enter(mSublayers);
    if (self->mIsTransitioning)
    {
      [(MRLayerNavigator *)self endTransitionToSublayer];
    }

    mCurrentSublayer = self->mCurrentSublayer;
    if (mCurrentSublayer != a3)
    {
      self->mCurrentSublayer = a3;
      [(MRLayerClock *)self->super.mClock containerTime];
      [(MRLayer *)self->mCurrentSublayer setTimeIn:?];
      mCurrentSublayer = self->mCurrentSublayer;
    }

    if (![(MRLayer *)mCurrentSublayer isActivated])
    {
      if (![(MRLayer *)self->mCurrentSublayer isPreactivated])
      {
        [(MRLayer *)self->mCurrentSublayer preactivate];
      }

      [(MRLayer *)self->mCurrentSublayer activate];
      if (![(MRLayer *)self->mCurrentSublayer isLoadedForTime:0.0])
      {
        [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] pauseOnNextUpdate];
      }
    }

    [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] setContainerTime:a4];
    [(MRLayer *)self->mCurrentSublayer setNeedsToSynchronizeTime:1];
    self->_needsToRecomputeCurrentSublayerTheoreticalTimeIn = self->mIsSerializerBased;

    objc_sync_exit(mSublayers);
  }
}

- (double)goForth
{
  v2 = 0.0;
  if (self->super.mIsActivated && self->mHistoryIsEnabled)
  {
    mSublayers = self->mSublayers;
    objc_sync_enter(mSublayers);
    if ([(NSMutableArray *)self->mHistoryForth count])
    {
      v5 = [(NSMutableArray *)self->mHistoryForth lastObject];
      [(MRLayerNavigator *)self doTransition:v5 backwards:0 pzr:0];
      v2 = v6;
    }

    objc_sync_exit(mSublayers);
  }

  return v2;
}

- (double)goBack
{
  v2 = 0.0;
  if (self->super.mIsActivated && self->mHistoryIsEnabled)
  {
    mSublayers = self->mSublayers;
    objc_sync_enter(mSublayers);
    if ([(NSMutableArray *)self->mHistoryBack count])
    {
      v5 = [(NSMutableArray *)self->mHistoryBack lastObject];
      [(MRLayerNavigator *)self doTransition:v5 backwards:1 pzr:0];
      v2 = v6;
    }

    objc_sync_exit(mSublayers);
  }

  return v2;
}

- (void)endTransitionToSublayer
{
  if (self->mTransitionWasAborted)
  {
    if (self->mControlsSublayerTimes)
    {
      [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] setContainerTime:self->mCurrentSublayerContainerTimeOnTransitionStart];
      [(MRLayer *)self->mCurrentSublayer duration];
      v4 = v3;
      [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] containerTime];
      if (v4 < v5 + 4.0)
      {
        [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] containerTime];
        [(MRLayer *)self->mCurrentSublayer setDuration:v6 + 4.0];
      }
    }

    else
    {
      [(MRLayer *)self->mCurrentSublayer phaseInDuration];
      [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] setContainerTime:v13];
    }
  }

  else
  {
    mExtraSublayer = self->mExtraSublayer;
    if (mExtraSublayer && self->mNextSublayer == mExtraSublayer)
    {
      [(NSMutableDictionary *)self->mSublayersForPlugs setObject:mExtraSublayer forKey:[(MCObject *)[(MRLayer *)self->mExtraSublayer plug] objectID]];
      self->mExtraSublayer = self->mCurrentSublayer;
    }

    self->mCurrentSublayer = self->mNextSublayer;
    self->_needsToRecomputeCurrentSublayerTheoreticalTimeIn = self->mIsSerializerBased;
    [(MRLayer *)self->mCurrentSublayer timeIn];
    v9 = v8;
    [(MRLayerClock *)self->super.mClock containerTime];
    if (v9 > v10)
    {
      [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] containerTime];
      v12 = v11;
      [(MRLayerClock *)self->super.mClock containerTime];
      [(MRLayer *)self->mCurrentSublayer setTimeIn:?];
      if (v12 < 0.0)
      {
        v12 = 0.0;
      }

      [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] setContainerTime:v12];
    }

    if (self->mControlsSublayerTimes)
    {
      [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] setContainerTime:self->mNextSublayerInterestingTime];
    }
  }

  self->mNextSublayer = 0;
  self->mNeedsToUpdatePotentialTargetSublayers = 1;
  [(MRTransition *)self->mCurrentTransition releaseByTransitioner:self];
  self->mCurrentTransition = 0;
  self->mControlsSublayerTimes = 0;
  self->mTransitionWasAborted = 0;
  self->mIsTransitioning = 0;
  self->mTransitionIsBackwards = 0;
  self->mTransitionStartedWithNext = 0;
  self->mTransitionIsNextPrevious = 0;
  self->mTransitionIsSubzero = 0;
  self->mCurrentSublayerContainerTimeOnTransitionStart = -1.0;
  self->mForcedTransitionProgress = -1.0;
  self->mForcedTransitionProgressOffset = 0.0;
  if (self->mPausedSublayersForTransition && !self->mIsInSlideFocusMode)
  {
    mCurrentSublayer = self->mCurrentSublayer;
    [(MRLayerClock *)[(MRLayer *)mCurrentSublayer clock] containerTime];
    if ([(MRLayer *)mCurrentSublayer isLoadedForTime:?])
    {
      [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] resumeOnNextUpdate];
    }
  }

  if (self->_pauseWhenTransitionEnds)
  {
    [(MRLayerClock *)self->super.mClock pauseOnNextUpdate];
    self->_pauseWhenTransitionEnds = 0;
  }

  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);

  self->mTransitionChanges = 0;

  objc_sync_exit(mSublayers);
}

- (BOOL)canTransitionToMoreSlides:(BOOL)a3
{
  v3 = a3;
  v9 = 0;
  v10 = 0;
  mCurrentSublayer = self->mCurrentSublayer;
  [(MRLayerClock *)[(MRLayer *)mCurrentSublayer clock:0] containerTime];
  if (![(MRLayer *)mCurrentSublayer hasMoreSlidesFromTime:v3 backwards:&v10 startTime:&v9 duration:?])
  {
    v7 = self->mCurrentSublayer;
    if (v3)
    {
      v6 = [(MRLayer *)v7 previousTransition];
      if (!v6)
      {
        return v6;
      }
    }

    else
    {
      v6 = [(MRLayer *)v7 nextTransition];
      if (!v6)
      {
        return v6;
      }
    }

    LOBYTE(v6) = [(MRLayerNavigator *)self sublayerForKey:[(MCTransitionTrigger *)v6 transitionDestinationPlugID]]!= 0;
    return v6;
  }

  LOBYTE(v6) = 1;
  return v6;
}

- (double)gotoMoreSlidesWithAction:(id)a3 backwards:(BOOL)a4 animate:(BOOL)a5 canCatchCurrentTransition:(BOOL)a6
{
  v6 = a5;
  v7 = a4;
  if (a5 && (a6 || self->mForcedTransitionProgress == -1.0) && self->mIsTransitioning && [a3 specificObject])
  {
    if (self->mCurrentTransition)
    {
      self->mPausedSublayersForTransition = 1;
      v10 = [(MRTransition *)self->mCurrentTransition controlsLayersTime];
      self->mControlsSublayerTimes = v10;
      if (v10)
      {
        [(MRLayerNavigator *)self _getInterestingTimesForSublayerControl];
      }

      self->mTransitionWasAborted = 0;
      mTransitionIsBackwards = self->mTransitionIsBackwards;
      [(MRTransition *)self->mCurrentTransition progress];
      if (mTransitionIsBackwards)
      {
        v12 = 1.0 - v12;
      }

      self->mForcedTransitionProgressOffset = v12;
      self->mForcedTransitionProgress = v12;
      -[MRTransition pzrStart:](self->mCurrentTransition, "pzrStart:", [a3 specificObject]);
    }

    v13 = 0.0;
    if (self->mPausedSublayersForTransition)
    {
      [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] pauseOnNextUpdate];
      [(MRLayerClock *)[(MRLayer *)self->mNextSublayer clock] pauseOnNextUpdate];
    }
  }

  else
  {
    if (self->mIsTransitioning)
    {
      [(MRLayerNavigator *)self endTransitionToSublayer];
    }

    else if (self->mIsInnerTransitioning)
    {
      [(MRLayerNavigator *)self endMovingCurrentSublayer];
    }

    v17 = 0;
    v18 = 0;
    mCurrentSublayer = self->mCurrentSublayer;
    [(MRLayerClock *)[(MRLayer *)mCurrentSublayer clock:0] containerTime];
    if ([(MRLayer *)mCurrentSublayer hasMoreSlidesFromTime:v7 backwards:&v18 startTime:&v17 duration:?])
    {
      if (v6)
      {
        [(MRLayerNavigator *)self startMovingCurrentSublayer:v7];
      }

      else
      {
        [(MRLayerNavigator *)self gotoNextOrPreviousSlideInCurrentSublayer:v7];
      }
    }

    else if (v7)
    {
      [(MRLayerNavigator *)self gotoPreviousSublayer:a3 animate:v6];
    }

    else
    {
      [(MRLayerNavigator *)self gotoNextSublayer:a3 animate:v6];
    }

    return v15;
  }

  return v13;
}

- (double)transitionToNextSublayerWithDeltaStartTime:(double)a3
{
  if (!self->super.mIsActivated)
  {
    return 0.0;
  }

  mCurrentSublayer = self->mCurrentSublayer;
  if (!mCurrentSublayer)
  {
    return 0.0;
  }

  v6 = [(MCAction *)[(MRLayer *)mCurrentSublayer nextTransition] snapshot];
  if (!v6 && self->mIsSerializerBased && [(NSString *)[(MCObject *)[(MRLayer *)self plug] objectID] isEqualToString:[(MRRenderer *)self->super.mRenderer transitionLayerPlugObjectID]])
  {
    [(MRRenderer *)self->super.mRenderer _playbackIsOverWithTime:1 sendNotification:-1.0];
    return 0.0;
  }

  if (![v6 transitionID])
  {
    [v6 setTransitionID:kMRLayerTransitionIDPhaseInOut];
  }

  self->mTransitionStartedWithNext = 1;

  [(MRLayerNavigator *)self doTransition:v6 withDeltaStartTime:a3];
  return result;
}

- (BOOL)isReadyToTransitionToNextSublayer
{
  if (self->super.mIsActivated)
  {
    mCurrentSublayer = self->mCurrentSublayer;
    if (mCurrentSublayer)
    {
      v4 = [(MRLayerNavigator *)self sublayerForKey:[(MCTransitionTrigger *)[(MRLayer *)mCurrentSublayer nextTransition] transitionDestinationPlugID]];
      if (v4)
      {

        LOBYTE(mCurrentSublayer) = [v4 isLoadedForTime:0.0];
      }

      else
      {
        LOBYTE(mCurrentSublayer) = 1;
      }
    }
  }

  else
  {
    LOBYTE(mCurrentSublayer) = 0;
  }

  return mCurrentSublayer;
}

- (double)gotoNextSublayer:(id)a3 animate:(BOOL)a4
{
  if (!self->super.mIsActivated)
  {
    return 0.0;
  }

  mCurrentSublayer = self->mCurrentSublayer;
  if (!mCurrentSublayer)
  {
    return 0.0;
  }

  if (self->mIsTransitioning)
  {
    mCurrentSublayer = self->mNextSublayer;
  }

  v8 = [(MCAction *)[(MRLayer *)mCurrentSublayer nextTransition] snapshot];
  if (!v8)
  {
    return 0.0;
  }

  v9 = v8;
  if (a4)
  {
    if (![v8 transitionID])
    {
      [v9 setTransitionID:kMRLayerTransitionIDPhaseInOut];
    }
  }

  else
  {
    [v8 setTransitionDuration:0.0];
  }

  self->mTransitionStartedWithNext = 1;
  self->mTransitionIsNextPrevious = 1;
  v11 = [a3 specificObject];

  [(MRLayerNavigator *)self doTransition:v9 backwards:0 pzr:v11];
  return result;
}

- (double)gotoPreviousSublayer:(id)a3 animate:(BOOL)a4
{
  if (!self->super.mIsActivated)
  {
    return 0.0;
  }

  mCurrentSublayer = self->mCurrentSublayer;
  if (!mCurrentSublayer)
  {
    return 0.0;
  }

  if (self->mIsTransitioning)
  {
    mCurrentSublayer = self->mNextSublayer;
  }

  v8 = [(MCAction *)[(MRLayer *)mCurrentSublayer previousTransition] snapshot];
  if (!v8)
  {
    return 0.0;
  }

  v9 = v8;
  if (a4)
  {
    if (![v8 transitionID])
    {
      [v9 setTransitionID:kMRLayerTransitionIDPhaseInOut];
    }
  }

  else
  {
    [v8 setTransitionDuration:0.0];
  }

  self->mTransitionIsNextPrevious = 1;
  self->mTransitionStartedWithNext = 0;
  v11 = [a3 specificObject];

  [(MRLayerNavigator *)self doTransition:v9 backwards:1 pzr:v11];
  return result;
}

- (void)jumpToNextMarker:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [-[MRLayer effect](self->mCurrentSublayer "effect")])
  {
    v5 = [(MRLayer *)self->mCurrentSublayer effect];
    [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] containerTime];
    [v5 timeForNextChapterAfterTime:?];
    v7 = v6;
    v8 = [(MRLayer *)self->mCurrentSublayer clock];

    [(MRLayerClock *)v8 setContainerTime:v7];
  }

  else
  {

    [(MRLayerNavigator *)self gotoNextSublayer:a3 animate:0];
  }
}

- (void)jumpToPreviousMarker:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [-[MRLayer effect](self->mCurrentSublayer "effect")])
  {
    v5 = [(MRLayer *)self->mCurrentSublayer effect];
    [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] containerTime];
    [v5 timeForPreviousChapterBeforeTime:?];
    v7 = v6;
    v8 = [(MRLayer *)self->mCurrentSublayer clock];

    [(MRLayerClock *)v8 setContainerTime:v7];
  }

  else
  {

    [(MRLayerNavigator *)self gotoPreviousSublayer:a3 animate:0];
  }
}

- (void)_registerTransitionForHistory:(id)a3 withDestinationPlugID:(id)a4 backwards:(BOOL)a5
{
  v5 = a5;
  v9 = +[MCTransitionTrigger transitionForTargetPlugObjectID:withTransitionID:](MCTransitionTrigger, "transitionForTargetPlugObjectID:withTransitionID:", [a3 targetObjectID], objc_msgSend(a3, "transitionID"));
  [a3 transitionDuration];
  [v9 setTransitionDuration:?];
  [v9 setTransitionAttributes:{objc_msgSend(a3, "transitionAttributes")}];
  [v9 setTransitionDestinationPlugID:a4];
  mHistoryBack = self->mHistoryBack;
  if (v5)
  {
    v11 = [(NSMutableArray *)mHistoryBack lastObject];
    mHistoryForth = self->mHistoryForth;
    if (v11 != a3)
    {
      [(NSMutableArray *)mHistoryForth removeAllObjects];
      [(MRRenderer *)self->super.mRenderer removeNavigatorFromForthHistory:self];
      [(NSMutableDictionary *)self->super.mPersistentState removeObjectForKey:@"forthPlugID"];
      v13 = self->mHistoryBack;
      if (!v13)
      {
        v13 = objc_alloc_init(NSMutableArray);
        self->mHistoryBack = v13;
      }

      [(NSMutableArray *)v13 addObject:v9];
      [(MRRenderer *)self->super.mRenderer addNavigatorToBackHistory:self];
      v14 = v9;
      goto LABEL_14;
    }

    if (!mHistoryForth)
    {
      mHistoryForth = objc_alloc_init(NSMutableArray);
      self->mHistoryForth = mHistoryForth;
    }

    [(NSMutableArray *)mHistoryForth addObject:v9];
    -[MRLayer _setStateValue:forKey:](self, "_setStateValue:forKey:", [v9 transitionDestinationPlugID], @"forthPlugID");
    [(NSMutableArray *)self->mHistoryBack removeLastObject];
    [(MRRenderer *)self->super.mRenderer moveNavigatorFromBackToForthHistory:self];
    if ([(NSMutableArray *)self->mHistoryBack count])
    {
      v14 = [(NSMutableArray *)self->mHistoryBack lastObject];
LABEL_14:
      v17 = [v14 transitionDestinationPlugID];
      v18 = @"backPlugID";
LABEL_18:

      [(MRLayer *)self _setStateValue:v17 forKey:v18];
      return;
    }

    mPersistentState = self->super.mPersistentState;
    v20 = @"backPlugID";
  }

  else
  {
    if (!mHistoryBack)
    {
      mHistoryBack = objc_alloc_init(NSMutableArray);
      self->mHistoryBack = mHistoryBack;
    }

    [(NSMutableArray *)mHistoryBack addObject:v9];
    -[MRLayer _setStateValue:forKey:](self, "_setStateValue:forKey:", [v9 transitionDestinationPlugID], @"backPlugID");
    v15 = [(NSMutableArray *)self->mHistoryForth lastObject];
    v16 = self->mHistoryForth;
    if (v15 == a3)
    {
      [(NSMutableArray *)v16 removeLastObject];
      [(MRRenderer *)self->super.mRenderer moveNavigatorFromForthToBackHistory:self];
    }

    else
    {
      [(NSMutableArray *)v16 removeAllObjects];
      [(MRRenderer *)self->super.mRenderer removeNavigatorFromForthHistory:self];
      [(MRRenderer *)self->super.mRenderer addNavigatorToBackHistory:self];
    }

    if ([(NSMutableArray *)self->mHistoryForth count])
    {
      v17 = [-[NSMutableArray lastObject](self->mHistoryForth "lastObject")];
      v18 = @"forthPlugID";
      goto LABEL_18;
    }

    mPersistentState = self->super.mPersistentState;
    v20 = @"forthPlugID";
  }

  [(NSMutableDictionary *)mPersistentState removeObjectForKey:v20];
}

- (double)startMovingCurrentSublayer:(BOOL)a3
{
  v3 = a3;
  [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] containerTime];
  self->mCurrentSublayerContainerTimeOnTransitionStart = v5;
  [(MRLayer *)self->mCurrentSublayer interestingTimeForTime:?];
  self->mCurrentSublayerInterestingTime = v6;
  [(MRLayer *)self->mCurrentSublayer getLazyDuration:&self->mCurrentSublayerLazyDuration lazyFactor:&self->mCurrentSublayerLazyFactor animationDuration:&self->mCurrentSublayerAnimationDuration fromInterestingTime:?];
  if (!v3)
  {
    mCurrentSublayerInterestingTime = self->mCurrentSublayerInterestingTime + self->mCurrentSublayerLazyDuration + self->mCurrentSublayerAnimationDuration;
    v8 = 0.01;
    goto LABEL_5;
  }

  mCurrentSublayerInterestingTime = self->mCurrentSublayerInterestingTime;
  if (self->mCurrentSublayerContainerTimeOnTransitionStart < mCurrentSublayerInterestingTime + self->mCurrentSublayerLazyDuration)
  {
    v8 = -0.01;
LABEL_5:
    [(MRLayer *)self->mCurrentSublayer interestingTimeForTime:mCurrentSublayerInterestingTime + v8];
    self->mNextSublayerInterestingTime = v9;
    [(MRLayer *)self->mCurrentSublayer getLazyDuration:&self->mNextSublayerLazyDuration lazyFactor:&self->mNextSublayerLazyFactor animationDuration:&self->mNextSublayerAnimationDuration fromInterestingTime:?];
    goto LABEL_7;
  }

  self->mNextSublayerInterestingTime = mCurrentSublayerInterestingTime;
  self->mNextSublayerLazyDuration = self->mCurrentSublayerLazyDuration;
  self->mNextSublayerLazyFactor = self->mCurrentSublayerLazyFactor;
  mCurrentSublayerAnimationDuration = self->mCurrentSublayerAnimationDuration;
  self->mNextSublayerAnimationDuration = mCurrentSublayerAnimationDuration;
  [(MRLayer *)self->mCurrentSublayer interestingTimeForTime:self->mCurrentSublayerInterestingTime + self->mCurrentSublayerLazyDuration + mCurrentSublayerAnimationDuration + 0.01];
  self->mCurrentSublayerInterestingTime = v11;
  [(MRLayer *)self->mCurrentSublayer getLazyDuration:&self->mCurrentSublayerLazyDuration lazyFactor:&self->mCurrentSublayerLazyFactor animationDuration:&self->mCurrentSublayerAnimationDuration fromInterestingTime:?];
LABEL_7:
  self->mTransitionStartedWithNext = !v3;
  self->mTransitionIsNextPrevious = 1;
  self->mIsInnerTransitioning = 1;
  self->mTransitionIsBackwards = v3;
  if (v3)
  {
    mNextSublayerAnimationDuration = self->mNextSublayerAnimationDuration;
    p_mTransitionDuration = &self->mTransitionDuration;
    self->mTransitionDuration = mNextSublayerAnimationDuration;
    self->mTotalMotionDuration = mNextSublayerAnimationDuration + (self->mCurrentSublayerContainerTimeOnTransitionStart - self->mCurrentSublayerInterestingTime) * self->mCurrentSublayerLazyFactor + self->mNextSublayerLazyDuration * self->mNextSublayerLazyFactor;
    mCurrentSublayerContainerTimeOnTransitionStart = self->mCurrentSublayerContainerTimeOnTransitionStart;
    mNextSublayerInterestingTime = self->mNextSublayerInterestingTime;
    mNextSublayerLazyDuration = self->mNextSublayerLazyDuration;
    if (mCurrentSublayerContainerTimeOnTransitionStart >= mNextSublayerInterestingTime + mNextSublayerLazyDuration)
    {
      v26 = mNextSublayerLazyDuration * self->mNextSublayerLazyFactor;
      self->mForcedTransitionProgressOffset = v26;
      v27 = self->mCurrentSublayerContainerTimeOnTransitionStart;
      v28 = self->mCurrentSublayerInterestingTime;
      if (v27 >= v28)
      {
        v29 = *p_mTransitionDuration + (v27 - v28) * self->mCurrentSublayerLazyFactor;
      }

      else
      {
        v29 = v27 - (self->mNextSublayerInterestingTime + self->mNextSublayerLazyDuration);
      }

      v17 = v26 + v29;
      self->mForcedTransitionProgressOffset = v17;
    }

    else
    {
      v17 = (mCurrentSublayerContainerTimeOnTransitionStart - mNextSublayerInterestingTime) * self->mNextSublayerLazyFactor;
      self->mForcedTransitionProgressOffset = v17;
    }

    mTotalMotionDuration = self->mTotalMotionDuration;
    v25 = 1.0;
    if (mTotalMotionDuration > 0.0)
    {
      v25 = 1.0 - v17 / mTotalMotionDuration;
    }

    self->mForcedTransitionProgressOffset = v25;
  }

  else
  {
    v18 = self->mCurrentSublayerAnimationDuration;
    p_mTransitionDuration = &self->mTransitionDuration;
    self->mTransitionDuration = v18;
    v19 = v18 + self->mCurrentSublayerLazyDuration * self->mCurrentSublayerLazyFactor;
    self->mTotalMotionDuration = v19;
    v20 = 1.0;
    if (v19 > 0.0)
    {
      [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] containerTime];
      v20 = (v21 - self->mCurrentSublayerInterestingTime) * self->mCurrentSublayerLazyFactor / self->mTotalMotionDuration;
    }

    self->mForcedTransitionProgressOffset = v20;
    self->mForcedTransitionProgress = v20;
    v22 = self->mCurrentSublayerContainerTimeOnTransitionStart;
    v23 = self->mCurrentSublayerInterestingTime;
    mCurrentSublayerLazyDuration = self->mCurrentSublayerLazyDuration;
    if (v22 >= v23 + mCurrentSublayerLazyDuration)
    {
      v25 = v22 - (v23 + mCurrentSublayerLazyDuration) + mCurrentSublayerLazyDuration * self->mCurrentSublayerLazyFactor;
    }

    else
    {
      v25 = (v22 - v23) * self->mCurrentSublayerLazyFactor;
    }

    self->mForcedTransitionProgressOffset = v25;
    v30 = self->mTotalMotionDuration;
    if (v30 > 0.0)
    {
      v25 = v25 / v30;
      self->mForcedTransitionProgressOffset = v25;
    }
  }

  self->mForcedTransitionProgress = v25;
  [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] pauseOnNextUpdate];
  self->mPausedSublayersForTransition = 1;
  [(MRLayer *)self->mCurrentSublayer setIsInInteractiveMode:1];
  self->_pauseWhenTransitionEnds = [(MRLayerClock *)self->super.mClock selfIsPaused];
  [(MRLayerClock *)self->super.mClock resumeOnNextUpdate];
  return *p_mTransitionDuration;
}

- (void)endMovingCurrentSublayer
{
  mTransitionWasAborted = self->mTransitionWasAborted;
  mCurrentSublayer = self->mCurrentSublayer;
  if (mTransitionWasAborted)
  {
    [(MRLayerClock *)[(MRLayer *)mCurrentSublayer clock] setContainerTime:self->mCurrentSublayerInterestingTime];
  }

  else
  {
    [(MRLayerClock *)[(MRLayer *)mCurrentSublayer clock] setContainerTime:self->mNextSublayerInterestingTime];
    self->mNeedsToUpdatePotentialTargetSublayers = 1;
  }

  self->mControlsSublayerTimes = 0;
  self->mTransitionWasAborted = 0;
  self->mIsInnerTransitioning = 0;
  self->mTransitionIsBackwards = 0;
  self->mCurrentSublayerContainerTimeOnTransitionStart = -1.0;
  self->mForcedTransitionProgress = -1.0;
  self->mForcedTransitionProgressOffset = 0.0;
  [(MRLayer *)self->mCurrentSublayer setIsInInteractiveMode:0];
  if (self->mPausedSublayersForTransition && !self->mIsInSlideFocusMode)
  {
    [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] resumeOnNextUpdate];
  }

  if (self->_pauseWhenTransitionEnds)
  {
    [(MRLayerClock *)self->super.mClock pauseOnNextUpdate];
    self->_pauseWhenTransitionEnds = 0;
  }

  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);

  self->mTransitionChanges = 0;

  objc_sync_exit(mSublayers);
}

- (double)gotoNextOrPreviousSlideInCurrentSublayer:(BOOL)a3
{
  v3 = a3;
  [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] containerTime];
  self->mCurrentSublayerContainerTimeOnTransitionStart = v5;
  [(MRLayer *)self->mCurrentSublayer interestingTimeForTime:?];
  self->mCurrentSublayerInterestingTime = v6;
  [(MRLayer *)self->mCurrentSublayer getLazyDuration:&self->mCurrentSublayerLazyDuration lazyFactor:&self->mCurrentSublayerLazyFactor animationDuration:&self->mCurrentSublayerAnimationDuration fromInterestingTime:?];
  if (!v3)
  {
    v8 = self->mCurrentSublayerInterestingTime + self->mCurrentSublayerLazyDuration + self->mCurrentSublayerAnimationDuration + 0.01;
    goto LABEL_5;
  }

  mCurrentSublayerInterestingTime = self->mCurrentSublayerInterestingTime;
  if (self->mCurrentSublayerContainerTimeOnTransitionStart < mCurrentSublayerInterestingTime + self->mCurrentSublayerLazyDuration)
  {
    v8 = mCurrentSublayerInterestingTime + -0.01;
LABEL_5:
    [(MRLayer *)self->mCurrentSublayer interestingTimeForTime:v8];
    mCurrentSublayerInterestingTime = v9;
  }

  [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] setContainerTime:mCurrentSublayerInterestingTime];
  self->mNeedsToUpdatePotentialTargetSublayers = 1;
  return 0.0;
}

- (id)_currentState
{
  v7.receiver = self;
  v7.super_class = MRLayerNavigator;
  v3 = [(MRLayer *)&v7 _currentState];
  mCurrentSublayer = self->mCurrentSublayer;
  if (mCurrentSublayer)
  {
    [v3 setObject:-[MRLayer idInSupercontainer](mCurrentSublayer forKey:{"idInSupercontainer"), @"currentSublayerID"}];
    v5 = [(MRLayer *)self->mCurrentSublayer _currentState];
    [(MRLayer *)self->mCurrentSublayer timeIn];
    [v5 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"timeIn"}];
    [v3 setObject:v5 forKey:@"currentSublayerState"];
  }

  return v3;
}

- (id)_dumpLayerWithOptions:(unint64_t)a3
{
  v18.receiver = self;
  v18.super_class = MRLayerNavigator;
  v5 = [(MRLayer *)&v18 _dumpLayerWithOptions:?];
  if ((a3 & 1) == 0)
  {
    v6 = [[NSMutableArray alloc] initWithObjects:{v5, 0}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    mSublayers = self->mSublayers;
    v8 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(mSublayers);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([v12 isActivated])
          {
            [v6 addObject:{objc_msgSend(v12, "_dumpLayerWithOptions:", a3 + 256)}];
          }
        }

        v9 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v9);
    }

    v5 = [v6 componentsJoinedByString:@"\n"];
  }

  return v5;
}

- (void)_resyncToSerializerForTime:(double)a3
{
  mNeedsToResyncToSerializer = self->mNeedsToResyncToSerializer;
  self->mNeedsToResyncToSerializer = 0;
  if (self->mIsTransitioning)
  {
    [(MRLayerNavigator *)self endTransitionToSublayer];
  }

  if (self->mIsInnerTransitioning)
  {
    [(MRLayerNavigator *)self endMovingCurrentSublayer];
  }

  mContainer = self->mContainer;
  v7 = [(MCContainer *)mContainer orderedPlugs];
  v40 = mContainer;
  [(MCContainer *)mContainer initialTransitionDuration];
  v9 = v8;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v14 = *v42;
    v15 = 0.0;
    v16 = v9;
    while (2)
    {
      v17 = 0;
      v18 = v13;
      do
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v41 + 1) + 8 * v17);
        v19 = v9;
        if (v12)
        {
          [*(*(&v41 + 1) + 8 * v17) phaseInDuration];
          v19 = v9 + v20;
        }

        if (v19 > a3)
        {
          v23 = v13;
          v13 = v18;
          goto LABEL_17;
        }

        v15 = v9 - v16;
        [v13 fullDuration];
        v9 = v9 - v16 + v21;
        [v13 transitionDuration];
        v16 = v22;
        v12 = [v13 transitionID] == 0;
        v17 = v17 + 1;
        v18 = v13;
      }

      while (v11 != v17);
      v11 = [v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v23 = 0;
LABEL_17:
    v24 = v9;
    if (v12)
    {
      [v13 phaseOutDuration];
      v26 = v9 - v25;
      [v13 phaseOutDuration];
      v28 = v27;
      [v23 phaseInDuration];
      v9 = v28 + v29;
      v30 = 1;
      goto LABEL_22;
    }

    v9 = v16;
  }

  else
  {
    v13 = 0;
    v23 = 0;
    v15 = 0.0;
    v24 = v9;
    v16 = v9;
  }

  v30 = 0;
  v26 = v24 - v9;
LABEL_22:
  if (v23)
  {
    v31 = v26 <= a3 || v13 == 0;
    v32 = v31;
    self->mIsTransitioning = v32;
    if (!v31)
    {
      goto LABEL_35;
    }

    if (mNeedsToResyncToSerializer)
    {
      self->mIsTransitioning = 0;
      v15 = v24 - v16;
      [v23 fullDuration];
      v24 = v24 - v16 + v33;
      v13 = v23;
      v23 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    self->mIsTransitioning = 0;
  }

  if (!v13)
  {
    if (!v23)
    {
      goto LABEL_60;
    }

    v13 = 0;
    v35 = 1;
LABEL_44:
    mExtraSublayer = self->mExtraSublayer;
    if (!mExtraSublayer)
    {
      mExtraSublayer = -[NSMutableDictionary objectForKey:](self->mSublayersForPlugs, "objectForKey:", [v23 objectID]);
    }

    self->mNextSublayer = mExtraSublayer;
    if (![(MRLayer *)mExtraSublayer isPreactivated])
    {
      [(MRLayer *)self->mNextSublayer preactivate];
    }

    v37 = v24 - v16;
    [(MRLayer *)self->mNextSublayer setTimeIn:v37];
    [v23 fullDuration];
    [(MRLayer *)self->mNextSublayer setDuration:?];
    [(MRLayerClock *)[(MRLayer *)self->mNextSublayer clock] setContainerTime:a3 - v37];
    if (![(MRLayer *)self->mNextSublayer isActivated])
    {
      [(MRLayer *)self->mNextSublayer activate];
      if (![(MRLayer *)self->mNextSublayer isLoadedForTime:0.0])
      {
        [(MRLayerClock *)[(MRLayer *)self->mNextSublayer clock] pauseOnNextUpdate];
      }
    }

    if (v35)
    {
      v38 = [MRTransition retainedTransitionWithTransitionID:[(MCContainer *)v40 initialTransitionID] forTransitioner:self];
      self->mCurrentTransition = v38;
      if (!v38)
      {
        goto LABEL_60;
      }

      [(MRTransition *)self->mCurrentTransition setAttributes:[(MCContainer *)v40 initialTransitionAttributes]];
      [(MRTransition *)self->mCurrentTransition setPixelSize:self->super.mPixelSize.width, self->super.mPixelSize.height];
      mCurrentTransition = self->mCurrentTransition;
      if (!mCurrentTransition)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v30)
      {
        mCurrentTransition = [MRTransition retainedTransitionWithTransitionID:@"PhaseInOut" forTransitioner:self];
      }

      else
      {
        mCurrentTransition = [(MRLayerNavigator *)self _transitionWithTransitionTrigger:v13];
      }

      self->mCurrentTransition = mCurrentTransition;
      if (!mCurrentTransition)
      {
        goto LABEL_60;
      }
    }

    [(MRTransition *)mCurrentTransition setSourceLayer:self->mCurrentSublayer];
    [(MRTransition *)self->mCurrentTransition setTargetLayer:self->mNextSublayer];
    self->mTransitionStartTime = v26;
    self->mTransitionDuration = v9;
    self->mTotalMotionDuration = v9;
    self->_previouslyRenderedTransitionProgress = -1.0;
    goto LABEL_60;
  }

LABEL_35:
  v34 = -[NSMutableDictionary objectForKey:](self->mSublayersForPlugs, "objectForKey:", [v13 objectID]);
  self->mCurrentSublayer = v34;
  if (![(MRLayer *)v34 isActivated])
  {
    if (![(MRLayer *)self->mCurrentSublayer isPreactivated])
    {
      [(MRLayer *)self->mCurrentSublayer preactivate];
    }

    [(MRLayer *)self->mCurrentSublayer activate];
    if (![(MRLayer *)self->mCurrentSublayer isLoadedForTime:0.0])
    {
      [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] pauseOnNextUpdate];
    }
  }

  [(MRLayer *)self->mCurrentSublayer setTimeIn:v15];
  [(MRLayer *)self->mCurrentSublayer setDuration:v24 - v15];
  [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] setContainerTime:a3 - v15];
  v35 = 0;
  self->_currentSublayerTheoreticalTimeIn = v15;
  self->_needsToRecomputeCurrentSublayerTheoreticalTimeIn = 0;
  if (self->mIsTransitioning)
  {
    goto LABEL_44;
  }

LABEL_60:
  [(MRLayer *)self setNeedsToSynchronizeTime:1];
  self->mNeedsToUpdatePotentialTargetSublayers = 1;
}

- (id)_transitionWithTransitionTrigger:(id)a3
{
  v5 = [a3 transitionID];
  v6 = [a3 transitionAttributes];
  v7 = [v6 objectForKey:@"PresetID"];
  if ([v5 isEqualToString:@"Random"])
  {
    v8 = [(MRRenderer *)self->super.mRenderer chooseTransitionIDForRandomTransitionPresetID:v7];
    v9 = [v8 lastPathComponent];
    v10 = +[MRTransition retainedTransitionWithTransitionID:forTransitioner:](MRTransition, "retainedTransitionWithTransitionID:forTransitioner:", [v8 stringByDeletingLastPathComponent], self);
    v11 = v10;
    if (v10)
    {
      [v10 setPresetID:v9];
LABEL_6:
      [v11 setPixelSize:{self->super.mPixelSize.width, self->super.mPixelSize.height}];
    }
  }

  else
  {
    v12 = [MRTransition retainedTransitionWithTransitionID:v5 forTransitioner:self];
    v11 = v12;
    if (v12)
    {
      [v12 setAttributes:v6];
      goto LABEL_6;
    }
  }

  return v11;
}

- (BOOL)enterSlideFocusModeWithState:(id)a3
{
  mIsTransitioning = self->mIsTransitioning;
  if (!mIsTransitioning)
  {
    mCurrentSublayer = self->mCurrentSublayer;
    [(MRLayerClock *)[(MRLayer *)mCurrentSublayer clock] pauseOnNextUpdate];
    self->mIsInSlideFocusMode = 1;
    [a3 setSlideInfo:{-[MRLayer currentSlideInfoForElement:](mCurrentSublayer, "currentSlideInfoForElement:", objc_msgSend(a3, "slideID"))}];
    [(MRLayerNavigator *)self fillInNextSlideInformationInState:a3];
    [(MRLayerNavigator *)self fillInPreviousSlideInformationInState:a3];
  }

  return !mIsTransitioning;
}

- (void)fillInNextSlideInformationInState:(id)a3
{
  if (self->mIsTransitioning)
  {
    v5 = &OBJC_IVAR___MRLayerNavigator_mNextSublayer;
  }

  else
  {
    v5 = &OBJC_IVAR___MRLayerNavigator_mCurrentSublayer;
  }

  v6 = *(&self->super.super.isa + *v5);
  if (![v6 isActivated])
  {
    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ((v7 = [objc_msgSend(+[MREffectManager sharedManager](MREffectManager "sharedManager")]) == 0 ? (v8 = objc_msgSend(objc_msgSend(v6, "container"), "countOfSlides")) : (v8 = objc_msgSend(v7, "intValue")), (v9 = objc_msgSend(objc_msgSend(a3, "slideInfo"), "index") + 1, v9 < v8) && (v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"image%d", v9)) != 0))
  {
    v11 = v10;
  }

  else
  {
    v12 = -[MRLayerNavigator sublayerForKey:](self, "sublayerForKey:", [objc_msgSend(v6 "nextTransition")]);
    if (!v12)
    {
      v11 = 0;
      v13 = 0;
      goto LABEL_17;
    }

    v6 = v12;
    v11 = @"image0";
  }

  v13 = [v6 currentSlideInfoForElement:v11];
LABEL_17:
  [a3 setNextSlideInfo:v13];

  [a3 setNextSlideID:v11];
}

- (void)fillInPreviousSlideInformationInState:(id)a3
{
  if (self->mIsTransitioning)
  {
    v5 = &OBJC_IVAR___MRLayerNavigator_mNextSublayer;
  }

  else
  {
    v5 = &OBJC_IVAR___MRLayerNavigator_mCurrentSublayer;
  }

  v6 = *(&self->super.super.isa + *v5);
  if (![v6 isActivated])
  {
    return;
  }

  v7 = [objc_msgSend(a3 "slideInfo")];
  if (!v7)
  {
    v9 = -[MRLayerNavigator sublayerForKey:](self, "sublayerForKey:", [objc_msgSend(v6 "previousTransition")]);
    if (v9)
    {
      v6 = v9;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = @"image0";
        goto LABEL_15;
      }

      v10 = [objc_msgSend(+[MREffectManager sharedManager](MREffectManager "sharedManager")];
      if (v10)
      {
        LODWORD(v7) = [v10 intValue];
        if (v7)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v7 = [objc_msgSend(v6 "container")];
        if (v7)
        {
          goto LABEL_6;
        }
      }
    }

    v8 = 0;
LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

LABEL_6:
  v8 = [NSString stringWithFormat:@"image%d", (v7 - 1)];
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_15:
  v11 = [v6 currentSlideInfoForElement:v8];
LABEL_19:
  [a3 setPreviousSlideInfo:v11];

  [a3 setPreviousSlideID:v8];
}

- (BOOL)willFocusOnNextSlideWithState:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  if (self->mIsTransitioning)
  {
    v7 = &OBJC_IVAR___MRLayerNavigator_mNextSublayer;
  }

  else
  {
    v7 = &OBJC_IVAR___MRLayerNavigator_mCurrentSublayer;
  }

  v8 = [*(&self->super.super.isa + *v7) isActivated];
  if (v8)
  {
    v9 = [objc_msgSend(a3 "nextSlideInfo")];
    v10 = [objc_msgSend(a3 "slideInfo")];
    if (v9 <= v10)
    {
      -[MRLayerNavigator gotoNextSublayer:animate:](self, "gotoNextSublayer:animate:", [a3 action], v4);
    }

    [a3 setDelegateIsTransitioningToo:v9 <= v10];
  }

  return v8;
}

- (void)didFocusOnNextSlideWithState:(id)a3
{
  if (self->mIsTransitioning)
  {
    v5 = &OBJC_IVAR___MRLayerNavigator_mNextSublayer;
  }

  else
  {
    v5 = &OBJC_IVAR___MRLayerNavigator_mCurrentSublayer;
  }

  v6 = *(&self->super.super.isa + *v5);
  if ([v6 isActivated])
  {
    [v6 interestingTimeForElement:{objc_msgSend(a3, "slideID")}];
    [objc_msgSend(v6 "clock")];

    [(MRLayerNavigator *)self fillInNextSlideInformationInState:a3];
  }
}

- (BOOL)willFocusOnPreviousSlideWithState:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  if (self->mIsTransitioning)
  {
    v7 = &OBJC_IVAR___MRLayerNavigator_mNextSublayer;
  }

  else
  {
    v7 = &OBJC_IVAR___MRLayerNavigator_mCurrentSublayer;
  }

  v8 = [*(&self->super.super.isa + *v7) isActivated];
  if (v8)
  {
    v9 = [objc_msgSend(a3 "previousSlideInfo")];
    v10 = [objc_msgSend(a3 "slideInfo")];
    if (v9 >= v10)
    {
      -[MRLayerNavigator gotoPreviousSublayer:animate:](self, "gotoPreviousSublayer:animate:", [a3 action], v4);
    }

    [a3 setDelegateIsTransitioningToo:v9 >= v10];
  }

  return v8;
}

- (void)didFocusOnPreviousSlideWithState:(id)a3
{
  if (self->mIsTransitioning)
  {
    v5 = &OBJC_IVAR___MRLayerNavigator_mNextSublayer;
  }

  else
  {
    v5 = &OBJC_IVAR___MRLayerNavigator_mCurrentSublayer;
  }

  v6 = *(&self->super.super.isa + *v5);
  if ([v6 isActivated])
  {
    [v6 interestingTimeForElement:{objc_msgSend(a3, "slideID")}];
    [objc_msgSend(v6 "clock")];

    [(MRLayerNavigator *)self fillInPreviousSlideInformationInState:a3];
  }
}

- (void)exitSlideFocusModeWithState:(id)a3
{
  if (self->mIsTransitioning)
  {
    v5 = &OBJC_IVAR___MRLayerNavigator_mNextSublayer;
  }

  else
  {
    v5 = &OBJC_IVAR___MRLayerNavigator_mCurrentSublayer;
  }

  v6 = *(&self->super.super.isa + *v5);
  if ([v6 isActivated])
  {
    self->mIsInSlideFocusMode = 0;
    [objc_msgSend(v6 "clock")];
    v8 = v7;
    [objc_msgSend(a3 "slideInfo")];
    v10 = v8 + v9;
    if ([v6 plugAsSerial])
    {
      [objc_msgSend(v6 "plugAsSerial")];
      v12 = v11;
      [v6 duration];
      v14 = v13 - v12 + -0.1;
      if (v10 >= v14)
      {
        v10 = v14;
      }
    }

    [objc_msgSend(v6 "clock")];
    [objc_msgSend(v6 "clock")];
    v15 = [v6 currentSlideInfoForElement:{objc_msgSend(a3, "slideID")}];

    [a3 setSlideInfo:v15];
  }
}

- (double)fastScrubStart:(id)a3
{
  if (self->mIsSerializerBased)
  {
    v9 = v3;
    self->mIsFastScrubbing = 1;
    if (self->mIsTransitioning)
    {
      [(MRLayerNavigator *)self endTransitionToSublayer];
    }

    else if (self->mIsInnerTransitioning)
    {
      [(MRLayerNavigator *)self endMovingCurrentSublayer];
    }

    [(MRLayerClock *)self->super.mClock pauseOnNextUpdate:v4];
    self->mFastScrubbingStartIndex = [(MCPlugSerial *)[(MRLayer *)self->mCurrentSublayer plugAsSerial] index];
    self->mFastScrubbingProgress = 0.0;
  }

  return 0.0;
}

- (double)fastScrubUpdate:(id)a3
{
  if (!self->mIsFastScrubbing)
  {
    return 0.0;
  }

  v4 = [a3 specificObject];
  mFastScrubbingStartIndex = self->mFastScrubbingStartIndex;
  v6 = v4[4] * 0.5;
  v7 = [(NSMutableArray *)self->mSublayers count];
  if (v7 > 50.0)
  {
    v7 = 50.0;
  }

  if (v7 < 10.0)
  {
    v7 = 10.0;
  }

  v8 = (mFastScrubbingStartIndex + v6 * v7);
  v9 = v4[4] * 0.5;
  v10 = [(NSMutableArray *)self->mSublayers count];
  if (v10 > 50.0)
  {
    v10 = 50.0;
  }

  if (v10 < 10.0)
  {
    v10 = 10.0;
  }

  self->mFastScrubbingProgress = v9 * v10;
  if (v8 <= 0)
  {
    [-[MCContainer plugAtIndex:](self->mContainer plugAtIndex:{0), "fullDuration"}];
    v8 = v11 <= 1.0;
    if (v11 > 1.0)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }

    v13 = v4[4];
    v14 = [(NSMutableArray *)self->mSublayers count];
    if (v14 > 50.0)
    {
      v14 = 50.0;
    }

    if (v14 < 10.0)
    {
      v14 = 10.0;
    }

    v15 = v12 + v13 * -0.5 * v14;
    goto LABEL_29;
  }

  if ([(NSMutableArray *)self->mSublayers count]- 1 <= v8)
  {
    v16 = [(NSMutableArray *)self->mSublayers count];
    [-[MCContainer plugAtIndex:](self->mContainer plugAtIndex:{v16 - 1), "fullDuration"}];
    if (v17 <= 1.0)
    {
      v8 = (v16 - 2);
    }

    else
    {
      v8 = (v16 - 1);
    }

    v18 = v4[4];
    v19 = [(NSMutableArray *)self->mSublayers count];
    if (v19 > 50.0)
    {
      v19 = 50.0;
    }

    if (v19 < 10.0)
    {
      v19 = 10.0;
    }

    v15 = v8 + v18 * -0.5 * v19;
LABEL_29:
    self->mFastScrubbingProgress = self->mFastScrubbingProgress + (v15 - self->mFastScrubbingStartIndex);
    self->mFastScrubbingStartIndex = v15;
  }

  v20 = -[NSMutableDictionary objectForKey:](self->mSublayersForPlugs, "objectForKey:", [-[MCContainer plugAtIndex:](self->mContainer plugAtIndex:{v8), "objectID"}]);
  if (v20 != self->mCurrentSublayer)
  {
    self->mCurrentSublayer = v20;
    [(MRLayerClock *)self->super.mClock containerTime];
    [(MRLayer *)self->mCurrentSublayer setTimeIn:v21 + -1.0];
    self->_needsToRecomputeCurrentSublayerTheoreticalTimeIn = self->mIsSerializerBased;
  }

  return 0.0;
}

- (double)fastScrubEnd:(id)a3
{
  if (self->mIsFastScrubbing)
  {
    self->mIsFastScrubbing = 0;
    self->mFastScrubbingStartIndex = 0x7FFFFFFFFFFFFFFFLL;
    self->mFastScrubbingProgress = 0.0;
    [(MRLayerClock *)self->super.mClock resumeOnNextUpdate:a3];
  }

  return 0.0;
}

- (double)fastScrubCancel:(id)a3
{
  if (self->mIsFastScrubbing)
  {
    self->mIsFastScrubbing = 0;
    self->mFastScrubbingStartIndex = 0x7FFFFFFFFFFFFFFFLL;
    self->mFastScrubbingProgress = 0.0;
    [(MRLayerClock *)self->super.mClock resumeOnNextUpdate:a3];
  }

  return 0.0;
}

- (BOOL)hasMoreSlidesFromTime:(double)a3 backwards:(BOOL)a4 startTime:(double *)a5 duration:(double *)a6
{
  v8 = a4;
  mCurrentSublayer = self->mCurrentSublayer;
  [(MRLayer *)mCurrentSublayer timeIn];
  v12 = a3 - v11;

  return [(MRLayer *)mCurrentSublayer hasMoreSlidesFromTime:v8 backwards:a5 startTime:a6 duration:v12];
}

- (double)interestingTimeForTime:(double)a3
{
  mCurrentSublayer = self->mCurrentSublayer;
  [(MRLayer *)mCurrentSublayer timeIn];
  [(MRLayer *)mCurrentSublayer interestingTimeForTime:a3 - v6];
  v8 = v7;
  [(MRLayer *)self->mCurrentSublayer timeIn];
  return v8 + v9;
}

- (double)interestingTimeForElement:(id)a3
{
  [(MRLayer *)self->mCurrentSublayer interestingTimeForElement:a3];
  v5 = v4;
  [(MRLayer *)self->mCurrentSublayer timeIn];
  return v5 + v6;
}

- (void)getLazyDuration:(double *)a3 lazyFactor:(double *)a4 animationDuration:(double *)a5 fromInterestingTime:(double)a6
{
  mCurrentSublayer = self->mCurrentSublayer;
  [(MRLayer *)mCurrentSublayer timeIn];
  v12 = a6 - v11;

  [(MRLayer *)mCurrentSublayer getLazyDuration:a3 lazyFactor:a4 animationDuration:a5 fromInterestingTime:v12];
}

- (void)_executeLayerCommandQueue
{
  mLayerCommandQueue = self->super.mLayerCommandQueue;
  objc_sync_enter(mLayerCommandQueue);
  if ([(NSMutableArray *)self->super.mLayerCommandQueue count])
  {
    self->super.mLayerCommandQueueNeedsAttention = 0;
    v4 = [(NSMutableArray *)self->super.mLayerCommandQueue copy];
    [(NSMutableArray *)self->super.mLayerCommandQueue removeAllObjects];
    objc_sync_exit(mLayerCommandQueue);
    if (v4)
    {
      if (self->mExtraSublayer)
      {
        [(MRLayerNavigator *)self _removeExtraSublayer];
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        v6 = 0;
        v7 = *v16;
        do
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v16 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v15 + 1) + 8 * i);
            v10 = *(v9 + 8);
            if (v10 == 1)
            {
              v12 = *(v9 + 16);
              v13 = -[NSMutableDictionary objectForKey:](self->mSublayersForPlugs, "objectForKey:", [v12 objectID]);
              v14 = v13;
              if (v13)
              {
                if ([v13 isPreactivated])
                {
                  if ([v14 isActivated])
                  {
                    [v14 deactivate];
                  }

                  [v14 depreactivate:0];
                }

                [(MRLayerNavigator *)self _unobserveSublayer:v14];
                [(MRLayerNavigator *)self _deleteSublayer:v14];
              }

              else if ([v12 container])
              {
                NSLog(@"Consistency error, trying to delete a nil sublayer in serializer\n");
              }
            }

            else if (!v10)
            {
              v11 = [(MRLayerNavigator *)self _createSublayerForPlug:*(v9 + 16)];
              if (v11)
              {
                [(MRLayerNavigator *)self _observeSublayer:v11];
              }

              ++v6;
            }
          }

          v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v5);
        if (v6)
        {
          self->mHasWarnedDelegateAboutNearingEnd = 0;
        }
      }
    }
  }

  else
  {

    objc_sync_exit(mLayerCommandQueue);
  }
}

- (id)_createSublayerForPlug:(id)a3
{
  if (![a3 container])
  {
    return 0;
  }

  v5 = [MRLayer layerWithPlug:a3 andParameters:self->super.mParameters inSuperlayer:self];
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  [(NSMutableArray *)self->mSublayers addObject:v5];
  -[NSMutableDictionary setObject:forKey:](self->mSublayersForPlugs, "setObject:forKey:", v5, [a3 objectID]);
  self->mNeedsToUpdatePotentialTargetSublayers = 1;
  objc_sync_exit(mSublayers);
  return v5;
}

- (void)_deleteSublayer:(id)a3
{
  v4 = a3;
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  [(NSMutableArray *)self->mSublayers removeObject:a3];
  -[NSMutableDictionary removeObjectForKey:](self->mSublayersForPlugs, "removeObjectForKey:", [objc_msgSend(a3 "plug")]);
  if (self->mIsTransitioning)
  {
    [(MRLayerNavigator *)self endTransitionToSublayer];
  }

  if (self->mCurrentSublayer == a3)
  {
    self->mCurrentSublayer = 0;
  }

  if (self->mNextSublayer == a3)
  {
    self->mNextSublayer = 0;
  }

  [(NSMutableSet *)self->mPotentialTargetSublayers removeObject:?];
  self->mNeedsToUpdatePotentialTargetSublayers = 1;
  objc_sync_exit(mSublayers);
  [a3 cleanup];
}

- (id)_createSublayerForPrecomputingWithPlug:(id)a3
{
  v5 = [NSMutableDictionary dictionaryWithDictionary:self->super.mParameters];
  [(NSMutableDictionary *)v5 setObject:&__kCFBooleanTrue forKey:@"precomputing"];
  [(NSMutableDictionary *)v5 setObject:&__kCFBooleanTrue forKey:@"readonly"];
  [(NSMutableDictionary *)v5 setObject:&__kCFBooleanTrue forKey:@"noAudio"];

  return [MRLayer layerWithPlug:a3 andParameters:v5 inSuperlayer:self];
}

- (void)_createExtraSublayer
{
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  v4 = +[MRLayer layerWithPlug:andParameters:inSuperlayer:](MRLayer, "layerWithPlug:andParameters:inSuperlayer:", [-[NSMutableArray lastObject](self->mSublayers "lastObject")], self->super.mParameters, self);
  self->mExtraSublayer = v4;
  [(NSMutableArray *)self->mSublayers addObject:v4];
  [(MRLayerNavigator *)self _observeSublayer:self->mExtraSublayer];

  objc_sync_exit(mSublayers);
}

- (void)_removeExtraSublayer
{
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  if ([(MRLayer *)self->mExtraSublayer isPreactivated])
  {
    if ([(MRLayer *)self->mExtraSublayer isActivated])
    {
      [(MRLayer *)self->mExtraSublayer deactivate];
    }

    [(MRLayer *)self->mExtraSublayer depreactivate:0];
  }

  [(MRLayerNavigator *)self _unobserveSublayer:self->mExtraSublayer];
  mExtraSublayer = self->mExtraSublayer;
  if (self->mNextSublayer == mExtraSublayer)
  {
    self->mNextSublayer = 0;
    mExtraSublayer = self->mExtraSublayer;
  }

  [(MRLayer *)mExtraSublayer cleanup];
  [(NSMutableArray *)self->mSublayers removeObject:self->mExtraSublayer];
  self->mExtraSublayer = 0;

  objc_sync_exit(mSublayers);
}

- (void)_observeSublayer:(id)a3
{
  [a3 addObserver:self forKeyPath:@"timeStamp" options:0 context:0];
  if ([objc_msgSend(a3 "plug")] && !self->super.mIsReadonly)
  {
    v5 = [a3 plugAsHaven];

    [v5 addObserver:self forKeyPath:@"container" options:0 context:0];
  }
}

- (void)_unobserveSublayer:(id)a3
{
  if (([a3 isScheduledForDestruction] & 1) == 0)
  {
    [a3 removeObserver:self forKeyPath:@"timeStamp"];
    if ([objc_msgSend(a3 "plug")])
    {
      if (!self->super.mIsReadonly)
      {
        v5 = [a3 plugAsHaven];

        [v5 removeObserver:self forKeyPath:@"container"];
      }
    }
  }
}

- (void)_observePlug
{
  v3.receiver = self;
  v3.super_class = MRLayerNavigator;
  [(MRLayer *)&v3 _observePlug];
  [(MCContainer *)self->mContainer addObserver:self forKeyPath:@"plugs" options:3 context:0];
}

- (void)_unobservePlug
{
  [(MCContainer *)self->mContainer removeObserver:self forKeyPath:@"plugs"];
  v3.receiver = self;
  v3.super_class = MRLayerNavigator;
  [(MRLayer *)&v3 _unobservePlug];
}

- (void)_observePlugOnPreactivate
{
  v3.receiver = self;
  v3.super_class = MRLayerNavigator;
  [(MRLayer *)&v3 _observePlugOnPreactivate];
  if (self->super.mDoAudio)
  {
    [(MCContainer *)self->mContainer addObserver:self forKeyPath:@"audioPlaylist.audioNoVolume" options:0 context:0];
    [(MCContainer *)self->mContainer addObserver:self forKeyPath:@"audioPlaylist.builtVolume" options:0 context:0];
  }
}

- (void)_unobservePlugOnDepreactivate
{
  if (self->super.mDoAudio)
  {
    [(MCContainer *)self->mContainer removeObserver:self forKeyPath:@"audioPlaylist.audioNoVolume"];
    [(MCContainer *)self->mContainer removeObserver:self forKeyPath:@"audioPlaylist.builtVolume"];
  }

  v3.receiver = self;
  v3.super_class = MRLayerNavigator;
  [(MRLayer *)&v3 _unobservePlugOnDepreactivate];
}

- (void)_setNeedsToRequestRebuildAudio:(BOOL)a3
{
  self->super.mNeedsToRequestRebuildAudio = self->super.mDoAudio;
  if (a3)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    mSublayers = self->mSublayers;
    v4 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(mSublayers);
          }

          [*(*(&v8 + 1) + 8 * i) _setNeedsToRequestRebuildAudio:1];
        }

        v5 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)_precomputeAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  if (!self->mSublayerToPrecompute)
  {
    return;
  }

  if (self->mPrecomputingType == 1)
  {
    if ([self->mPrecomputingTarget isActivated])
    {
      goto LABEL_7;
    }

    if (self->mPrecomputingType == 1)
    {
      goto LABEL_6;
    }
  }

  if (![(MRTransition *)self->mCurrentTransition sourceLayer])
  {
LABEL_6:
    mSublayerToPrecompute = self->mSublayerToPrecompute;
    [(MRLayerClock *)[(MRLayer *)mSublayerToPrecompute clock] externalTime];
    if (![(MRLayer *)mSublayerToPrecompute isLoadedForTime:?])
    {
      return;
    }
  }

LABEL_7:
  v9 = self->mSublayerToPrecompute;
  [(MRLayerClock *)[(MRLayer *)v9 clock] externalTime];
  v10 = [(MRLayer *)v9 retainedByUserRenderedImageAtTime:a4 inContext:a5 withArguments:?];
  mPrecomputingType = self->mPrecomputingType;
  if (mPrecomputingType == 3)
  {
    [self->mPrecomputingTarget setTargetLayerImage:v10];
  }

  else if (mPrecomputingType == 2)
  {
    [self->mPrecomputingTarget setSourceLayerImage:v10];
  }

  [v10 releaseByUser];
  [(MRLayer *)self->mSublayerToPrecompute deactivate];
  [(MRLayer *)self->mSublayerToPrecompute depreactivate:0];
  [(MRLayer *)self->mSublayerToPrecompute cleanup];

  self->mSublayerToPrecompute = 0;
  self->mPrecomputingTarget = 0;
  self->mPrecomputingType = 0;
}

- (void)_renderAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  [MRLayerNavigator _precomputeAtTime:"_precomputeAtTime:inContext:withArguments:" inContext:a3 withArguments:?];
  mElementToDraw = self->mElementToDraw;
  if (mElementToDraw == 3)
  {
    [(MRRenderer *)self->super.mRenderer addIDToDisplay:[(MRTransition *)self->mCurrentTransition transitionID]];
    mCurrentTransition = self->mCurrentTransition;
    [(MRTransition *)mCurrentTransition progress];
    [(MRTransition *)mCurrentTransition renderAtTime:a4 inContext:a5 withArguments:?];
    [(MRTransition *)self->mCurrentTransition progress];
    self->_previouslyRenderedTransitionProgress = v12;
  }

  else
  {
    if (mElementToDraw == 2)
    {
      v9 = 240;
    }

    else
    {
      if (mElementToDraw != 1)
      {
        goto LABEL_8;
      }

      v9 = 496;
    }

    v10 = *(&self->super.super.isa + v9);
    [objc_msgSend(v10 "clock")];
    [v10 renderAtTime:a4 inContext:a5 withArguments:?];
  }

LABEL_8:
  if (self->mIsFastScrubbing)
  {
    [a4 depthTest:1];
    v13 = [a4 modelViewMatrix];
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[3];
    v41[2] = v13[2];
    v42 = v16;
    v41[0] = v15;
    v41[1] = v14;
    v33 = DWORD2(v16);
    [a4 setShader:@"PlainTexture"];
    v17 = [-[MCContainer orderedPlugs](self->mContainer "orderedPlugs")];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = [(MCContainer *)self->mContainer orderedPlugs];
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      v34 = v17;
      v35 = v17;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v36 + 1) + 8 * i);
          [v23 container];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [objc_msgSend(v23 "container")];
            if (v24)
            {
              v25 = [objc_msgSend(a4 "imageManager")];
              v26 = (([v23 index] - self->mFastScrubbingStartIndex) - self->mFastScrubbingProgress) / v35 * 10.0;
              v27 = exp(-(v26 * v26));
              *(&v42 + 2) = v27;
              [a4 setModelViewMatrix:v41 saveTo:0];
              v28 = [v23 index];
              v29 = v27 * -0.577 + 1.0;
              v30 = (v28 * 1.8 / v34 + -0.9) * v29;
              v31 = v29 * -0.8;
              [a4 localAspectRatio];
              [MRCroppingSprite renderDumbImage:v25 inContext:a4 atPosition:v30 andSize:v31, 0.1, 0.15 / v32];
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v20);
    }

    [a4 unsetShader];
    DWORD2(v42) = v33;
    [a4 setModelViewMatrix:v41 saveTo:0];
    [a4 depthTest:0];
  }
}

- (id)_retainedByUserRenderedImageAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  [MRLayerNavigator _precomputeAtTime:"_precomputeAtTime:inContext:withArguments:" inContext:a3 withArguments:?];
  mElementToDraw = self->mElementToDraw;
  if ((mElementToDraw - 1) >= 2)
  {
    if (mElementToDraw == 3)
    {
      [(MRRenderer *)self->super.mRenderer addIDToDisplay:[(MRTransition *)self->mCurrentTransition transitionID]];
      mCurrentTransition = self->mCurrentTransition;
      [(MRTransition *)mCurrentTransition progress];
      v14 = [(MRTransition *)mCurrentTransition retainedByUserRenderedImageAtTime:a4 inContext:a5 withArguments:?];
      [(MRTransition *)self->mCurrentTransition progress];
      self->_previouslyRenderedTransitionProgress = v15;
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (mElementToDraw == 2)
    {
      v9 = &OBJC_IVAR___MRLayerNavigator_mNextSublayer;
    }

    else
    {
      v9 = &OBJC_IVAR___MRLayerNavigator_mCurrentSublayer;
    }

    v10 = *(&self->super.super.isa + *v9);
    v11 = [v10 renderingState];
    v11[240] = 1;
    *(v11 + 4) = 0;
    *(v11 + 1) = 0;
    *(v11 + 11) = 1065353216;
    *(v11 + 28) = xmmword_1636D0;
    v11[244] = self->super.mRenderingState->var19;
    [objc_msgSend(v10 "clock")];
    result = [v10 retainedByUserRenderedImageAtTime:a4 inContext:a5 withArguments:?];
    v11[244] = 0;
  }

  return result;
}

- (void)_prerenderSublayersAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  mForcedTransitionProgress = self->mForcedTransitionProgress;
  if (mForcedTransitionProgress > -1.0)
  {
LABEL_6:
    if (mForcedTransitionProgress <= 1.0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  [(MRLayerClock *)self->super.mClock containerTime];
  v8 = v7 - self->mTransitionStartTime;
  mTotalMotionDuration = 1.0;
  if (!self->mIsInnerTransitioning)
  {
    mTotalMotionDuration = self->mTotalMotionDuration;
  }

  if (v8 < mTotalMotionDuration)
  {
    mForcedTransitionProgress = self->mForcedTransitionProgress;
    goto LABEL_6;
  }

LABEL_7:
  if (self->mIsTransitioning)
  {
    [(MRLayerNavigator *)self endTransitionToSublayer];
  }

  else if (self->mIsInnerTransitioning)
  {
    [(MRLayerNavigator *)self endMovingCurrentSublayer];
  }

LABEL_11:
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  if (!self->mTransitionChanges)
  {
    objc_sync_exit(mSublayers);
    goto LABEL_82;
  }

  mCurrentTransition = self->mCurrentTransition;
  if (mCurrentTransition)
  {
    [(MRTransition *)mCurrentTransition releaseByTransitioner:self];
  }

  if ([a5 skipsAnimations])
  {
    goto LABEL_17;
  }

  mTransitionChanges = self->mTransitionChanges;
  if (mTransitionChanges->duration > 0.0)
  {
LABEL_35:
    p_mCurrentSublayer = &self->mCurrentSublayer;
    self->mCurrentSublayer = [(MRTransitionChanges *)mTransitionChanges currentSublayer];
    p_mNextSublayer = &self->mNextSublayer;
    self->mNextSublayer = [(MRTransitionChanges *)self->mTransitionChanges nextSublayer];
    self->mPausedSublayersForTransition = 0;
    self->mControlsSublayerTimes = 0;
    self->mTransitionStartTime = self->mTransitionChanges->startTime;
    self->mTransitionDuration = self->mTransitionChanges->duration;
    self->mTransitionIsBackwards = self->mTransitionChanges->isBackwards;
    v28 = [(MRLayerNavigator *)self _transitionWithTransitionTrigger:[(MRTransitionChanges *)self->mTransitionChanges transition]];
    self->mCurrentTransition = v28;
    if (!v28)
    {
LABEL_63:
      v39 = [(MRLayer *)*p_mNextSublayer isPreactivated];
      v40 = *p_mNextSublayer;
      if (v39)
      {
        if ([(MRLayer *)v40 isActivated])
        {
          [(MRLayer *)*p_mNextSublayer deactivate];
        }
      }

      else
      {
        [(MRLayer *)v40 preactivate];
      }

      startTime = self->mTransitionChanges->startTime;
      if ([(MRTransition *)self->mCurrentTransition isSplit])
      {
        v41 = *p_mCurrentSublayer;
        if (self->mTransitionIsBackwards)
        {
          [objc_msgSend(v41 "clock")];
          v43 = v42;
          [(MCPlug *)[(MRLayer *)*p_mNextSublayer plug] phaseOutDuration];
        }

        else
        {
          [objc_msgSend(v41 "clock")];
          v43 = v45;
          [(MCPlug *)[(MRLayer *)*p_mNextSublayer plug] phaseInDuration];
        }

        self->mTransitionDuration = v43 + v44;
        if (!self->mControlsSublayerTimes)
        {
          [objc_msgSend(*p_mCurrentSublayer "clock")];
          v47 = v46;
          [objc_msgSend(*p_mCurrentSublayer "clock")];
          [*p_mCurrentSublayer setDuration:v47 + v48];
          startTime = startTime + v47;
        }
      }

      if (self->mControlsSublayerTimes)
      {
        [(MRLayerNavigator *)self _getInterestingTimesForSublayerControl];
      }

      else
      {
        self->mTotalMotionDuration = self->mTransitionDuration;
      }

      if (self->mPausedSublayersForTransition || self->mIsInSlideFocusMode)
      {
        [objc_msgSend(*p_mCurrentSublayer "clock")];
        [(MRLayerClock *)[(MRLayer *)*p_mNextSublayer clock] pauseOnNextUpdate];
        [(MRLayerClock *)[(MRLayer *)*p_mNextSublayer clock] setContainerTime:self->mNextSublayerInterestingTime];
      }

      self->_pauseWhenTransitionEnds = [(MRLayerClock *)self->super.mClock selfIsPaused];
      [(MRLayerClock *)self->super.mClock resumeOnNextUpdate];
      v24 = 1;
      goto LABEL_80;
    }

    if (![(MRTransitionChanges *)self->mTransitionChanges pzr])
    {
      goto LABEL_59;
    }

    v87 = [(MRTransitionChanges *)self->mTransitionChanges pzr];
    [(MRTransition *)self->mCurrentTransition pzrStart:v87];
    self->mForcedTransitionProgress = 0.0;
    self->mPausedSublayersForTransition = 1;
    if ([(MRTransition *)self->mCurrentTransition controlsLayersTime])
    {
      goto LABEL_44;
    }

    if (self->mTransitionIsBackwards)
    {
      [objc_msgSend(*p_mCurrentSublayer "clock")];
      if (v29 > 0.0)
      {
        goto LABEL_44;
      }

      [(MCPlug *)[(MRLayer *)*p_mNextSublayer plug] phaseOutDuration];
      if (v30 > 0.0)
      {
        goto LABEL_44;
      }

      if (self->mTransitionIsBackwards)
      {
        v31 = 0;
        goto LABEL_45;
      }
    }

    [objc_msgSend(*p_mCurrentSublayer "clock")];
    if (v32 <= 0.0)
    {
      [(MCPlug *)[(MRLayer *)*p_mNextSublayer plug] phaseInDuration];
      v31 = v86 > 0.0;
LABEL_45:
      self->mControlsSublayerTimes = v31;
      if ([(MRTransition *)self->mCurrentTransition supportsDirectionOverride])
      {
        direction = v87->direction;
        if (direction == 12)
        {
          speedY = v87->speedY;
        }

        else
        {
          if (direction != 255)
          {
            speedX = v87->speedX;
            goto LABEL_55;
          }

          speedX = v87->speedX;
          speedY = v87->speedY;
          if (fabs(speedX) > fabs(speedY))
          {
LABEL_55:
            if (self->mTransitionIsBackwards == speedX < 0.0)
            {
              v36 = 2;
            }

            else
            {
              v36 = 1;
            }

LABEL_58:
            [(MRTransition *)self->mCurrentTransition setDirection:v36];
            goto LABEL_59;
          }
        }

        if (self->mTransitionIsBackwards == speedY < 0.0)
        {
          v36 = 4;
        }

        else
        {
          v36 = 8;
        }

        goto LABEL_58;
      }

LABEL_59:
      v37 = self->mCurrentTransition;
      if (self->mTransitionIsBackwards)
      {
        [(MRTransition *)v37 setSourceLayer:*p_mNextSublayer];
        v38 = &self->mCurrentSublayer;
      }

      else
      {
        [(MRTransition *)v37 setSourceLayer:*p_mCurrentSublayer];
        v38 = &self->mNextSublayer;
      }

      [(MRTransition *)self->mCurrentTransition setTargetLayer:*v38];
      self->_previouslyRenderedTransitionProgress = -1.0;
      goto LABEL_63;
    }

LABEL_44:
    v31 = 1;
    goto LABEL_45;
  }

  v13 = [(MCTransitionTrigger *)[(MRTransitionChanges *)mTransitionChanges transition] transitionID];
  if (v13 == kMRLayerTransitionIDPhaseInOut)
  {
    mTransitionChanges = self->mTransitionChanges;
    goto LABEL_35;
  }

LABEL_17:
  v14 = [(MRTransitionChanges *)self->mTransitionChanges nextSublayer];
  self->mCurrentSublayer = v14;
  v15 = [(MRLayer *)v14 isPreactivated];
  mCurrentSublayer = self->mCurrentSublayer;
  if (v15)
  {
    if ([(MRLayer *)mCurrentSublayer isActivated])
    {
      [(MRLayer *)self->mCurrentSublayer deactivate];
    }
  }

  else
  {
    [(MRLayer *)mCurrentSublayer preactivate];
  }

  [(MRLayer *)self->mCurrentSublayer activate];
  v17 = self->mTransitionChanges->startTime;
  [(MRLayer *)self->mCurrentSublayer phaseInDuration];
  [(MRLayer *)self->mCurrentSublayer setTimeIn:v17 - v18];
  if (self->mTransitionIsNextPrevious)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v20 = self->mCurrentSublayer;
    if (isKindOfClass)
    {
      v21 = [(MRLayer *)v20 effect];
      v22 = 1000000000.0;
      if (self->mTransitionStartedWithNext)
      {
        v22 = 0.0;
      }

      [v21 interestingTimeForTime:v22];
    }

    else
    {
      [(MRLayer *)v20 phaseInDuration];
    }

    self->mCurrentSublayerInterestingTime = v23;
    [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] setContainerTime:v23];
  }

  if (self->mIsInSlideFocusMode)
  {
    [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] pauseOnNextUpdate];
  }

  if (![(MRLayer *)self->mCurrentSublayer isLoadedForTime:0.0])
  {
    [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] pauseOnNextUpdate];
  }

  v24 = 0;
  self->mNextSublayer = 0;
  self->mTransitionIsNextPrevious = 0;
  self->mTransitionStartedWithNext = 0;
  startTime = -1.0;
LABEL_80:
  self->mIsTransitioning = v24;

  self->mTransitionChanges = 0;
  self->mNeedsToUpdatePotentialTargetSublayers = 1;
  objc_sync_exit(mSublayers);
  if (startTime >= 0.0)
  {
    [(MRLayer *)self->mNextSublayer setTimeIn:startTime];
  }

LABEL_82:
  if (self->mNeedsToUpdatePotentialTargetSublayers)
  {
    [(NSMutableSet *)self->mPotentialTargetSublayers removeAllObjects];
    v49 = self->mCurrentSublayer;
    if (self->mIsSerializerBased)
    {
      v50 = [(MCPlugSerial *)[(MRLayer *)v49 plugAsSerial] index];
      v51 = [(NSMutableArray *)self->mSublayers count];
      if (v50)
      {
        v52 = v50;
      }

      else
      {
        v52 = v51;
      }

      mExtraSublayer = self->mExtraSublayer;
      if ((mExtraSublayer || (mExtraSublayer = -[NSMutableDictionary objectForKey:](self->mSublayersForPlugs, "objectForKey:", [-[MCContainer plugAtIndex:](self->mContainer plugAtIndex:{(v50 + 1) % v51), "objectID"}])) != 0) && mExtraSublayer != self->mCurrentSublayer)
      {
        [(NSMutableSet *)self->mPotentialTargetSublayers addObject:mExtraSublayer];
        if (!self->mNextSublayer)
        {
          [(MRLayer *)self->mCurrentSublayer timeIn];
          v55 = v54;
          [(MRLayer *)self->mCurrentSublayer duration];
          v57 = v55 + v56;
          [(MCPlugSerial *)[(MRLayer *)self->mCurrentSublayer plugAsSerial] transitionDuration];
          [(MRLayer *)mExtraSublayer setTimeIn:v57 - v58];
        }
      }

      v59 = self->mExtraSublayer;
      if ((v59 || (v59 = -[NSMutableDictionary objectForKey:](self->mSublayersForPlugs, "objectForKey:", [-[MCContainer plugAtIndex:](self->mContainer plugAtIndex:{v52 - 1), "objectID"}])) != 0) && v59 != mExtraSublayer && v59 != self->mCurrentSublayer)
      {
        [(NSMutableSet *)self->mPotentialTargetSublayers addObject:?];
      }
    }

    else
    {
      v60 = [(MRLayer *)v49 nextTransition];
      v61 = self->mExtraSublayer;
      if ((v61 || (v61 = [(MRLayerNavigator *)self sublayerForKey:[(MCTransitionTrigger *)v60 transitionDestinationPlugID]]) != 0) && v61 != self->mCurrentSublayer)
      {
        [(NSMutableSet *)self->mPotentialTargetSublayers addObject:v61];
        if (v61 != self->mNextSublayer)
        {
          [(MRLayer *)v61 setTimeIn:1.0e36];
        }
      }

      v62 = [(MRLayer *)self->mCurrentSublayer previousTransition];
      v63 = self->mExtraSublayer;
      if ((v63 || (v63 = [(MRLayerNavigator *)self sublayerForKey:[(MCTransitionTrigger *)v62 transitionDestinationPlugID]]) != 0) && v63 != v61 && v63 != self->mCurrentSublayer)
      {
        [(NSMutableSet *)self->mPotentialTargetSublayers addObject:v63];
        if (v63 != self->mNextSublayer)
        {
          [(MRLayer *)v63 setTimeIn:1.0e36];
        }
      }
    }

    self->mNeedsToUpdatePotentialTargetSublayers = 0;
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v64 = self->mSublayers;
  v65 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v90 objects:v94 count:16];
  if (v65)
  {
    v66 = *v91;
    do
    {
      for (i = 0; i != v65; i = i + 1)
      {
        if (*v91 != v66)
        {
          objc_enumerationMutation(v64);
        }

        v68 = *(*(&v90 + 1) + 8 * i);
        v69 = [(MRLayer *)v68 isPreactivated];
        v70 = [(MRLayer *)v68 isActivated];
        if (self->super.mIsPreactivated)
        {
          if (v68 == self->mCurrentSublayer || v68 == self->mNextSublayer || [(MCPlug *)[(MRLayer *)v68 plug] preactivatesWithParent])
          {
            v71 = 1;
          }

          else
          {
            v71 = [(NSMutableSet *)self->mPotentialTargetSublayers containsObject:v68];
          }
        }

        else
        {
          v71 = 0;
        }

        if (!self->super.mIsActivated)
        {
          goto LABEL_125;
        }

        if (v68 != self->mCurrentSublayer)
        {
          if (self->mIsTransitioning)
          {
            v72 = v68 == self->mNextSublayer;
            if (!v71)
            {
              goto LABEL_141;
            }

            goto LABEL_126;
          }

LABEL_125:
          v72 = 0;
          if (!v71)
          {
            goto LABEL_141;
          }

          goto LABEL_126;
        }

        v72 = 1;
        if (!v71)
        {
LABEL_141:
          if (v70)
          {
            [(MRLayer *)v68 deactivate];
          }

          if (v69)
          {
            [(MRLayer *)v68 depreactivate:1];
          }

          continue;
        }

LABEL_126:
        if ((v69 & 1) == 0)
        {
          [(MRLayer *)v68 preactivate];
        }

        if (v70 & 1 | !v72)
        {
          if (!v72 && (v70 & 1) != 0)
          {
            [(MRLayer *)v68 deactivate];
          }
        }

        else
        {
          [(MRLayer *)v68 activate];
          if (![(MRLayer *)v68 isLoadedForTime:0.0])
          {
            [(MRLayerClock *)[(MRLayer *)v68 clock] pauseOnNextUpdate];
          }
        }

        if (!v72)
        {
          [(MRLayer *)v68 timeIn];
          v75 = v74 == 1.0e36;
          v76 = -6.0;
          if (!v75)
          {
            if ([(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] selfIsPaused]&& ![(MRLayerClock *)[(MRLayer *)v68 clock] selfIsPaused])
            {
              [(MRLayerClock *)[(MRLayer *)v68 clock] pauseOnNextUpdate];
            }

            else if (![(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] selfIsPaused]&& [(MRLayerClock *)[(MRLayer *)v68 clock] selfIsPaused])
            {
              [(MRLayerClock *)[(MRLayer *)v68 clock] resumeOnNextUpdate];
            }

            [(MRLayerClock *)self->super.mClock containerTime];
            v78 = v77;
            [(MRLayer *)v68 timeIn];
            v80 = v79;
            [(MRLayer *)self->mCurrentSublayer timeIn];
            v82 = v81;
            [(MRLayer *)v68 timeIn];
            v73 = v78 - v80;
            v84 = v82 - v83 + 2.0;
            v85 = v78 - v80 < v84 || v84 <= 2.0;
            v76 = v84 + -0.001;
            if (v85)
            {
              v76 = v78 - v80;
            }

            if (v76 <= -6.0)
            {
              v76 = -6.0;
            }
          }

          [(MRLayer *)v68 prerenderForTime:a4 inContext:a5 withArguments:v76, v73];
          if ([(MRLayerClock *)[(MRLayer *)v68 clock] jumpedBackInTime])
          {
            [(MRLayer *)v68 synchronizeTime];
          }
        }
      }

      v65 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v90 objects:v94 count:16];
    }

    while (v65);
  }
}

- (void)_getInterestingTimesForSublayerControl
{
  [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] containerTime];
  self->mCurrentSublayerContainerTimeOnTransitionStart = v3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  mCurrentSublayer = self->mCurrentSublayer;
  if (isKindOfClass)
  {
    v6 = [(MRLayer *)mCurrentSublayer effect];
    [v6 interestingTimeForTime:self->mCurrentSublayerContainerTimeOnTransitionStart];
    self->mCurrentSublayerInterestingTime = v7;
    [v6 getLazyDuration:&self->mCurrentSublayerLazyDuration lazyFactor:&self->mCurrentSublayerLazyFactor animationDuration:&self->mCurrentSublayerAnimationDuration fromInterestingTime:?];
  }

  else
  {
    [(MRLayer *)mCurrentSublayer phaseInDuration];
    self->mCurrentSublayerInterestingTime = v8;
    [(MRLayer *)self->mCurrentSublayer phaseOutDuration];
    self->mCurrentSublayerAnimationDuration = v9;
    [(MRLayer *)self->mCurrentSublayer duration];
    self->mCurrentSublayerLazyDuration = v10 - self->mCurrentSublayerInterestingTime - self->mCurrentSublayerAnimationDuration;
    self->mCurrentSublayerLazyFactor = 0.0;
  }

  objc_opt_class();
  v11 = objc_opt_isKindOfClass();
  mNextSublayer = self->mNextSublayer;
  if (v11)
  {
    v13 = [(MRLayer *)mNextSublayer effect];
    v14 = v13;
    v15 = 1000000000.0;
    if (!self->mTransitionIsBackwards)
    {
      v15 = 0.0;
    }

    [v13 interestingTimeForTime:v15];
    self->mNextSublayerInterestingTime = v16;
    [v14 getLazyDuration:&self->mNextSublayerLazyDuration lazyFactor:&self->mNextSublayerLazyFactor animationDuration:&self->mNextSublayerAnimationDuration fromInterestingTime:?];
  }

  else
  {
    [(MRLayer *)mNextSublayer phaseInDuration];
    self->mNextSublayerInterestingTime = v17;
    [(MRLayer *)self->mNextSublayer phaseOutDuration];
    self->mNextSublayerAnimationDuration = v18;
    [(MRLayer *)self->mNextSublayer duration];
    self->mNextSublayerLazyDuration = v19 - self->mNextSublayerInterestingTime - self->mNextSublayerAnimationDuration;
    self->mNextSublayerLazyFactor = 0.0;
  }

  if (self->mTransitionIsBackwards)
  {
    v20 = self->mTransitionDuration + (self->mCurrentSublayerContainerTimeOnTransitionStart - self->mCurrentSublayerInterestingTime) * self->mCurrentSublayerLazyFactor + self->mNextSublayerLazyDuration * self->mNextSublayerLazyFactor;
    v21 = &OBJC_IVAR___MRLayerNavigator_mTotalMotionDuration;
  }

  else
  {
    v22 = self->mTransitionDuration + self->mCurrentSublayerLazyDuration * self->mCurrentSublayerLazyFactor;
    self->mTotalMotionDuration = v22;
    v20 = 1.0;
    if (v22 > 0.0)
    {
      [(MRLayerClock *)[(MRLayer *)self->mCurrentSublayer clock] containerTime];
      v20 = (v23 - self->mCurrentSublayerInterestingTime) * self->mCurrentSublayerLazyFactor / self->mTotalMotionDuration;
    }

    self->mForcedTransitionProgressOffset = v20;
    v21 = &OBJC_IVAR___MRLayerNavigator_mForcedTransitionProgress;
  }

  *(&self->super.super.isa + *v21) = v20;
}

@end