@interface MRLayerParallelizer
- (BOOL)_isMadeOpaqueBySublayers;
- (BOOL)getStartTime:(double *)a3 andDuration:(double *)a4 forMovingToElementID:(id)a5 backwards:(BOOL)a6;
- (BOOL)hasAudio;
- (BOOL)hasMoreSlidesFromTime:(double)a3 backwards:(BOOL)a4 startTime:(double *)a5 duration:(double *)a6;
- (BOOL)hasSlides;
- (BOOL)hasSomethingToRender;
- (BOOL)isAlphaFriendly;
- (BOOL)isInInteractiveMode;
- (BOOL)isInfinite;
- (BOOL)isLoadedForTime:(double)a3;
- (BOOL)isOpaque;
- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (MRLayerParallelizer)initWithParameters:(id)a3;
- (MRLayerParallelizer)initWithPlug:(id)a3 andParameters:(id)a4 inSuperlayer:(id)a5;
- (const)backgroundColor;
- (double)interestingTimeForElement:(id)a3;
- (double)interestingTimeForTime:(double)a3;
- (double)phaseInSublayerForKey:(id)a3;
- (double)phaseOutSublayerForKey:(id)a3;
- (id)_createSublayerForPlug:(id)a3;
- (id)_currentState;
- (id)_dumpLayerWithOptions:(unint64_t)a3;
- (id)_retainedByUserRenderedImageAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (id)currentSlideInfoForElement:(id)a3;
- (id)currentSlideInfos;
- (id)patchworkAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (id)sublayerForKey:(id)a3;
- (id)sublayerForPlugObjectID:(id)a3 recursive:(BOOL)a4;
- (id)sublayerHitAtPoint:(CGPoint)a3 onlyIfHitElement:(BOOL)a4 localPoint:(CGPoint *)a5;
- (void)_deleteSublayer:(id)a3;
- (void)_executeLayerCommandQueue;
- (void)_observePlug;
- (void)_observePlugOnPreactivate;
- (void)_observeSublayer:(id)a3;
- (void)_renderAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (void)_setNeedsToRequestRebuildAudio:(BOOL)a3;
- (void)_unobservePlug;
- (void)_unobservePlugOnDepreactivate;
- (void)_unobserveSublayer:(id)a3;
- (void)beginMorphingToAspectRatio:(double)a3 withDuration:(double)a4;
- (void)cleanup;
- (void)deactivate;
- (void)depreactivate:(BOOL)a3;
- (void)getLazyDuration:(double *)a3 lazyFactor:(double *)a4 animationDuration:(double *)a5 fromInterestingTime:(double)a6;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)preactivate;
- (void)removeSublayer:(id)a3;
- (void)setBackgroundColorRed:(float)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
- (void)setDuration:(double)a3;
- (void)setIsInInteractiveMode:(BOOL)a3;
- (void)setNeedsUpdateForPluggerOfSublayer:(id)a3;
- (void)setPixelSize:(CGSize)a3;
- (void)setSublayer:(id)a3 forKey:(id)a4;
- (void)synchronizeTime;
@end

@implementation MRLayerParallelizer

- (MRLayerParallelizer)initWithPlug:(id)a3 andParameters:(id)a4 inSuperlayer:(id)a5
{
  v8.receiver = self;
  v8.super_class = MRLayerParallelizer;
  v5 = [(MRLayer *)&v8 initWithPlug:a3 andParameters:a4 inSuperlayer:a5];
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

- (MRLayerParallelizer)initWithParameters:(id)a3
{
  v5.receiver = self;
  v5.super_class = MRLayerParallelizer;
  v3 = [(MRLayer *)&v5 initWithParameters:a3];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v6 = a6;
  v7 = a5;
  v28 = a5;
  v29 = a6;
  if ([a3 isEqualToString:@"plugs"])
  {
    v11 = [objc_msgSend(v7 objectForKey:{NSKeyValueChangeKindKey), "unsignedIntegerValue"}];
    if (v11 == &dword_0 + 2)
    {
      v21 = [v7 objectForKey:NSKeyValueChangeNewKey];
    }

    else
    {
      if (v11 == &dword_0 + 3)
      {
        v12 = [v7 objectForKey:NSKeyValueChangeOldKey];
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

      v21 = [(MCContainerParallelizer *)self->mContainer plugs];
    }

    v22 = v21;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = [(NSSet *)v21 countByEnumeratingWithState:&v31 objects:v39 count:16, v28, v29];
    if (v23)
    {
      v24 = v23;
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

  if ([a3 isEqualToString:@"plugAsParallel.container"])
  {
    v19 = [a4 plugAsParallel];
    if (([a4 isScheduledForDestruction] & 1) == 0)
    {
      [(MRLayerParallelizer *)self _unobserveSublayer:a4];
      [a4 scheduleForDestruction];
      [(MRLayer *)self _queueLayerCommand:1 object:v19];
    }

    if ([v19 container])
    {
      [(MRLayer *)self _queueLayerCommand:0 object:v19];
    }
  }

  else
  {
    if (([a3 isEqualToString:@"zOrderedPlugs"] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"plugAsParallel.zIndex"))
    {
      v20 = 256;
    }

    else
    {
      if (![a3 isEqualToString:@"backgroundColor"])
      {
        goto LABEL_36;
      }

      v20 = 257;
    }

    *(&self->super.super.isa + v20) = 1;
  }

LABEL_34:
  v7 = v28;
  v6 = v29;
  if (!self->super.mIsPrecomputing)
  {
    [(MRLayer *)self->super.mSuperlayer setNeedsUpdateForPluggerOfSublayer:self];
    [(MRLayer *)self stampTime];
  }

LABEL_36:
  v30.receiver = self;
  v30.super_class = MRLayerParallelizer;
  [(MRLayer *)&v30 observeValueForKeyPath:a3 ofObject:a4 change:v7 context:v6, v28, v29];
}

- (void)setPixelSize:(CGSize)a3
{
  v13.receiver = self;
  v13.super_class = MRLayerParallelizer;
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

- (void)beginMorphingToAspectRatio:(double)a3 withDuration:(double)a4
{
  mSublayers = self->mSublayers;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_56098;
  v5[3] = &unk_1AAD70;
  *&v5[4] = a3;
  *&v5[5] = a4;
  [(NSMutableArray *)mSublayers enumerateObjectsUsingBlock:v5];
}

- (void)setDuration:(double)a3
{
  v7.receiver = self;
  v7.super_class = MRLayerParallelizer;
  [(MRLayer *)&v7 setDuration:?];
  mSublayers = self->mSublayers;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_5620C;
  v6[3] = &unk_1AADB0;
  *&v6[4] = a3;
  [(NSMutableArray *)mSublayers enumerateObjectsUsingBlock:v6];
}

- (void)setBackgroundColorRed:(float)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v6 = a4;
  self->mBackgroundColor[0] = a3;
  self->mBackgroundColor[1] = v6;
  v7 = a5;
  v8 = a6;
  self->mBackgroundColor[2] = v7;
  self->mBackgroundColor[3] = v8;
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

- (void)depreactivate:(BOOL)a3
{
  v3 = a3;
  mSublayers = self->mSublayers;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_56468;
  v7[3] = &unk_1AADF8;
  v7[4] = self;
  v8 = a3;
  [(NSMutableArray *)mSublayers enumerateObjectsUsingBlock:v7];
  v6.receiver = self;
  v6.super_class = MRLayerParallelizer;
  [(MRLayer *)&v6 depreactivate:v3];
}

- (BOOL)isLoadedForTime:(double)a3
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
          v14 = a3 - v13;
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
          v11 = [v10 plugAsParallel];
          [v11 rotationAngle];
          if (v12 == 0.0)
          {
            [v11 xRotationAngle];
            if (v13 == 0.0)
            {
              [v11 yRotationAngle];
              if (v14 == 0.0)
              {
                [v11 opacity];
                if (v15 >= 1.0)
                {
                  [v11 zPosition];
                  if (v16 >= 0.0 && ![v11 countOfAnimationPaths])
                  {
                    [v11 position];
                    v18 = v17;
                    v20 = v19;
                    [v11 sizeForParentAspectRatio:v8];
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
    LOBYTE(v5) = 1;
    return v5;
  }

  if (v3 != &dword_0 + 1)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  v4 = [(NSMutableArray *)self->mSublayers lastObject];
  v5 = [v4 isAlphaFriendly];
  if (v5)
  {
    if (([v4 isOpaque] & 1) == 0)
    {
      LOBYTE(v5) = self->mBackgroundColor[3] <= 0.0;
      return v5;
    }

    goto LABEL_5;
  }

  return v5;
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

- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  v7 = self;
  if (self->super.mLayerCommandQueueNeedsAttention)
  {
    [(MRLayerParallelizer *)self _executeLayerCommandQueue];
  }

  v56.receiver = v7;
  v56.super_class = MRLayerParallelizer;
  v8 = [(MRLayer *)&v56 prerenderForTime:a4 inContext:a5 withArguments:a3];
  v51 = v7;
  if (!v7->mNeedsToUpdateBackgroundColor)
  {
    goto LABEL_19;
  }

  v7->mNeedsToUpdateBackgroundColor = 0;
  v9 = [(MCContainerParallelizer *)v7->mContainer backgroundColor];
  if (![(MCContainerParallelizer *)v7->mContainer backgroundColor]|| (Components = CGColorGetComponents(v9)) == 0)
  {
    mBackgroundColor = v7->mBackgroundColor;
    v16 = -1.0;
LABEL_18:
    mBackgroundColor[3] = v16;
    goto LABEL_19;
  }

  v11 = Components;
  NumberOfComponents = CGColorGetNumberOfComponents(v9);
  if (NumberOfComponents <= 2)
  {
    if (NumberOfComponents != 1)
    {
      if (NumberOfComponents == 2)
      {
        v13 = v11->f64[1];
        v14 = v11->f64[0];
        mBackgroundColor = v7->mBackgroundColor;
        v7->mBackgroundColor[1] = v14;
        v7->mBackgroundColor[2] = v14;
        v7->mBackgroundColor[0] = v14;
LABEL_14:
        v16 = v13;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    v18 = v11->f64[0];
    mBackgroundColor = v7->mBackgroundColor;
    v7->mBackgroundColor[1] = v18;
    v7->mBackgroundColor[2] = v18;
    v7->mBackgroundColor[0] = v18;
LABEL_17:
    v16 = 1.0;
    goto LABEL_18;
  }

  if (NumberOfComponents == 3)
  {
    mBackgroundColor = v7->mBackgroundColor;
    *v7->mBackgroundColor = vcvt_f32_f64(*v11);
    v19 = v11[1].f64[0];
    v7->mBackgroundColor[2] = v19;
    goto LABEL_17;
  }

  if (NumberOfComponents == 4)
  {
    mBackgroundColor = v7->mBackgroundColor;
    *v7->mBackgroundColor = vcvt_f32_f64(*v11);
    v13 = v11[1].f64[1];
    v17 = v11[1].f64[0];
    v7->mBackgroundColor[2] = v17;
    goto LABEL_14;
  }

LABEL_19:
  v20 = [a5 forcedState];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 objectForKey:@"activatedSublayers"];
  }

  else
  {
    v22 = 0;
  }

  v50 = [a5 currentLayoutIndex];
  [(MRLayerClock *)v7->super.mClock containerTime];
  v24 = v23;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v7->mSublayers;
  v49 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (!v49)
  {
    goto LABEL_74;
  }

  v43 = v21;
  v47 = *v53;
  v48 = v22;
  v44 = a5;
  do
  {
    for (i = 0; i != v49; i = i + 1)
    {
      if (*v53 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v52 + 1) + 8 * i);
      v27 = [v26 plugAsParallel];
      v28 = v27;
      if (v22)
      {
        v29 = [v22 objectForKey:{objc_msgSend(v27, "idInSupercontainer")}];
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
      v32 = [v26 isPreactivated];
      v33 = [v26 isActivated];
      if ([v28 preactivatesWithParent])
      {
        v34 = 1;
      }

      else
      {
        v34 = [v26 shouldBePreactivatedAtTime:v31];
      }

      v35 = !v7->super.mIsActivated || v34 == 0;
      if (v35 || ![v26 shouldBeActivatedAtTime:v31])
      {
        v36 = 0;
      }

      else
      {
        v36 = [v28 isTriggered] ^ 1 | v22 | v33;
      }

      v8 |= v33 ^ v36;
      if (v34)
      {
        if ((v32 & 1) == 0)
        {
          [v26 preactivate];
          [(MRLayerParallelizer *)v51 _observeSublayerOnPreactivate:v26];
          [objc_msgSend(v26 "parentHelper")];
        }

        if (v33 & 1 | ((v36 & 1) == 0))
        {
          if (!(v36 & 1 | ((v33 & 1) == 0)))
          {
            [v26 deactivate];
          }
        }

        else
        {
          [v26 activate];
        }

        if (v50 != [v28 currentLayoutIndex])
        {
          [v28 setCurrentLayoutIndex:v50];
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

          v38 = [v26 parentHelper];
          v7 = v51;
          if ([v38 needsUpdate])
          {
            [v38 setPlug:v28];
            v22 = v48;
LABEL_66:
            v40 = [v28 actionForKey:@"onLayoutChange"];
            if (v40)
            {
              [v26 _sendAction:v40 withStates:+[NSDictionary dictionaryWithObject:forKey:](NSDictionary async:"dictionaryWithObject:forKey:" yesterday:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v50), @"_currentLayoutIndex", 0, 0}];
            }
          }

          else
          {
            v22 = v48;
            if (v50 != [v38 currentLayoutIndex])
            {
              [v38 setCurrentLayoutIndex:v50];
              goto LABEL_66;
            }
          }

          v39 = v44;
          v8 |= [v38 applyAtTime:v26 toSublayer:v44 withArguments:v31];
          [objc_msgSend(v26 "clock")];
          v31 = v41;
        }

        else
        {
          v7 = v51;
          v39 = v44;
          v22 = v48;
        }

        if (v43)
        {
          [v39 setForcedState:v29];
        }

        v8 |= [v26 prerenderForTime:a4 inContext:v39 withArguments:v31];
        continue;
      }

      if (v33)
      {
        [v26 deactivate];
      }

      v7 = v51;
      v22 = v48;
      if (v32)
      {
        [(MRLayerParallelizer *)v51 _unobserveSublayerOnDepreactivate:v26];
        [v26 depreactivate:1];
      }
    }

    v49 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  }

  while (v49);
LABEL_74:
  if (v7->super.mIsActivated)
  {
    if (v7->mNeedsToUpdateSublayersOrdering)
    {
      [(MRLayerParallelizer *)v7 _updateSublayersOrdering];
      LOBYTE(v8) = v7->super.mIsActivated & v8;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

- (id)patchworkAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  if (self->super.mPixelSize.width <= 0.0 || self->super.mPixelSize.height <= 0.0)
  {
    return 0;
  }

  if (-[NSMutableArray count](self->mSublayers, "count") != &dword_0 + 1 || (v9 = -[NSMutableArray lastObject](self->mSublayers, "lastObject"), [objc_msgSend(v9 "clock")], (result = objc_msgSend(v9, "patchworkAtTime:inContext:withArguments:", a4, a5)) == 0))
  {
    v11.receiver = self;
    v11.super_class = MRLayerParallelizer;
    return [(MRLayer *)&v11 patchworkAtTime:a4 inContext:a5 withArguments:a3];
  }

  return result;
}

- (void)setNeedsUpdateForPluggerOfSublayer:(id)a3
{
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  [objc_msgSend(a3 "parentHelper")];

  objc_sync_exit(mSublayers);
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

- (id)sublayerForKey:(id)a3
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

- (void)setSublayer:(id)a3 forKey:(id)a4
{
  v10 = -[MCObject _initWithObjectID:]([MCPlugParallel alloc], "_initWithObjectID:", [a3 uuid]);
  [a3 setIdInSupercontainer:a4];
  [v10 setIDInSupercontainer:a4];
  if (self->super.mIsActivated)
  {
    v7 = &dword_0 + 1;
  }

  else
  {
    v7 = [a3 isActivated];
  }

  [v10 setIsTriggered:v7];
  if (!self->super.mIsActivated)
  {
    [a3 setTimeIn:0.0];
  }

  [v10 setPreactivatesWithParent:1];
  [v10 setLoopDuration:1.0e10];
  [a3 _setPlug:v10 andSuperlayer:self];
  v8 = objc_alloc_init(MRParallelPlugger);
  [a3 setParentHelper:v8];
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  [(NSMutableArray *)self->mSublayers addObject:a3];
  -[NSMutableDictionary setObject:forKey:](self->mSublayersForPlugs, "setObject:forKey:", a3, [a3 uuid]);
  [(MRLayerParallelizer *)self _observeSublayer:a3];
  if ([a3 isPreactivated])
  {
    [(MRLayerParallelizer *)self _observeSublayerOnPreactivate:a3];
  }

  objc_sync_exit(mSublayers);
}

- (void)removeSublayer:(id)a3
{
  v5 = a3;
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  if ([a3 isPreactivated])
  {
    [(MRLayerParallelizer *)self _unobserveSublayerOnDepreactivate:a3];
  }

  [(MRLayerParallelizer *)self _unobserveSublayer:a3];
  [a3 _setPlug:0 andSuperlayer:0];
  [a3 setParentHelper:0];
  [(NSMutableArray *)self->mSublayers removeObject:a3];
  -[NSMutableDictionary removeObjectForKey:](self->mSublayersForPlugs, "removeObjectForKey:", [a3 uuid]);
  objc_sync_exit(mSublayers);

  v7 = a3;
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
          v8 = [v14 sublayerForPlugObjectID:a3 recursive:1];
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

- (void)setIsInInteractiveMode:(BOOL)a3
{
  v3 = a3;
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
          [v9 setIsInInteractiveMode:v3];
        }
      }

      v6 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)currentSlideInfoForElement:(id)a3
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
        result = [v9 currentSlideInfoForElement:a3];
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
      v8 = [v7 currentSlideInfos];
      if (v8)
      {
        v9 = v8;
        if ([v8 count])
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

- (BOOL)getStartTime:(double *)a3 andDuration:(double *)a4 forMovingToElementID:(id)a5 backwards:(BOOL)a6
{
  v6 = a6;
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
        if ([v15 isActivated] && (objc_msgSend(v15, "getStartTime:andDuration:forMovingToElementID:backwards:", a3, a4, a5, v6) & 1) != 0)
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

- (BOOL)hasMoreSlidesFromTime:(double)a3 backwards:(BOOL)a4 startTime:(double *)a5 duration:(double *)a6
{
  v8 = a4;
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
          if ([v15 hasMoreSlidesFromTime:v8 backwards:a5 startTime:a6 duration:a3 - v16])
          {
            if (a5)
            {
              [v15 timeIn];
              *a5 = v17 + *a5;
            }

            if (a6)
            {
              [v15 timeIn];
              *a6 = v18 + *a6;
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

- (double)interestingTimeForTime:(double)a3
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
          [v10 interestingTimeForTime:a3 - v11];
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

- (double)interestingTimeForElement:(id)a3
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
          [v10 interestingTimeForElement:a3];
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

- (void)getLazyDuration:(double *)a3 lazyFactor:(double *)a4 animationDuration:(double *)a5 fromInterestingTime:(double)a6
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
          [v15 getLazyDuration:a3 lazyFactor:a4 animationDuration:a5 fromInterestingTime:a6 - v16];
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

- (id)sublayerHitAtPoint:(CGPoint)a3 onlyIfHitElement:(BOOL)a4 localPoint:(CGPoint *)a5
{
  if (self->super.mIsActivated)
  {
    v6 = a4;
    x = a3.x;
    if (self->super.mRenderingState->var18)
    {
      y = -a3.y;
    }

    else
    {
      y = a3.y;
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
          v17 = [v16 renderingState];
          v18 = v17;
          if (v17)
          {
            if (v17[60])
            {
              v32 = 0;
              memset(v38, 0, sizeof(v38));
              memset(v37, 0, sizeof(v37));
              MRMatrix_MultiplyWithMatrix(v17 + 28, v17 + 44, v38);
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
                  if (v6 && ![v16 elementHitAtPoint:0 localPoint:{v20, v19}])
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

                  v27 = [v16 sublayerHitAtPoint:v6 onlyIfHitElement:&v32 localPoint:{v28, v29}];
                  if (!v27)
                  {
                    continue;
                  }
                }

                if (v14 < [objc_msgSend(v16 "plugAsParallel")])
                {
                  if (a5)
                  {
                    *a5 = v32;
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

- (double)phaseInSublayerForKey:(id)a3
{
  v4 = [(MRLayerParallelizer *)self sublayerForKey:a3];
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
  v7 = [v5 plug];

  [v7 phaseInDuration];
  return result;
}

- (double)phaseOutSublayerForKey:(id)a3
{
  v4 = [(MRLayerParallelizer *)self sublayerForKey:a3];
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
  v12 = [(MRLayer *)&v17 _currentState];
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
          v10 = [v9 _currentState];
          if ([objc_msgSend(v9 "plugAsParallel")])
          {
            [v9 timeIn];
            [v10 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"timeIn"}];
          }

          [v3 setObject:v10 forKey:{objc_msgSend(v9, "idInSupercontainer")}];
        }
      }

      v6 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    [v12 setObject:v3 forKey:@"activatedSublayers"];
  }

  return v12;
}

- (id)_dumpLayerWithOptions:(unint64_t)a3
{
  v18.receiver = self;
  v18.super_class = MRLayerParallelizer;
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

- (id)_createSublayerForPlug:(id)a3
{
  v5 = [MRLayer layerWithPlug:a3 andParameters:self->super.mParameters inSuperlayer:self];
  v6 = objc_alloc_init(MRParallelPlugger);
  [(MRLayer *)v5 setParentHelper:v6];
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  [(NSMutableArray *)self->mSublayers addObject:v5];
  -[NSMutableDictionary setObject:forKey:](self->mSublayersForPlugs, "setObject:forKey:", v5, [a3 objectID]);
  objc_sync_exit(mSublayers);

  self->mNeedsToUpdateSublayersOrdering = 1;
  return v5;
}

- (void)_deleteSublayer:(id)a3
{
  v4 = a3;
  mSublayers = self->mSublayers;
  objc_sync_enter(mSublayers);
  [a3 setParentHelper:0];
  -[NSMutableDictionary removeObjectForKey:](self->mSublayersForPlugs, "removeObjectForKey:", [objc_msgSend(a3 "plug")]);
  [(NSMutableArray *)self->mSublayers removeObject:a3];
  objc_sync_exit(mSublayers);
  [a3 cleanup];
}

- (void)_observeSublayer:(id)a3
{
  if ([a3 isAdhocLayer])
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

  [a3 addObserver:self forKeyPath:v5 options:0 context:0];
}

- (void)_unobserveSublayer:(id)a3
{
  if (([a3 isScheduledForDestruction] & 1) == 0)
  {
    if ([a3 isAdhocLayer])
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

    [a3 removeObserver:self forKeyPath:v5];
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

- (void)_renderAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  HIDWORD(v11) = 0;
  v27 = xmmword_163650;
  mBackgroundColor = self->mBackgroundColor;
  if (self->mBackgroundColor[3] >= 0.0)
  {
    *&v5 = self->mBackgroundColor[1];
    *&v6 = self->mBackgroundColor[2];
    [a4 setBackColorRed:&v27 green:COERCE_DOUBLE(*mBackgroundColor) blue:v5 alpha:v6 saveTo:?];
  }

  if (!self->super.mSuperlayer || self->super.mRenderingState->var17 && [(MRLayerParallelizer *)self isOpaque]&& !self->super.mRenderingState->var19)
  {
    LODWORD(v11) = 1.0;
    LODWORD(v5) = 1.0;
    LODWORD(v6) = 1.0;
    LODWORD(v7) = 1.0;
    [a4 setForeColorRed:0 green:v11 blue:v5 alpha:v6 saveTo:v7];
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

      [a4 setBackColorRed:&v27 green:0.0 blue:0.0 alpha:0.0 saveTo:v14];
    }

    if (![a4 dimensionalMode] || objc_msgSend(a4, "dimensionalMode") == 1 || objc_msgSend(a4, "dimensionalMode") == 3)
    {
      [a4 clear:3];
    }
  }

  else if (![(MRLayerParallelizer *)self _isMadeOpaqueBySublayers]&& mBackgroundColor[3] > 0.0)
  {
    v13 = [objc_msgSend(a4 "imageManager")];
    [v13 setLabel:@"Marimba Parallelizer Background"];
    [v13 setClampMode:2];
    if (mBackgroundColor[3] >= 1.0)
    {
      [a4 setShader:@"PlainTexture"];
      [MRCroppingSprite renderImage:v13 inContext:a4 atPosition:CGPointZero.x andSize:CGPointZero.y zRotation:2.0, 2.0, 0.0];
      [a4 unsetShader];
    }

    else
    {
      [a4 blend:3];
      [a4 setShader:@"PlainTexture"];
      [MRCroppingSprite renderImage:v13 inContext:a4 atPosition:CGPointZero.x andSize:CGPointZero.y zRotation:2.0, 2.0, 0.0];
      [a4 unsetShader];
      [a4 blend:0];
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
          [v21 renderAtTime:a4 inContext:a5 withArguments:?];
        }
      }

      v18 = [(NSMutableArray *)mSublayers countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

  LODWORD(v17) = HIDWORD(v27);
  if (*(&v27 + 3) >= 0.0)
  {
    [a4 restoreBackColor:{&v27, v17}];
  }
}

- (id)_retainedByUserRenderedImageAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
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
    v31 = a4;
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
            a4 = v31;
            if (!v16)
            {
              goto LABEL_27;
            }

LABEL_24:
            if (mBackgroundColor[3] < 0.0)
            {
              if (self->super.mRenderingState->var19)
              {
                mBackgroundColor = [a4 backColor];
              }

              else
              {
                mBackgroundColor = 0;
              }
            }

            v36[0] = 0;
            v36[1] = 0;
            *&self->super.mRenderingState->var17 = 257;
            v23 = [a4 beginLocalContextWithSize:mBackgroundColor backgroundColor:v36 state:{self->super.mPixelSize.width, self->super.mPixelSize.height}];
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
                    [v29 renderAtTime:v23 inContext:a5 withArguments:?];
                  }
                }

                v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v32 objects:v41 count:16];
              }

              while (v26);
            }

            return [a4 retainedByUserImageByEndingLocalContext:v23 andRestoreState:v36];
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

    a4 = v31;
    if (v13)
    {
      v20 = [v13 renderingState];
      v20[244] = self->super.mRenderingState->var19;
      [objc_msgSend(v13 "clock")];
      v21 = [v13 retainedByUserRenderedImageAtTime:v31 inContext:a5 withArguments:?];
      v20[244] = 0;
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
      mBackgroundColor = [a4 backColor];
    }

    else
    {
      mBackgroundColor = 0;
    }
  }

  v22 = [objc_msgSend(a4 "imageManager")];
  [v22 setLabel:@"Marimba Parallelizer Background"];
  [v22 setClampMode:2];
  return v22;
}

@end