@interface MRLayerParallelizer
- (BOOL)_isMadeOpaqueBySublayers;
- (BOOL)getStartTime:(double *)time andDuration:(double *)duration forMovingToElementID:(id)d backwards:(BOOL)backwards;
- (BOOL)hasAudio;
- (BOOL)hasMoreSlidesFromTime:(double)time backwards:(BOOL)backwards startTime:(double *)startTime duration:(double *)duration;
- (BOOL)hasSlides;
- (BOOL)hasSomethingToRender;
- (BOOL)isAlphaFriendly;
- (BOOL)isInInteractiveMode;
- (BOOL)isInfinite;
- (BOOL)isLoadedForTime:(double)time;
- (BOOL)isOpaque;
- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (MRLayerParallelizer)initWithParameters:(id)parameters;
- (MRLayerParallelizer)initWithPlug:(id)plug andParameters:(id)parameters inSuperlayer:(id)superlayer;
- (const)backgroundColor;
- (double)interestingTimeForElement:(id)element;
- (double)interestingTimeForTime:(double)time;
- (double)phaseInSublayerForKey:(id)key;
- (double)phaseOutSublayerForKey:(id)key;
- (id)_createSublayerForPlug:(id)plug;
- (id)_currentState;
- (id)_dumpLayerWithOptions:(unint64_t)options;
- (id)_retainedByUserRenderedImageAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (id)currentSlideInfoForElement:(id)element;
- (id)currentSlideInfos;
- (id)patchworkAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (id)sublayerForKey:(id)key;
- (id)sublayerForPlugObjectID:(id)d recursive:(BOOL)recursive;
- (id)sublayerHitAtPoint:(CGPoint)point onlyIfHitElement:(BOOL)element localPoint:(CGPoint *)localPoint;
- (void)_deleteSublayer:(id)sublayer;
- (void)_executeLayerCommandQueue;
- (void)_observePlug;
- (void)_observePlugOnPreactivate;
- (void)_observeSublayer:(id)sublayer;
- (void)_renderAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (void)_setNeedsToRequestRebuildAudio:(BOOL)audio;
- (void)_unobservePlug;
- (void)_unobservePlugOnDepreactivate;
- (void)_unobserveSublayer:(id)sublayer;
- (void)beginMorphingToAspectRatio:(double)ratio withDuration:(double)duration;
- (void)cleanup;
- (void)deactivate;
- (void)depreactivate:(BOOL)depreactivate;
- (void)getLazyDuration:(double *)duration lazyFactor:(double *)factor animationDuration:(double *)animationDuration fromInterestingTime:(double)time;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)preactivate;
- (void)removeSublayer:(id)sublayer;
- (void)setBackgroundColorRed:(float)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (void)setDuration:(double)duration;
- (void)setIsInInteractiveMode:(BOOL)mode;
- (void)setNeedsUpdateForPluggerOfSublayer:(id)sublayer;
- (void)setPixelSize:(CGSize)size;
- (void)setSublayer:(id)sublayer forKey:(id)key;
- (void)synchronizeTime;
@end

@implementation MRLayerParallelizer

- (MRLayerParallelizer)initWithPlug:(id)plug andParameters:(id)parameters inSuperlayer:(id)superlayer
{
  v8.receiver = self;
  v8.super_class = MRLayerParallelizer;
  v5 = [(MRLayer *)&v8 initWithPlug:plug andParameters:parameters inSuperlayer:superlayer];
  v6 = v5;
  if (v5)
  {
    v5->mContainer = [(MCPlug *)v5->super.mPlug container];
    v6->mSublayers = objc_alloc_init(NSMutableArray);
    v6->mSublayersForPlugs = objc_alloc_init(NSMutableDictionary);
    v6->mNeedsToUpdateSublayersOrdering = 0;
    if (!v6->super.mIsReadonly)
    {
      [(MRLayerParallelizer *)v6 _observePlug];
    }

    [(MRLayerParallelizer *)v6 observeValueForKeyPath:@"plugs" ofObject:v6->mContainer change:0 context:0];
  }

  return v6;
}

- (MRLayerParallelizer)initWithParameters:(id)parameters
{
  v5.receiver = self;
  v5.super_class = MRLayerParallelizer;
  v3 = [(MRLayer *)&v5 initWithParameters:parameters];
  if (v3)
  {
    v3->mSublayers = objc_alloc_init(NSMutableArray);
    v3->mSublayersForPlugs = objc_alloc_init(NSMutableDictionary);
  }

  return v3;
}

- (void)cleanup
{
  if (self->super.mUUID)
  {
    mSublayers = self->mSublayers;
    objc_sync_enter(mSublayers);
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
          if (([v8 isScheduledForDestruction] & 1) == 0)
          {
            [(MRLayerParallelizer *)self _unobserveSublayer:v8];
          }

          [(MRLayerParallelizer *)self _deleteSublayer:v8];
        }

        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    self->mSublayersForPlugs = 0;
    self->mSublayers = 0;
    objc_sync_exit(mSublayers);
    v9.receiver = self;
    v9.super_class = MRLayerParallelizer;
    [(MRLayer *)&v9 cleanup];

    self->mContainer = 0;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  contextCopy = context;
  changeCopy = change;
  changeCopy2 = change;
  contextCopy2 = context;
  if ([path isEqualToString:@"plugs"])
  {
    v11 = [objc_msgSend(changeCopy objectForKey:{NSKeyValueChangeKindKey), "unsignedIntegerValue"}];
    if (v11 == &dword_0 + 2)
    {
      plugs = [changeCopy objectForKey:NSKeyValueChangeNewKey];
    }

    else
    {
      if (v11 == &dword_0 + 3)
      {
        v12 = [changeCopy objectForKey:NSKeyValueChangeOldKey];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v36;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v36 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v35 + 1) + 8 * i);
              v18 = -[NSMutableDictionary objectForKey:](self->mSublayersForPlugs, "objectForKey:", [v17 objectID]);
              if (([v18 isScheduledForDestruction] & 1) == 0)
              {
                [(MRLayerParallelizer *)self _unobserveSublayer:v18];
                [v18 scheduleForDestruction];
                [(MRLayer *)self _queueLayerCommand:1 object:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
          }

          while (v14);
        }

        goto LABEL_34;
      }

      plugs = [(MCContainerParallelizer *)self->mContainer plugs];
    }

    v22 = plugs;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    contextCopy2 = [(NSSet *)plugs countByEnumeratingWithState:&v31 objects:v39 count:16, changeCopy2, contextCopy2];
    if (contextCopy2)
    {
      v24 = contextCopy2;
      v25 = *v32;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v31 + 1) + 8 * j);
          if ([objc_msgSend(v27 "idInSupercontainer")] != 95)
          {
            [(MRLayer *)self _queueLayerCommand:0 object:v27];
          }
        }

        v24 = [(NSSet *)v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v24);
    }

    goto LABEL_34;
  }

  if ([path isEqualToString:@"plugAsParallel.container"])
  {
    plugAsParallel = [object plugAsParallel];
    if (([object isScheduledForDestruction] & 1) == 0)
    {
      [(MRLayerParallelizer *)self _unobserveSublayer:object];
      [object scheduleForDestruction];
      [(MRLayer *)self _queueLayerCommand:1 object:plugAsParallel];
    }

    if ([plugAsParallel container])
    {
      [(MRLayer *)self _queueLayerCommand:0 object:plugAsParallel];
    }
  }

  else
  {
    if (([path isEqualToString:@"zOrderedPlugs"] & 1) != 0 || objc_msgSend(path, "isEqualToString:", @"plugAsParallel.zIndex"))
    {
      v20 = 256;
    }

    else
    {
      if (![path isEqualToString:@"backgroundColor"])
      {
        goto LABEL_36;
      }

      v20 = 257;
    }

    *(&self->super.super.isa + v20) = 1;
  }

LABEL_34:
  changeCopy = changeCopy2;
  contextCopy = contextCopy2;
  if (!self->super.mIsPrecomputing)
  {
    [(MRLayer *)self->super.mSuperlayer setNeedsUpdateForPluggerOfSublayer:self];
    [(MRLayer *)self stampTime];
  }

LABEL_36:
  v30.receiver = self;
  v30.super_class = MRLayerParallelizer;
  [(MRLayer *)&v30 observeValueForKeyPath:path ofObject:object change:changeCopy context:contextCopy, changeCopy2, contextCopy2];
}

- (void)setPixelSize:(CGSize)size
{
  v13.receiver = self;
  v13.super_class = MRLayerParallelizer;
  [(MRLayer *)&v13 setPixelSize:size.width, size.height];
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

- (const)backgroundColor
{
  if (self->mBackgroundColor[3] >= 0.0)
  {
    return self->mBackgroundColor;
  }

  else
  {
    return 0;
  }
}

- (BOOL)hasSomethingToRender
{
  v13.receiver = self;
  v13.super_class = MRLayerParallelizer;
  LODWORD(v3) = [(MRLayer *)&v13 hasSomethingToRender];
  if (v3)
  {
    if (self->mBackgroundColor[3] > 0.0 || !self->super.mSuperlayer)
    {
LABEL_13:
      LOBYTE(v3) = 1;
      return v3;
    }

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    mSublayers = self->mSublayers;
    v3 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v10;
LABEL_6:
      v7 = 0;
      while (1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(mSublayers);
        }

        if ([*(*(&v9 + 1) + 8 * v7) hasSomethingToRender])
        {
          goto LABEL_13;
        }

        if (v5 == ++v7)
        {
          v5 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v9 objects:v14 count:16];
          LOBYTE(v3) = 0;
          if (v5)
          {
            goto LABEL_6;
          }

          return v3;
        }
      }
    }
  }

  return v3;
}

- (void)synchronizeTime
{
  v3.receiver = self;
  v3.super_class = MRLayerParallelizer;
  [(MRLayer *)&v3 synchronizeTime];
  [(NSMutableArray *)self->mSublayers enumerateObjectsUsingBlock:&stru_1AAD50];
}

- (void)beginMorphingToAspectRatio:(double)ratio withDuration:(double)duration
{
  mSublayers = self->mSublayers;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_56098;
  v5[3] = &unk_1AAD70;
  *&v5[4] = ratio;
  *&v5[5] = duration;
  [(NSMutableArray *)mSublayers enumerateObjectsUsingBlock:v5];
}

- (void)setDuration:(double)duration
{
  v7.receiver = self;
  v7.super_class = MRLayerParallelizer;
  [(MRLayer *)&v7 setDuration:?];
  mSublayers = self->mSublayers;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_5620C;
  v6[3] = &unk_1AADB0;
  *&v6[4] = duration;
  [(NSMutableArray *)mSublayers enumerateObjectsUsingBlock:v6];
}

- (void)setBackgroundColorRed:(float)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  greenCopy = green;
  self->mBackgroundColor[0] = red;
  self->mBackgroundColor[1] = greenCopy;
  blueCopy = blue;
  alphaCopy = alpha;
  self->mBackgroundColor[2] = blueCopy;
  self->mBackgroundColor[3] = alphaCopy;
}

- (void)preactivate
{
  v3.receiver = self;
  v3.super_class = MRLayerParallelizer;
  [(MRLayer *)&v3 preactivate];
  self->mNeedsToUpdateBackgroundColor = self->mContainer != 0;
}

- (void)deactivate
{
  [(NSMutableArray *)self->mSublayers enumerateObjectsUsingBlock:&stru_1AADD0];
  v3.receiver = self;
  v3.super_class = MRLayerParallelizer;
  [(MRLayer *)&v3 deactivate];
}

- (void)depreactivate:(BOOL)depreactivate
{
  depreactivateCopy = depreactivate;
  mSublayers = self->mSublayers;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_56468;
  v7[3] = &unk_1AADF8;
  v7[4] = self;
  depreactivateCopy2 = depreactivate;
  [(NSMutableArray *)mSublayers enumerateObjectsUsingBlock:v7];
  v6.receiver = self;
  v6.super_class = MRLayerParallelizer;
  [(MRLayer *)&v6 depreactivate:depreactivateCopy];
}

- (BOOL)isLoadedForTime:(double)time
{
  v20.receiver = self;
  v20.super_class = MRLayerParallelizer;
  v5 = [(MRLayer *)&v20 isLoadedForTime:?];
  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    mSublayers = self->mSublayers;
    v7 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(mSublayers);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        [v11 timeIn];
        v13 = v12;
        if ([v11 isPreactivated])
        {
          v14 = time - v13;
          if ([v11 shouldBeActivatedAtTime:v14])
          {
            v5 = [v11 isLoadedForTime:v14];
            if (!v5)
            {
              break;
            }
          }
        }

        if (v8 == ++v10)
        {
          v8 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v16 objects:v21 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)_isMadeOpaqueBySublayers
{
  width = self->super.mPixelSize.width;
  height = self->super.mPixelSize.height;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  mSublayers = self->mSublayers;
  v5 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    v8 = width / height;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(mSublayers);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        if ([v10 isOpaque])
        {
          plugAsParallel = [v10 plugAsParallel];
          [plugAsParallel rotationAngle];
          if (v12 == 0.0)
          {
            [plugAsParallel xRotationAngle];
            if (v13 == 0.0)
            {
              [plugAsParallel yRotationAngle];
              if (v14 == 0.0)
              {
                [plugAsParallel opacity];
                if (v15 >= 1.0)
                {
                  [plugAsParallel zPosition];
                  if (v16 >= 0.0 && ![plugAsParallel countOfAnimationPaths])
                  {
                    [plugAsParallel position];
                    v18 = v17;
                    v20 = v19;
                    [plugAsParallel sizeForParentAspectRatio:v8];
                    v23 = v18 - v22 * 0.5;
                    v24 = v18 + v22 * 0.5;
                    v25 = v23 > -1.0 || v24 < -1.0;
                    v26 = v20 - v21 * 0.5;
                    v27 = v20 + v21 * 0.5;
                    v28 = v25 || v26 > -1.0;
                    if (!v28 && v27 >= -1.0)
                    {
                      LOBYTE(v5) = 1;
                      return v5;
                    }
                  }
                }
              }
            }
          }
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v5 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v31 objects:v35 count:16];
      v6 = v5;
    }

    while (v5);
  }

  return v5;
}

- (BOOL)isOpaque
{
  if (self->mBackgroundColor[3] == 1.0)
  {
    return 1;
  }

  else
  {
    return [(MRLayerParallelizer *)self _isMadeOpaqueBySublayers];
  }
}

- (BOOL)isAlphaFriendly
{
  v3 = [(NSMutableArray *)self->mSublayers count];
  if (!v3)
  {
LABEL_5:
    LOBYTE(isAlphaFriendly) = 1;
    return isAlphaFriendly;
  }

  if (v3 != &dword_0 + 1)
  {
    LOBYTE(isAlphaFriendly) = 0;
    return isAlphaFriendly;
  }

  lastObject = [(NSMutableArray *)self->mSublayers lastObject];
  isAlphaFriendly = [lastObject isAlphaFriendly];
  if (isAlphaFriendly)
  {
    if (([lastObject isOpaque] & 1) == 0)
    {
      LOBYTE(isAlphaFriendly) = self->mBackgroundColor[3] <= 0.0;
      return isAlphaFriendly;
    }

    goto LABEL_5;
  }

  return isAlphaFriendly;
}

- (BOOL)isInfinite
{
  if (self->mBackgroundColor[3] <= 0.0)
  {
    return ![(MCPlugParallel *)self->super.mPlugAsParallel clipsContainer:v2];
  }

  else
  {
    return 0;
  }
}

- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  selfCopy = self;
  if (self->super.mLayerCommandQueueNeedsAttention)
  {
    [(MRLayerParallelizer *)self _executeLayerCommandQueue];
  }

  v56.receiver = selfCopy;
  v56.super_class = MRLayerParallelizer;
  v8 = [(MRLayer *)&v56 prerenderForTime:context inContext:arguments withArguments:time];
  v51 = selfCopy;
  if (!selfCopy->mNeedsToUpdateBackgroundColor)
  {
    goto LABEL_19;
  }

  selfCopy->mNeedsToUpdateBackgroundColor = 0;
  backgroundColor = [(MCContainerParallelizer *)selfCopy->mContainer backgroundColor];
  if (![(MCContainerParallelizer *)selfCopy->mContainer backgroundColor]|| (Components = CGColorGetComponents(backgroundColor)) == 0)
  {
    mBackgroundColor = selfCopy->mBackgroundColor;
    v16 = -1.0;
LABEL_18:
    mBackgroundColor[3] = v16;
    goto LABEL_19;
  }

  v11 = Components;
  NumberOfComponents = CGColorGetNumberOfComponents(backgroundColor);
  if (NumberOfComponents <= 2)
  {
    if (NumberOfComponents != 1)
    {
      if (NumberOfComponents == 2)
      {
        v13 = v11->f64[1];
        v14 = v11->f64[0];
        mBackgroundColor = selfCopy->mBackgroundColor;
        selfCopy->mBackgroundColor[1] = v14;
        selfCopy->mBackgroundColor[2] = v14;
        selfCopy->mBackgroundColor[0] = v14;
LABEL_14:
        v16 = v13;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    v18 = v11->f64[0];
    mBackgroundColor = selfCopy->mBackgroundColor;
    selfCopy->mBackgroundColor[1] = v18;
    selfCopy->mBackgroundColor[2] = v18;
    selfCopy->mBackgroundColor[0] = v18;
LABEL_17:
    v16 = 1.0;
    goto LABEL_18;
  }

  if (NumberOfComponents == 3)
  {
    mBackgroundColor = selfCopy->mBackgroundColor;
    *selfCopy->mBackgroundColor = vcvt_f32_f64(*v11);
    v19 = v11[1].f64[0];
    selfCopy->mBackgroundColor[2] = v19;
    goto LABEL_17;
  }

  if (NumberOfComponents == 4)
  {
    mBackgroundColor = selfCopy->mBackgroundColor;
    *selfCopy->mBackgroundColor = vcvt_f32_f64(*v11);
    v13 = v11[1].f64[1];
    v17 = v11[1].f64[0];
    selfCopy->mBackgroundColor[2] = v17;
    goto LABEL_14;
  }

LABEL_19:
  forcedState = [arguments forcedState];
  v21 = forcedState;
  if (forcedState)
  {
    v22 = [forcedState objectForKey:@"activatedSublayers"];
  }

  else
  {
    v22 = 0;
  }

  currentLayoutIndex = [arguments currentLayoutIndex];
  [(MRLayerClock *)selfCopy->super.mClock containerTime];
  v24 = v23;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = selfCopy->mSublayers;
  v49 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (!v49)
  {
    goto LABEL_74;
  }

  v43 = v21;
  v47 = *v53;
  v48 = v22;
  argumentsCopy = arguments;
  do
  {
    for (i = 0; i != v49; i = i + 1)
    {
      if (*v53 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v52 + 1) + 8 * i);
      plugAsParallel = [v26 plugAsParallel];
      v28 = plugAsParallel;
      if (v22)
      {
        v29 = [v22 objectForKey:{objc_msgSend(plugAsParallel, "idInSupercontainer")}];
        if (v29)
        {
          if ([v28 isTriggered])
          {
            [objc_msgSend(v29 objectForKey:{@"timeIn", "doubleValue"}];
            [v28 setTimeIn:?];
          }

          LODWORD(v22) = 1;
        }

        else
        {
          LODWORD(v22) = 0;
        }
      }

      else
      {
        v29 = 0;
      }

      [v26 timeIn];
      v31 = v24 - v30;
      isPreactivated = [v26 isPreactivated];
      isActivated = [v26 isActivated];
      if ([v28 preactivatesWithParent])
      {
        v34 = 1;
      }

      else
      {
        v34 = [v26 shouldBePreactivatedAtTime:v31];
      }

      v35 = !selfCopy->super.mIsActivated || v34 == 0;
      if (v35 || ![v26 shouldBeActivatedAtTime:v31])
      {
        v36 = 0;
      }

      else
      {
        v36 = [v28 isTriggered] ^ 1 | v22 | isActivated;
      }

      v8 |= isActivated ^ v36;
      if (v34)
      {
        if ((isPreactivated & 1) == 0)
        {
          [v26 preactivate];
          [(MRLayerParallelizer *)v51 _observeSublayerOnPreactivate:v26];
          [objc_msgSend(v26 "parentHelper")];
        }

        if (isActivated & 1 | ((v36 & 1) == 0))
        {
          if (!(v36 & 1 | ((isActivated & 1) == 0)))
          {
            [v26 deactivate];
          }
        }

        else
        {
          [v26 activate];
        }

        if (currentLayoutIndex != [v28 currentLayoutIndex])
        {
          [v28 setCurrentLayoutIndex:currentLayoutIndex];
        }

        if (v36)
        {
          if (v22)
          {
            v37 = [v29 objectForKey:@"persistentState"];
            if (v37)
            {
              [v26 _applyState:v37];
            }
          }

          parentHelper = [v26 parentHelper];
          selfCopy = v51;
          if ([parentHelper needsUpdate])
          {
            [parentHelper setPlug:v28];
            v22 = v48;
LABEL_66:
            v40 = [v28 actionForKey:@"onLayoutChange"];
            if (v40)
            {
              [v26 _sendAction:v40 withStates:+[NSDictionary dictionaryWithObject:forKey:](NSDictionary async:"dictionaryWithObject:forKey:" yesterday:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", currentLayoutIndex), @"_currentLayoutIndex", 0, 0}];
            }
          }

          else
          {
            v22 = v48;
            if (currentLayoutIndex != [parentHelper currentLayoutIndex])
            {
              [parentHelper setCurrentLayoutIndex:currentLayoutIndex];
              goto LABEL_66;
            }
          }

          v39 = argumentsCopy;
          v8 |= [parentHelper applyAtTime:v26 toSublayer:argumentsCopy withArguments:v31];
          [objc_msgSend(v26 "clock")];
          v31 = v41;
        }

        else
        {
          selfCopy = v51;
          v39 = argumentsCopy;
          v22 = v48;
        }

        if (v43)
        {
          [v39 setForcedState:v29];
        }

        v8 |= [v26 prerenderForTime:context inContext:v39 withArguments:v31];
        continue;
      }

      if (isActivated)
      {
        [v26 deactivate];
      }

      selfCopy = v51;
      v22 = v48;
      if (isPreactivated)
      {
        [(MRLayerParallelizer *)v51 _unobserveSublayerOnDepreactivate:v26];
        [v26 depreactivate:1];
      }
    }

    v49 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  }

  while (v49);
LABEL_74:
  if (selfCopy->super.mIsActivated)
  {
    if (selfCopy->mNeedsToUpdateSublayersOrdering)
    {
      [(MRLayerParallelizer *)selfCopy _updateSublayersOrdering];
      LOBYTE(v8) = selfCopy->super.mIsActivated & v8;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

- (id)patchworkAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  if (self->super.mPixelSize.width <= 0.0 || self->super.mPixelSize.height <= 0.0)
  {
    return 0;
  }

  if (-[NSMutableArray count](self->mSublayers, "count") != &dword_0 + 1 || (v9 = -[NSMutableArray lastObject](self->mSublayers, "lastObject"), [objc_msgSend(v9 "clock")], (result = objc_msgSend(v9, "patchworkAtTime:inContext:withArguments:", context, arguments)) == 0))
  {
    v11.receiver = self;
    v11.super_class = MRLayerParallelizer;
    return [(MRLayer *)&v11 patchworkAtTime:context inContext:arguments withArguments:time];
  }

  return result;
}

- (void)setNeedsUpdateForPluggerOfSublayer:(id)sublayer
{
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  [objc_msgSend(sublayer "parentHelper")];

  objc_sync_exit(mSublayers);
}

- (BOOL)hasAudio
{
  songs = [(MCAudioPlaylist *)[(MCContainer *)self->mContainer audioPlaylist] songs];
  if (!songs || ![(NSSet *)songs count])
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

- (id)sublayerForKey:(id)key
{
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->mSublayers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v10 "idInSupercontainer")])
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:
  objc_sync_exit(mSublayers);
  return v11;
}

- (void)setSublayer:(id)sublayer forKey:(id)key
{
  v10 = -[MCObject _initWithObjectID:]([MCPlugParallel alloc], "_initWithObjectID:", [sublayer uuid]);
  [sublayer setIdInSupercontainer:key];
  [v10 setIDInSupercontainer:key];
  if (self->super.mIsActivated)
  {
    isActivated = &dword_0 + 1;
  }

  else
  {
    isActivated = [sublayer isActivated];
  }

  [v10 setIsTriggered:isActivated];
  if (!self->super.mIsActivated)
  {
    [sublayer setTimeIn:0.0];
  }

  [v10 setPreactivatesWithParent:1];
  [v10 setLoopDuration:1.0e10];
  [sublayer _setPlug:v10 andSuperlayer:self];
  v8 = objc_alloc_init(MRParallelPlugger);
  [sublayer setParentHelper:v8];
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  [(NSMutableArray *)self->mSublayers addObject:sublayer];
  -[NSMutableDictionary setObject:forKey:](self->mSublayersForPlugs, "setObject:forKey:", sublayer, [sublayer uuid]);
  [(MRLayerParallelizer *)self _observeSublayer:sublayer];
  if ([sublayer isPreactivated])
  {
    [(MRLayerParallelizer *)self _observeSublayerOnPreactivate:sublayer];
  }

  objc_sync_exit(mSublayers);
}

- (void)removeSublayer:(id)sublayer
{
  sublayerCopy = sublayer;
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  if ([sublayer isPreactivated])
  {
    [(MRLayerParallelizer *)self _unobserveSublayerOnDepreactivate:sublayer];
  }

  [(MRLayerParallelizer *)self _unobserveSublayer:sublayer];
  [sublayer _setPlug:0 andSuperlayer:0];
  [sublayer setParentHelper:0];
  [(NSMutableArray *)self->mSublayers removeObject:sublayer];
  -[NSMutableDictionary removeObjectForKey:](self->mSublayersForPlugs, "removeObjectForKey:", [sublayer uuid]);
  objc_sync_exit(mSublayers);

  sublayerCopy2 = sublayer;
}

- (id)sublayerForPlugObjectID:(id)d recursive:(BOOL)recursive
{
  recursiveCopy = recursive;
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  v8 = [(NSMutableDictionary *)self->mSublayersForPlugs objectForKey:d];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !recursiveCopy;
  }

  if (!v9)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = self->mSublayers;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = *v18;
LABEL_7:
      v13 = 0;
      while (1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v8 = [v14 sublayerForPlugObjectID:d recursive:1];
          if (v8)
          {
            break;
          }
        }

        if (v11 == ++v13)
        {
          v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
          v8 = 0;
          if (v11)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  v15 = v8;
  objc_sync_exit(mSublayers);
  return v8;
}

- (BOOL)hasSlides
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  mSublayers = self->mSublayers;
  v3 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(mSublayers);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([v7 isActivated] && (objc_msgSend(v7, "hasSlides") & 1) != 0)
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v3 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (BOOL)isInInteractiveMode
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  mSublayers = self->mSublayers;
  v3 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(mSublayers);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([v7 isActivated] && (objc_msgSend(v7, "isInInteractiveMode") & 1) != 0)
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v3 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (void)setIsInInteractiveMode:(BOOL)mode
{
  modeCopy = mode;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mSublayers = self->mSublayers;
  v5 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(mSublayers);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 isActivated])
        {
          [v9 setIsInInteractiveMode:modeCopy];
        }
      }

      v6 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)currentSlideInfoForElement:(id)element
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mSublayers = self->mSublayers;
  result = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(mSublayers);
      }

      v9 = *(*(&v10 + 1) + 8 * v8);
      if ([v9 isActivated])
      {
        result = [v9 currentSlideInfoForElement:element];
        if (result)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        result = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v10 objects:v14 count:16];
        v6 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (id)currentSlideInfos
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mSublayers = self->mSublayers;
  v3 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *v12;
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (*v12 != v5)
    {
      objc_enumerationMutation(mSublayers);
    }

    v7 = *(*(&v11 + 1) + 8 * v6);
    if ([v7 isActivated])
    {
      currentSlideInfos = [v7 currentSlideInfos];
      if (currentSlideInfos)
      {
        v9 = currentSlideInfos;
        if ([currentSlideInfos count])
        {
          return v9;
        }
      }
    }

    if (v4 == ++v6)
    {
      v4 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)getStartTime:(double *)time andDuration:(double *)duration forMovingToElementID:(id)d backwards:(BOOL)backwards
{
  backwardsCopy = backwards;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  mSublayers = self->mSublayers;
  v11 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(mSublayers);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        if ([v15 isActivated] && (objc_msgSend(v15, "getStartTime:andDuration:forMovingToElementID:backwards:", time, duration, d, backwardsCopy) & 1) != 0)
        {
          LOBYTE(v11) = 1;
          return v11;
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v11 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v17 objects:v21 count:16];
      v12 = v11;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  return v11;
}

- (BOOL)hasMoreSlidesFromTime:(double)time backwards:(BOOL)backwards startTime:(double *)startTime duration:(double *)duration
{
  backwardsCopy = backwards;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  mSublayers = self->mSublayers;
  v11 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(mSublayers);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        if ([v15 isActivated])
        {
          [v15 timeIn];
          if ([v15 hasMoreSlidesFromTime:backwardsCopy backwards:startTime startTime:duration duration:time - v16])
          {
            if (startTime)
            {
              [v15 timeIn];
              *startTime = v17 + *startTime;
            }

            if (duration)
            {
              [v15 timeIn];
              *duration = v18 + *duration;
            }

            LOBYTE(v11) = 1;
            return v11;
          }
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v11 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v20 objects:v24 count:16];
      v12 = v11;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  return v11;
}

- (double)interestingTimeForTime:(double)time
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  mSublayers = self->mSublayers;
  v5 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v16 objects:v20 count:16];
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(mSublayers);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 isActivated] && (objc_msgSend(v10, "hasSlides") & 1) != 0)
        {
          [v10 timeIn];
          [v10 interestingTimeForTime:time - v11];
          v13 = v12;
          [v10 timeIn];
          return v13 + v14;
        }
      }

      v7 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (double)interestingTimeForElement:(id)element
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  mSublayers = self->mSublayers;
  v5 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v15 objects:v19 count:16];
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(mSublayers);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 isActivated] && (objc_msgSend(v10, "hasSlides") & 1) != 0)
        {
          [v10 interestingTimeForElement:element];
          v12 = v11;
          [v10 timeIn];
          return v12 + v13;
        }
      }

      v7 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (void)getLazyDuration:(double *)duration lazyFactor:(double *)factor animationDuration:(double *)animationDuration fromInterestingTime:(double)time
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  mSublayers = self->mSublayers;
  v11 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(mSublayers);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ([v15 isActivated] && objc_msgSend(v15, "hasSlides"))
        {
          [v15 timeIn];
          [v15 getLazyDuration:duration lazyFactor:factor animationDuration:animationDuration fromInterestingTime:time - v16];
          return;
        }
      }

      v12 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }
}

- (id)sublayerHitAtPoint:(CGPoint)point onlyIfHitElement:(BOOL)element localPoint:(CGPoint *)localPoint
{
  if (self->super.mIsActivated)
  {
    elementCopy = element;
    x = point.x;
    if (self->super.mRenderingState->var18)
    {
      y = -point.y;
    }

    else
    {
      y = point.y;
    }

    mSublayers = self->mSublayers;
    objc_sync_enter(mSublayers);
    v11 = [(NSMutableArray *)self->mSublayers copy];
    objc_sync_exit(mSublayers);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (!v12)
    {
      v31 = 0;
      goto LABEL_38;
    }

    v31 = 0;
    v13 = *v34;
    v14 = 0x8000000000000000;
    while (1)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        if ([v16 isActivated])
        {
          renderingState = [v16 renderingState];
          v18 = renderingState;
          if (renderingState)
          {
            if (renderingState[60])
            {
              v32 = 0;
              memset(v38, 0, sizeof(v38));
              memset(v37, 0, sizeof(v37));
              MRMatrix_MultiplyWithMatrix(renderingState + 28, renderingState + 44, v38);
              v19 = y;
              v20 = x;
              if (MRMatrix_Invert(v38, v37))
              {
                v20 = MRMatrix_UnprojectPoint(v37, x, y);
                v22 = v21;
                [v16 pixelSize];
                v24 = v23;
                [v16 pixelSize];
                v19 = v22 * (v24 / v25);
              }

              if (([v16 isInfinite] & 1) != 0 || (v41.origin.x = -1.0, v41.origin.y = -1.0, v41.size.width = 2.0, v41.size.height = 2.0, v40.x = v20, v40.y = v19, CGRectContainsPoint(v41, v40)))
              {
                v26 = *(v18 + 242);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if (elementCopy && ![v16 elementHitAtPoint:0 localPoint:{v20, v19}])
                  {
                    continue;
                  }

                  v32.x = v20;
                  v32.y = v19;
                  v27 = v16;
                  if (!v16)
                  {
                    continue;
                  }
                }

                else
                {
                  if (v26)
                  {
                    v28 = v20;
                  }

                  else
                  {
                    v28 = x;
                  }

                  if (v26)
                  {
                    v29 = v19;
                  }

                  else
                  {
                    v29 = y;
                  }

                  v27 = [v16 sublayerHitAtPoint:elementCopy onlyIfHitElement:&v32 localPoint:{v28, v29}];
                  if (!v27)
                  {
                    continue;
                  }
                }

                if (v14 < [objc_msgSend(v16 "plugAsParallel")])
                {
                  if (localPoint)
                  {
                    *localPoint = v32;
                  }

                  v14 = [objc_msgSend(v16 "plugAsParallel")];
                  v31 = v27;
                }
              }
            }
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (!v12)
      {
LABEL_38:

        return v31;
      }
    }
  }

  return 0;
}

- (double)phaseInSublayerForKey:(id)key
{
  v4 = [(MRLayerParallelizer *)self sublayerForKey:key];
  if (!v4)
  {
    return 0.0;
  }

  v5 = v4;
  if (![objc_msgSend(v4 "plugAsParallel")] || objc_msgSend(v5, "isActivated") && !objc_msgSend(objc_msgSend(v5, "plugAsParallel"), "resetsTimeOnTrigger"))
  {
    return 0.0;
  }

  [(MRLayerClock *)self->super.mClock containerTime];
  [v5 setTimeIn:?];
  if ([v5 isActivated])
  {
    [v5 setNeedsToSynchronizeTime:1];
  }

  else
  {
    if (([v5 isPreactivated] & 1) == 0)
    {
      [v5 preactivate];
      [(MRLayerParallelizer *)self _observeSublayerOnPreactivate:v5];
    }

    [v5 activate];
  }

  [objc_msgSend(v5 "plug")];
  [v5 setDuration:?];
  [objc_msgSend(v5 "clock")];
  plug = [v5 plug];

  [plug phaseInDuration];
  return result;
}

- (double)phaseOutSublayerForKey:(id)key
{
  v4 = [(MRLayerParallelizer *)self sublayerForKey:key];
  v5 = 0.0;
  if (v4)
  {
    v6 = v4;
    if ([objc_msgSend(v4 "plugAsParallel")])
    {
      if ([v6 isActivated])
      {
        [objc_msgSend(v6 "plug")];
        v5 = v7;
        [(MRLayerClock *)self->super.mClock containerTime];
        v9 = v8;
        [v6 timeIn];
        [v6 setDuration:v5 + v9 - v10];
      }
    }
  }

  return v5;
}

- (id)_currentState
{
  v17.receiver = self;
  v17.super_class = MRLayerParallelizer;
  _currentState = [(MRLayer *)&v17 _currentState];
  v3 = objc_alloc_init(NSMutableDictionary);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mSublayers = self->mSublayers;
  v5 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(mSublayers);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isActivated])
        {
          _currentState2 = [v9 _currentState];
          if ([objc_msgSend(v9 "plugAsParallel")])
          {
            [v9 timeIn];
            [_currentState2 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"timeIn"}];
          }

          [v3 setObject:_currentState2 forKey:{objc_msgSend(v9, "idInSupercontainer")}];
        }
      }

      v6 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    [_currentState setObject:v3 forKey:@"activatedSublayers"];
  }

  return _currentState;
}

- (id)_dumpLayerWithOptions:(unint64_t)options
{
  v18.receiver = self;
  v18.super_class = MRLayerParallelizer;
  v5 = [(MRLayer *)&v18 _dumpLayerWithOptions:?];
  if ((options & 1) == 0)
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
            [v6 addObject:{objc_msgSend(v12, "_dumpLayerWithOptions:", options + 256)}];
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
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        v6 = *v18;
        do
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v18 != v6)
            {
              objc_enumerationMutation(v4);
            }

            v8 = *(*(&v17 + 1) + 8 * i);
            v9 = *(v8 + 8);
            if (v9 > 1)
            {
              if (v9 == 2)
              {
                v15 = -[NSMutableDictionary objectForKey:](self->mSublayersForPlugs, "objectForKey:", [*(v8 + 16) objectID]);
                v16 = v15;
                if (v15)
                {
                  if (([v15 isPreactivated] & 1) == 0)
                  {
                    [v16 preactivate];
                    [(MRLayerParallelizer *)self _observeSublayerOnPreactivate:v16];
                  }

                  if (([v16 isActivated] & 1) == 0)
                  {
                    [v16 activate];
                  }
                }
              }

              else if (v9 == 3)
              {
                v13 = -[NSMutableDictionary objectForKey:](self->mSublayersForPlugs, "objectForKey:", [*(v8 + 16) objectID]);
                v14 = v13;
                if (v13)
                {
                  if ([v13 isActivated])
                  {
                    [v14 deactivate];
                  }
                }
              }
            }

            else if (v9)
            {
              if (v9 == 1)
              {
                v10 = *(v8 + 16);
                v11 = -[NSMutableDictionary objectForKey:](self->mSublayersForPlugs, "objectForKey:", [v10 objectID]);
                v12 = v11;
                if (v11)
                {
                  if ([v11 isPreactivated])
                  {
                    if ([v12 isActivated])
                    {
                      [v12 deactivate];
                    }

                    [(MRLayerParallelizer *)self _unobserveSublayerOnDepreactivate:v12];
                    [v12 depreactivate:0];
                  }

                  [(MRLayerParallelizer *)self _unobserveSublayer:v12];
                  [(MRLayerParallelizer *)self _deleteSublayer:v12];
                }

                else if ([v10 container])
                {
                  NSLog(@"Consistency error, trying to delete a nil sublayer in parallelizer\n");
                }
              }
            }

            else
            {
              [(MRLayerParallelizer *)self _observeSublayer:[(MRLayerParallelizer *)self _createSublayerForPlug:*(v8 + 16)]];
            }
          }

          v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v5);
      }
    }
  }

  else
  {

    objc_sync_exit(mLayerCommandQueue);
  }
}

- (id)_createSublayerForPlug:(id)plug
{
  v5 = [MRLayer layerWithPlug:plug andParameters:self->super.mParameters inSuperlayer:self];
  v6 = objc_alloc_init(MRParallelPlugger);
  [(MRLayer *)v5 setParentHelper:v6];
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  [(NSMutableArray *)self->mSublayers addObject:v5];
  -[NSMutableDictionary setObject:forKey:](self->mSublayersForPlugs, "setObject:forKey:", v5, [plug objectID]);
  objc_sync_exit(mSublayers);

  self->mNeedsToUpdateSublayersOrdering = 1;
  return v5;
}

- (void)_deleteSublayer:(id)sublayer
{
  sublayerCopy = sublayer;
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  [sublayer setParentHelper:0];
  -[NSMutableDictionary removeObjectForKey:](self->mSublayersForPlugs, "removeObjectForKey:", [objc_msgSend(sublayer "plug")]);
  [(NSMutableArray *)self->mSublayers removeObject:sublayer];
  objc_sync_exit(mSublayers);
  [sublayer cleanup];
}

- (void)_observeSublayer:(id)sublayer
{
  if ([sublayer isAdhocLayer])
  {
    v5 = @"plugAsParallel.zIndex";
  }

  else
  {
    if (self->super.mIsReadonly)
    {
      return;
    }

    v5 = @"plugAsParallel.container";
  }

  [sublayer addObserver:self forKeyPath:v5 options:0 context:0];
}

- (void)_unobserveSublayer:(id)sublayer
{
  if (([sublayer isScheduledForDestruction] & 1) == 0)
  {
    if ([sublayer isAdhocLayer])
    {
      v5 = @"plugAsParallel.zIndex";
    }

    else
    {
      if (self->super.mIsReadonly)
      {
        return;
      }

      v5 = @"plugAsParallel.container";
    }

    [sublayer removeObserver:self forKeyPath:v5];
  }
}

- (void)_observePlug
{
  v3.receiver = self;
  v3.super_class = MRLayerParallelizer;
  [(MRLayer *)&v3 _observePlug];
  [(MCContainerParallelizer *)self->mContainer addObserver:self forKeyPath:@"plugs" options:3 context:0];
  [(MCContainerParallelizer *)self->mContainer addObserver:self forKeyPath:@"zOrderedPlugs" options:3 context:0];
}

- (void)_unobservePlug
{
  [(MCContainerParallelizer *)self->mContainer removeObserver:self forKeyPath:@"plugs"];
  [(MCContainerParallelizer *)self->mContainer removeObserver:self forKeyPath:@"zOrderedPlugs"];
  v3.receiver = self;
  v3.super_class = MRLayerParallelizer;
  [(MRLayer *)&v3 _unobservePlug];
}

- (void)_observePlugOnPreactivate
{
  v3.receiver = self;
  v3.super_class = MRLayerParallelizer;
  [(MRLayer *)&v3 _observePlugOnPreactivate];
  [(MCContainerParallelizer *)self->mContainer addObserver:self forKeyPath:@"backgroundColor" options:0 context:0];
  if (self->super.mDoAudio)
  {
    [(MCContainerParallelizer *)self->mContainer addObserver:self forKeyPath:@"audioPlaylist.audioNoVolume" options:0 context:0];
    [(MCContainerParallelizer *)self->mContainer addObserver:self forKeyPath:@"audioPlaylist.builtVolume" options:0 context:0];
  }
}

- (void)_unobservePlugOnDepreactivate
{
  [(MCContainerParallelizer *)self->mContainer removeObserver:self forKeyPath:@"backgroundColor"];
  if (self->super.mDoAudio)
  {
    [(MCContainerParallelizer *)self->mContainer removeObserver:self forKeyPath:@"audioPlaylist.audioNoVolume"];
    [(MCContainerParallelizer *)self->mContainer removeObserver:self forKeyPath:@"audioPlaylist.builtVolume"];
  }

  v3.receiver = self;
  v3.super_class = MRLayerParallelizer;
  [(MRLayer *)&v3 _unobservePlugOnDepreactivate];
}

- (void)_setNeedsToRequestRebuildAudio:(BOOL)audio
{
  self->super.mNeedsToRequestRebuildAudio = self->super.mDoAudio;
  if (audio)
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

- (void)_renderAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  HIDWORD(v11) = 0;
  v27 = xmmword_163650;
  mBackgroundColor = self->mBackgroundColor;
  if (self->mBackgroundColor[3] >= 0.0)
  {
    *&v5 = self->mBackgroundColor[1];
    *&v6 = self->mBackgroundColor[2];
    [context setBackColorRed:&v27 green:COERCE_DOUBLE(*mBackgroundColor) blue:v5 alpha:v6 saveTo:?];
  }

  if (!self->super.mSuperlayer || self->super.mRenderingState->var17 && [(MRLayerParallelizer *)self isOpaque]&& !self->super.mRenderingState->var19)
  {
    LODWORD(v11) = 1.0;
    LODWORD(v5) = 1.0;
    LODWORD(v6) = 1.0;
    LODWORD(v7) = 1.0;
    [context setForeColorRed:0 green:v11 blue:v5 alpha:v6 saveTo:v7];
    if (mBackgroundColor[3] < 0.0)
    {
      if (self->super.mRenderingState->var19)
      {
        *&v14 = 1.0;
      }

      else
      {
        *&v14 = 0.0;
      }

      [context setBackColorRed:&v27 green:0.0 blue:0.0 alpha:0.0 saveTo:v14];
    }

    if (![context dimensionalMode] || objc_msgSend(context, "dimensionalMode") == 1 || objc_msgSend(context, "dimensionalMode") == 3)
    {
      [context clear:3];
    }
  }

  else if (![(MRLayerParallelizer *)self _isMadeOpaqueBySublayers]&& mBackgroundColor[3] > 0.0)
  {
    v13 = [objc_msgSend(context "imageManager")];
    [v13 setLabel:@"Marimba Parallelizer Background"];
    [v13 setClampMode:2];
    if (mBackgroundColor[3] >= 1.0)
    {
      [context setShader:@"PlainTexture"];
      [MRCroppingSprite renderImage:v13 inContext:context atPosition:CGPointZero.x andSize:CGPointZero.y zRotation:2.0, 2.0, 0.0];
      [context unsetShader];
    }

    else
    {
      [context blend:3];
      [context setShader:@"PlainTexture"];
      [MRCroppingSprite renderImage:v13 inContext:context atPosition:CGPointZero.x andSize:CGPointZero.y zRotation:2.0, 2.0, 0.0];
      [context unsetShader];
      [context blend:0];
    }

    [v13 releaseByUser];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  mSublayers = self->mSublayers;
  v16 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v18 = v16;
    v19 = *v23;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(mSublayers);
        }

        v21 = *(*(&v22 + 1) + 8 * i);
        if ([v21 hasSomethingToRender])
        {
          [objc_msgSend(v21 "clock")];
          [v21 renderAtTime:context inContext:arguments withArguments:?];
        }
      }

      v18 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

  LODWORD(v17) = HIDWORD(v27);
  if (*(&v27 + 3) >= 0.0)
  {
    [context restoreBackColor:{&v27, v17}];
  }
}

- (id)_retainedByUserRenderedImageAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  mBackgroundColor = self->mBackgroundColor;
  v9 = self->mBackgroundColor[3];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  mSublayers = self->mSublayers;
  v11 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    contextCopy = context;
    v13 = 0;
    v14 = *v38;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(mSublayers);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        if ([v16 hasSomethingToRender])
        {
          if (v13 || v9 > 0.0)
          {
            if (v13)
            {
              v16 = v13;
            }

LABEL_23:
            context = contextCopy;
            if (!v16)
            {
              goto LABEL_27;
            }

LABEL_24:
            if (mBackgroundColor[3] < 0.0)
            {
              if (self->super.mRenderingState->var19)
              {
                mBackgroundColor = [context backColor];
              }

              else
              {
                mBackgroundColor = 0;
              }
            }

            v36[0] = 0;
            v36[1] = 0;
            *&self->super.mRenderingState->var17 = 257;
            v23 = [context beginLocalContextWithSize:mBackgroundColor backgroundColor:v36 state:{self->super.mPixelSize.width, self->super.mPixelSize.height}];
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v24 = self->mSublayers;
            v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v32 objects:v41 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v33;
              do
              {
                for (j = 0; j != v26; j = j + 1)
                {
                  if (*v33 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v32 + 1) + 8 * j);
                  if ([v29 hasSomethingToRender])
                  {
                    [objc_msgSend(v29 "clock")];
                    [v29 renderAtTime:v23 inContext:arguments withArguments:?];
                  }
                }

                v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v32 objects:v41 count:16];
              }

              while (v26);
            }

            return [context retainedByUserImageByEndingLocalContext:v23 andRestoreState:v36];
          }

          [objc_msgSend(v16 "plugAsParallel")];
          if (v18 != 2.0 || v17 != 2.0)
          {
            goto LABEL_23;
          }

          v13 = v16;
          if (![v16 isOpaque])
          {
            goto LABEL_23;
          }
        }
      }

      v12 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    context = contextCopy;
    if (v13)
    {
      renderingState = [v13 renderingState];
      renderingState[244] = self->super.mRenderingState->var19;
      [objc_msgSend(v13 "clock")];
      v21 = [v13 retainedByUserRenderedImageAtTime:contextCopy inContext:arguments withArguments:?];
      renderingState[244] = 0;
      if (v21)
      {
        v22 = v21;
        if (![v21 isEmpty])
        {
          return v22;
        }

        [v22 releaseByUser];
      }

      goto LABEL_24;
    }
  }

LABEL_27:
  if (mBackgroundColor[3] < 0.0)
  {
    if (self->super.mRenderingState->var19)
    {
      mBackgroundColor = [context backColor];
    }

    else
    {
      mBackgroundColor = 0;
    }
  }

  v22 = [objc_msgSend(context "imageManager")];
  [v22 setLabel:@"Marimba Parallelizer Background"];
  [v22 setClampMode:2];
  return v22;
}

@end