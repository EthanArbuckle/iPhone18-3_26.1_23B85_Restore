@interface SBIconPrefetchAssertion
- (BOOL)consumeContentLayerIfMatchesImageInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 imageOptions:(unint64_t)a5 consumptionHandler:(id)a6;
- (BOOL)matchesImageInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 imageOptions:(unint64_t)a5;
- (BOOL)takeIconLayerFromPrefetchAssertionIfDesired:(id)a3;
- (BOOL)takeIconLayerIfDesired:(id)a3;
- (BOOL)wantsReusedContentLayerWithImageInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 imageOptions:(unint64_t)a5 imageGeneration:(unint64_t)a6;
- (NSString)description;
- (SBIcon)icon;
- (SBIconPrefetchAssertion)initWithIcon:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 imageAppearance:(id)a5 priority:(int64_t)a6 imageOptions:(unint64_t)a7 reason:(id)a8 prefetchBehavior:(int64_t)a9;
- (unint64_t)priorityForProvidingContentLayerIfMatchesImageInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 imageOptions:(unint64_t)a5;
- (void)addObserver:(id)a3;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)cancelDelayTimer;
- (void)clearContentLayer;
- (void)dealloc;
- (void)handleConsumedContentLayer;
- (void)handleRegeneratedContentLayer:(id)a3 imageGeneration:(unint64_t)a4 traitCollection:(id)a5;
- (void)invalidate;
- (void)regenerateContentLayer;
- (void)startDelayTimerIfAppropriate;
@end

@implementation SBIconPrefetchAssertion

- (SBIcon)icon
{
  WeakRetained = objc_loadWeakRetained(&self->_icon);

  return WeakRetained;
}

- (void)invalidate
{
  if (![(SBIconPrefetchAssertion *)self isInvalidated])
  {
    [(SBIconPrefetchAssertion *)self setInvalidated:1];
    v3 = [(SBIconPrefetchAssertion *)self icon];
    [v3 prefetchAssertionDidInvalidate:self];
    [(SBIconPrefetchAssertion *)self clearContentLayer];
    [(SBIconPrefetchAssertion *)self cancelDelayTimer];
  }
}

- (void)dealloc
{
  if (![(SBIconPrefetchAssertion *)self isInvalidated])
  {
    NSLog(&cfstr_Sbiconprefetch.isa);
    [(SBIconPrefetchAssertion *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = SBIconPrefetchAssertion;
  [(SBIconPrefetchAssertion *)&v3 dealloc];
}

- (SBIconPrefetchAssertion)initWithIcon:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 imageAppearance:(id)a5 priority:(int64_t)a6 imageOptions:(unint64_t)a7 reason:(id)a8 prefetchBehavior:(int64_t)a9
{
  v15 = a6;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  v21 = v9;
  v23 = a3;
  v24 = a4;
  v25 = a7;
  v33.receiver = self;
  v33.super_class = SBIconPrefetchAssertion;
  v26 = [(SBIconPrefetchAssertion *)&v33 init];
  v27 = v26;
  if (v26)
  {
    objc_storeWeak(&v26->_icon, v23);
    v27->_iconImageInfo.size.width = v21;
    v27->_iconImageInfo.size.height = v20;
    v27->_iconImageInfo.scale = v19;
    v27->_iconImageInfo.continuousCornerRadius = v18;
    v28 = [(SBIconImageInfo *)v24 copy];
    iconImageAppearance = v27->_iconImageAppearance;
    v27->_iconImageAppearance = v28;

    v27->_priority = a5;
    v27->_imageOptions = v15 & 0x11;
    v30 = [v25 copy];
    reason = v27->_reason;
    v27->_reason = v30;

    v27->_prefetchBehavior = a8;
    if ([SBIconPrefetchAssertion wantsInitialIconLayerForBehavior:a8])
    {
      [(SBIconPrefetchAssertion *)v27 regenerateContentLayer];
    }

    else
    {
      v27->_state = 2;
    }
  }

  return v27;
}

- (BOOL)matchesImageInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 imageOptions:(unint64_t)a5
{
  v9 = a4;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v15 = a3;
  [(SBIconPrefetchAssertion *)self iconImageInfo];
  if (v19 == v13 && v16 == v12 && v17 == v11 && v18 == v10)
  {
    v24 = [(SBIconPrefetchAssertion *)self iconImageAppearance];
    if (BSEqualObjects())
    {
      v25 = [(SBIconPrefetchAssertion *)self icon];
      v26 = [v25 imageGeneration];
      v23 = [(SBIconPrefetchAssertion *)self contentGeneration]<= v26 && [(SBIconPrefetchAssertion *)self imageOptions]== (v9 & 0x11);
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (unint64_t)priorityForProvidingContentLayerIfMatchesImageInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 imageOptions:(unint64_t)a5
{
  if (![(SBIconPrefetchAssertion *)self matchesImageInfo:a3 imageAppearance:a4 imageOptions:a5])
  {
    return 0;
  }

  v6 = [(SBIconPrefetchAssertion *)self state];
  if (!v6)
  {
    v8 = [(SBIconPrefetchAssertion *)self postRegenerationConsumptionHandler];

    if (!v8)
    {
      v9 = mach_continuous_time();
      return v9 - [(SBIconPrefetchAssertion *)self regenerationStartTime];
    }

    return 0;
  }

  if (v6 == 1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)consumeContentLayerIfMatchesImageInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 imageOptions:(unint64_t)a5 consumptionHandler:(id)a6
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v17 = a5;
  if (![(SBIconPrefetchAssertion *)self matchesImageInfo:a3 imageAppearance:a4 imageOptions:v15, v14, v13, v12])
  {
    goto LABEL_10;
  }

  if ([(SBIconPrefetchAssertion *)self state])
  {
    v18 = [(SBIconPrefetchAssertion *)self contentLayer];
    v19 = [(SBIconPrefetchAssertion *)self contentGeneration];
    v20 = SBLogIcon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [SBIconPrefetchAssertion consumeContentLayerIfMatchesImageInfo:imageAppearance:imageOptions:consumptionHandler:];
    }

    [(SBIconPrefetchAssertion *)self handleConsumedContentLayer];
    if (v17)
    {
      v17[2](v17, v18, v19);
    }

    goto LABEL_8;
  }

  v22 = [(SBIconPrefetchAssertion *)self postRegenerationConsumptionHandler];

  if (v22)
  {
LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  [(SBIconPrefetchAssertion *)self setPostRegenerationConsumptionHandler:v17];
LABEL_8:
  v21 = 1;
LABEL_11:

  return v21;
}

- (void)handleConsumedContentLayer
{
  v3 = [(SBIconPrefetchAssertion *)self prefetchBehavior];
  if ((v3 - 1) < 2)
  {
    goto LABEL_4;
  }

  if ((v3 - 3) < 2)
  {
    [(SBIconPrefetchAssertion *)self invalidate];
LABEL_4:
    v4 = 2;
LABEL_5:
    [(SBIconPrefetchAssertion *)self clearContentLayer];
LABEL_6:

    [(SBIconPrefetchAssertion *)self setState:v4];
    return;
  }

  if (v3)
  {
    v4 = 0;
    goto LABEL_5;
  }

  [(SBIconPrefetchAssertion *)self clearContentLayer];
  if (![(SBIconPrefetchAssertion *)self state])
  {
    v4 = 0;
    goto LABEL_6;
  }

  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBIconPrefetchAssertion handleConsumedContentLayer];
  }

  [(SBIconPrefetchAssertion *)self regenerateContentLayer];
}

- (void)regenerateContentLayer
{
  v3 = [(SBIconPrefetchAssertion *)self icon];
  if ([objc_opt_class() allowsPrefetch])
  {
    [(SBIconPrefetchAssertion *)self setState:0];
    v4 = [(SBIconPrefetchAssertion *)self iconImageAppearance];
    v5 = [MEMORY[0x1E69DD1B8] sbh_traitCollectionWithIconImageAppearance:v4];
    [(SBIconPrefetchAssertion *)self iconImageInfo];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(SBIconPrefetchAssertion *)self priority];
    v15 = [(SBIconPrefetchAssertion *)self imageOptions];
    [(SBIconPrefetchAssertion *)self setRegenerationStartTime:mach_continuous_time()];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __49__SBIconPrefetchAssertion_regenerateContentLayer__block_invoke;
    v17[3] = &unk_1E8090F38;
    v17[4] = self;
    v18 = v5;
    v16 = v5;
    [v3 loadRealIconContentLayerWithInfo:v16 traitCollection:v15 | 8 options:v14 priority:v17 completionHandler:{v7, v9, v11, v13}];
  }

  else
  {
    [(SBIconPrefetchAssertion *)self invalidate];
  }
}

void __49__SBIconPrefetchAssertion_regenerateContentLayer__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setRegenerationStartTime:0];
  [*(a1 + 32) handleRegeneratedContentLayer:v6 imageGeneration:a3 traitCollection:*(a1 + 40)];
}

- (void)handleRegeneratedContentLayer:(id)a3 imageGeneration:(unint64_t)a4 traitCollection:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(SBIconPrefetchAssertion *)self postRegenerationConsumptionHandler];
  if (v8)
  {
    [(SBIconPrefetchAssertion *)self setPostRegenerationConsumptionHandler:0];
    (v8)[2](v8, v7, a4);
    [(SBIconPrefetchAssertion *)self handleConsumedContentLayer];
  }

  else if ([(SBIconPrefetchAssertion *)self state]!= 1)
  {
    [(SBIconPrefetchAssertion *)self setContentLayer:v7];
    [(SBIconPrefetchAssertion *)self setContentGeneration:a4];
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    [(SBIconPrefetchAssertion *)self setState:v9];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [(NSHashTable *)self->_observers allObjects];
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v15 prefetchedInfoProviderLoadedDidChange:self];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

- (BOOL)wantsReusedContentLayerWithImageInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 imageOptions:(unint64_t)a5 imageGeneration:(unint64_t)a6
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v17 = a3;
  v18 = [(SBIconPrefetchAssertion *)self wantsReusedIconLayers]&& ([(SBIconPrefetchAssertion *)self state]& 0xFFFFFFFFFFFFFFFDLL) == 0 && [(SBIconPrefetchAssertion *)self matchesImageInfo:v17 imageAppearance:a4 imageOptions:v15, v14, v13, v12]&& [(SBIconPrefetchAssertion *)self contentGeneration]<= a5;

  return v18;
}

- (BOOL)takeIconLayerIfDesired:(id)a3
{
  v4 = a3;
  if ([v4 iconContentType] == 2)
  {
    v5 = [v4 iconIdentifier];
    v6 = [(SBIconPrefetchAssertion *)self icon];
    v7 = [v4 iconImageAppearance];
    [v4 iconImageInfo];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [v4 iconImageOptions];
    v17 = [v4 iconContentGeneration];
    if ([(SBIconPrefetchAssertion *)self wantsReusedContentLayerWithImageInfo:v7 imageAppearance:v16 imageOptions:v17 imageGeneration:v9, v11, v13, v15])
    {
      v18 = [v4 iconContentLayer];
      v19 = v18 != 0;
      if (v18)
      {
        [v4 setIconContentLayer:0 generation:0 type:0 animated:0];
        if ([(SBIconPrefetchAssertion *)self state]|| ([(SBIconPrefetchAssertion *)self postRegenerationConsumptionHandler], (v21 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          [(SBIconPrefetchAssertion *)self setContentLayer:v18];
          [(SBIconPrefetchAssertion *)self setContentGeneration:v17];
          [(SBIconPrefetchAssertion *)self setState:1];
          [(SBIconPrefetchAssertion *)self startDelayTimerIfAppropriate];
          v20 = SBLogIcon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            [SBIconPrefetchAssertion takeIconLayerIfDesired:];
          }
        }

        else
        {
          v22 = v21;
          [(SBIconPrefetchAssertion *)self setPostRegenerationConsumptionHandler:0];
          (v22)[2](v22, v18, v17);
        }
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)takeIconLayerFromPrefetchAssertionIfDesired:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    v5 = [v4 iconImageAppearance];
    [v4 iconImageInfo];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [v4 imageOptions];
    v15 = [v4 contentGeneration];
    v16 = [(SBIconPrefetchAssertion *)self wantsReusedContentLayerWithImageInfo:v5 imageAppearance:v14 imageOptions:v15 imageGeneration:v7, v9, v11, v13];
    if (v16)
    {
      v17 = [v4 contentLayer];
      [v4 clearContentLayer];
      if ([(SBIconPrefetchAssertion *)self state]|| ([(SBIconPrefetchAssertion *)self postRegenerationConsumptionHandler], (v19 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        [(SBIconPrefetchAssertion *)self setContentLayer:v17];
        [(SBIconPrefetchAssertion *)self setContentGeneration:v15];
        [(SBIconPrefetchAssertion *)self setState:1];
        [(SBIconPrefetchAssertion *)self startDelayTimerIfAppropriate];
        v18 = SBLogIcon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [SBIconPrefetchAssertion takeIconLayerIfDesired:];
        }
      }

      else
      {
        v20 = v19;
        [(SBIconPrefetchAssertion *)self setPostRegenerationConsumptionHandler:0];
        (v20)[2](v20, v17, v15);
      }
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (void)clearContentLayer
{
  [(SBIconPrefetchAssertion *)self setContentLayer:0];
  [(SBIconPrefetchAssertion *)self setContentGeneration:0];

  [(SBIconPrefetchAssertion *)self setState:2];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)startDelayTimerIfAppropriate
{
  if ([(SBIconPrefetchAssertion *)self prefetchBehavior]== 4)
  {
    [(SBIconPrefetchAssertion *)self cancelDelayTimer];
    v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_delayTimerDidFire_ selector:0 userInfo:0 repeats:5.0];
    [(SBIconPrefetchAssertion *)self setDelayTimer:v3];
  }
}

- (void)cancelDelayTimer
{
  v3 = [(SBIconPrefetchAssertion *)self delayTimer];
  [v3 invalidate];
  [(SBIconPrefetchAssertion *)self setDelayTimer:0];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  [(SBIconPrefetchAssertion *)self appendDescriptionToFormatter:v3];
  v4 = [v3 description];

  return v4;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v16 = a3;
  v4 = [(SBIconPrefetchAssertion *)self state];
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E8090FF0[v4];
  }

  [v16 appendString:v5 withName:@"state"];
  v6 = [(SBIconPrefetchAssertion *)self icon];
  v7 = [v16 appendObject:v6 withName:@"icon"];

  v8 = [(SBIconPrefetchAssertion *)self iconImageAppearance];
  v9 = [v16 appendObject:v8 withName:@"imageAppearance"];

  v10 = SBHStringForIconImageOptions([(SBIconPrefetchAssertion *)self imageOptions]);
  [v16 appendString:v10 withName:@"imageOptions"];

  v11 = SBHStringForIconImageLoadPriority([(SBIconPrefetchAssertion *)self priority]);
  [v16 appendString:v11 withName:@"priority"];

  v12 = [(SBIconPrefetchAssertion *)self reason];
  [v16 appendString:v12 withName:@"reason"];

  v13 = [(SBIconPrefetchAssertion *)self prefetchBehavior];
  if (v13 > 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = off_1E8091008[v13];
  }

  [v16 appendString:v14 withName:@"prefetchBehavior"];
  v15 = [v16 appendBool:-[SBIconPrefetchAssertion isInvalidated](self withName:"isInvalidated") ifEqualTo:{@"isInvalidated", 1}];
}

@end