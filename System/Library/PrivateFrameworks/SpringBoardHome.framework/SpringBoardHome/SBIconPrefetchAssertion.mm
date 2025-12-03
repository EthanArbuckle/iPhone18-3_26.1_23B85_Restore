@interface SBIconPrefetchAssertion
- (BOOL)consumeContentLayerIfMatchesImageInfo:(SBIconImageInfo *)info imageAppearance:(id)appearance imageOptions:(unint64_t)options consumptionHandler:(id)handler;
- (BOOL)matchesImageInfo:(SBIconImageInfo *)info imageAppearance:(id)appearance imageOptions:(unint64_t)options;
- (BOOL)takeIconLayerFromPrefetchAssertionIfDesired:(id)desired;
- (BOOL)takeIconLayerIfDesired:(id)desired;
- (BOOL)wantsReusedContentLayerWithImageInfo:(SBIconImageInfo *)info imageAppearance:(id)appearance imageOptions:(unint64_t)options imageGeneration:(unint64_t)generation;
- (NSString)description;
- (SBIcon)icon;
- (SBIconPrefetchAssertion)initWithIcon:(id)icon iconImageInfo:(SBIconImageInfo *)info imageAppearance:(id)appearance priority:(int64_t)priority imageOptions:(unint64_t)options reason:(id)reason prefetchBehavior:(int64_t)behavior;
- (unint64_t)priorityForProvidingContentLayerIfMatchesImageInfo:(SBIconImageInfo *)info imageAppearance:(id)appearance imageOptions:(unint64_t)options;
- (void)addObserver:(id)observer;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)cancelDelayTimer;
- (void)clearContentLayer;
- (void)dealloc;
- (void)handleConsumedContentLayer;
- (void)handleRegeneratedContentLayer:(id)layer imageGeneration:(unint64_t)generation traitCollection:(id)collection;
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
    icon = [(SBIconPrefetchAssertion *)self icon];
    [icon prefetchAssertionDidInvalidate:self];
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

- (SBIconPrefetchAssertion)initWithIcon:(id)icon iconImageInfo:(SBIconImageInfo *)info imageAppearance:(id)appearance priority:(int64_t)priority imageOptions:(unint64_t)options reason:(id)reason prefetchBehavior:(int64_t)behavior
{
  priorityCopy = priority;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  v21 = v9;
  iconCopy = icon;
  infoCopy = info;
  optionsCopy = options;
  v33.receiver = self;
  v33.super_class = SBIconPrefetchAssertion;
  v26 = [(SBIconPrefetchAssertion *)&v33 init];
  v27 = v26;
  if (v26)
  {
    objc_storeWeak(&v26->_icon, iconCopy);
    v27->_iconImageInfo.size.width = v21;
    v27->_iconImageInfo.size.height = v20;
    v27->_iconImageInfo.scale = v19;
    v27->_iconImageInfo.continuousCornerRadius = v18;
    v28 = [(SBIconImageInfo *)infoCopy copy];
    iconImageAppearance = v27->_iconImageAppearance;
    v27->_iconImageAppearance = v28;

    v27->_priority = appearance;
    v27->_imageOptions = priorityCopy & 0x11;
    v30 = [optionsCopy copy];
    reason = v27->_reason;
    v27->_reason = v30;

    v27->_prefetchBehavior = reason;
    if ([SBIconPrefetchAssertion wantsInitialIconLayerForBehavior:reason])
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

- (BOOL)matchesImageInfo:(SBIconImageInfo *)info imageAppearance:(id)appearance imageOptions:(unint64_t)options
{
  appearanceCopy = appearance;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  infoCopy = info;
  [(SBIconPrefetchAssertion *)self iconImageInfo];
  if (v19 == v13 && v16 == v12 && v17 == v11 && v18 == v10)
  {
    iconImageAppearance = [(SBIconPrefetchAssertion *)self iconImageAppearance];
    if (BSEqualObjects())
    {
      icon = [(SBIconPrefetchAssertion *)self icon];
      imageGeneration = [icon imageGeneration];
      v23 = [(SBIconPrefetchAssertion *)self contentGeneration]<= imageGeneration && [(SBIconPrefetchAssertion *)self imageOptions]== (appearanceCopy & 0x11);
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

- (unint64_t)priorityForProvidingContentLayerIfMatchesImageInfo:(SBIconImageInfo *)info imageAppearance:(id)appearance imageOptions:(unint64_t)options
{
  if (![(SBIconPrefetchAssertion *)self matchesImageInfo:info imageAppearance:appearance imageOptions:options])
  {
    return 0;
  }

  state = [(SBIconPrefetchAssertion *)self state];
  if (!state)
  {
    postRegenerationConsumptionHandler = [(SBIconPrefetchAssertion *)self postRegenerationConsumptionHandler];

    if (!postRegenerationConsumptionHandler)
    {
      v9 = mach_continuous_time();
      return v9 - [(SBIconPrefetchAssertion *)self regenerationStartTime];
    }

    return 0;
  }

  if (state == 1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)consumeContentLayerIfMatchesImageInfo:(SBIconImageInfo *)info imageAppearance:(id)appearance imageOptions:(unint64_t)options consumptionHandler:(id)handler
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  optionsCopy = options;
  if (![(SBIconPrefetchAssertion *)self matchesImageInfo:info imageAppearance:appearance imageOptions:v15, v14, v13, v12])
  {
    goto LABEL_10;
  }

  if ([(SBIconPrefetchAssertion *)self state])
  {
    contentLayer = [(SBIconPrefetchAssertion *)self contentLayer];
    contentGeneration = [(SBIconPrefetchAssertion *)self contentGeneration];
    v20 = SBLogIcon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [SBIconPrefetchAssertion consumeContentLayerIfMatchesImageInfo:imageAppearance:imageOptions:consumptionHandler:];
    }

    [(SBIconPrefetchAssertion *)self handleConsumedContentLayer];
    if (optionsCopy)
    {
      optionsCopy[2](optionsCopy, contentLayer, contentGeneration);
    }

    goto LABEL_8;
  }

  postRegenerationConsumptionHandler = [(SBIconPrefetchAssertion *)self postRegenerationConsumptionHandler];

  if (postRegenerationConsumptionHandler)
  {
LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  [(SBIconPrefetchAssertion *)self setPostRegenerationConsumptionHandler:optionsCopy];
LABEL_8:
  v21 = 1;
LABEL_11:

  return v21;
}

- (void)handleConsumedContentLayer
{
  prefetchBehavior = [(SBIconPrefetchAssertion *)self prefetchBehavior];
  if ((prefetchBehavior - 1) < 2)
  {
    goto LABEL_4;
  }

  if ((prefetchBehavior - 3) < 2)
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

  if (prefetchBehavior)
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
  icon = [(SBIconPrefetchAssertion *)self icon];
  if ([objc_opt_class() allowsPrefetch])
  {
    [(SBIconPrefetchAssertion *)self setState:0];
    iconImageAppearance = [(SBIconPrefetchAssertion *)self iconImageAppearance];
    v5 = [MEMORY[0x1E69DD1B8] sbh_traitCollectionWithIconImageAppearance:iconImageAppearance];
    [(SBIconPrefetchAssertion *)self iconImageInfo];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    priority = [(SBIconPrefetchAssertion *)self priority];
    imageOptions = [(SBIconPrefetchAssertion *)self imageOptions];
    [(SBIconPrefetchAssertion *)self setRegenerationStartTime:mach_continuous_time()];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __49__SBIconPrefetchAssertion_regenerateContentLayer__block_invoke;
    v17[3] = &unk_1E8090F38;
    v17[4] = self;
    v18 = v5;
    v16 = v5;
    [icon loadRealIconContentLayerWithInfo:v16 traitCollection:imageOptions | 8 options:priority priority:v17 completionHandler:{v7, v9, v11, v13}];
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

- (void)handleRegeneratedContentLayer:(id)layer imageGeneration:(unint64_t)generation traitCollection:(id)collection
{
  v21 = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  postRegenerationConsumptionHandler = [(SBIconPrefetchAssertion *)self postRegenerationConsumptionHandler];
  if (postRegenerationConsumptionHandler)
  {
    [(SBIconPrefetchAssertion *)self setPostRegenerationConsumptionHandler:0];
    (postRegenerationConsumptionHandler)[2](postRegenerationConsumptionHandler, layerCopy, generation);
    [(SBIconPrefetchAssertion *)self handleConsumedContentLayer];
  }

  else if ([(SBIconPrefetchAssertion *)self state]!= 1)
  {
    [(SBIconPrefetchAssertion *)self setContentLayer:layerCopy];
    [(SBIconPrefetchAssertion *)self setContentGeneration:generation];
    if (layerCopy)
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
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v11 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v15 prefetchedInfoProviderLoadedDidChange:self];
          }
        }

        v12 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

- (BOOL)wantsReusedContentLayerWithImageInfo:(SBIconImageInfo *)info imageAppearance:(id)appearance imageOptions:(unint64_t)options imageGeneration:(unint64_t)generation
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  infoCopy = info;
  v18 = [(SBIconPrefetchAssertion *)self wantsReusedIconLayers]&& ([(SBIconPrefetchAssertion *)self state]& 0xFFFFFFFFFFFFFFFDLL) == 0 && [(SBIconPrefetchAssertion *)self matchesImageInfo:infoCopy imageAppearance:appearance imageOptions:v15, v14, v13, v12]&& [(SBIconPrefetchAssertion *)self contentGeneration]<= options;

  return v18;
}

- (BOOL)takeIconLayerIfDesired:(id)desired
{
  desiredCopy = desired;
  if ([desiredCopy iconContentType] == 2)
  {
    iconIdentifier = [desiredCopy iconIdentifier];
    icon = [(SBIconPrefetchAssertion *)self icon];
    iconImageAppearance = [desiredCopy iconImageAppearance];
    [desiredCopy iconImageInfo];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    iconImageOptions = [desiredCopy iconImageOptions];
    iconContentGeneration = [desiredCopy iconContentGeneration];
    if ([(SBIconPrefetchAssertion *)self wantsReusedContentLayerWithImageInfo:iconImageAppearance imageAppearance:iconImageOptions imageOptions:iconContentGeneration imageGeneration:v9, v11, v13, v15])
    {
      iconContentLayer = [desiredCopy iconContentLayer];
      v19 = iconContentLayer != 0;
      if (iconContentLayer)
      {
        [desiredCopy setIconContentLayer:0 generation:0 type:0 animated:0];
        if ([(SBIconPrefetchAssertion *)self state]|| ([(SBIconPrefetchAssertion *)self postRegenerationConsumptionHandler], (v21 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          [(SBIconPrefetchAssertion *)self setContentLayer:iconContentLayer];
          [(SBIconPrefetchAssertion *)self setContentGeneration:iconContentGeneration];
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
          (v22)[2](v22, iconContentLayer, iconContentGeneration);
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

- (BOOL)takeIconLayerFromPrefetchAssertionIfDesired:(id)desired
{
  desiredCopy = desired;
  if ([desiredCopy state] == 1)
  {
    iconImageAppearance = [desiredCopy iconImageAppearance];
    [desiredCopy iconImageInfo];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    imageOptions = [desiredCopy imageOptions];
    contentGeneration = [desiredCopy contentGeneration];
    v16 = [(SBIconPrefetchAssertion *)self wantsReusedContentLayerWithImageInfo:iconImageAppearance imageAppearance:imageOptions imageOptions:contentGeneration imageGeneration:v7, v9, v11, v13];
    if (v16)
    {
      contentLayer = [desiredCopy contentLayer];
      [desiredCopy clearContentLayer];
      if ([(SBIconPrefetchAssertion *)self state]|| ([(SBIconPrefetchAssertion *)self postRegenerationConsumptionHandler], (v19 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        [(SBIconPrefetchAssertion *)self setContentLayer:contentLayer];
        [(SBIconPrefetchAssertion *)self setContentGeneration:contentGeneration];
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
        (v20)[2](v20, contentLayer, contentGeneration);
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
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
  delayTimer = [(SBIconPrefetchAssertion *)self delayTimer];
  [delayTimer invalidate];
  [(SBIconPrefetchAssertion *)self setDelayTimer:0];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  [(SBIconPrefetchAssertion *)self appendDescriptionToFormatter:v3];
  v4 = [v3 description];

  return v4;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  state = [(SBIconPrefetchAssertion *)self state];
  if (state > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E8090FF0[state];
  }

  [formatterCopy appendString:v5 withName:@"state"];
  icon = [(SBIconPrefetchAssertion *)self icon];
  v7 = [formatterCopy appendObject:icon withName:@"icon"];

  iconImageAppearance = [(SBIconPrefetchAssertion *)self iconImageAppearance];
  v9 = [formatterCopy appendObject:iconImageAppearance withName:@"imageAppearance"];

  v10 = SBHStringForIconImageOptions([(SBIconPrefetchAssertion *)self imageOptions]);
  [formatterCopy appendString:v10 withName:@"imageOptions"];

  v11 = SBHStringForIconImageLoadPriority([(SBIconPrefetchAssertion *)self priority]);
  [formatterCopy appendString:v11 withName:@"priority"];

  reason = [(SBIconPrefetchAssertion *)self reason];
  [formatterCopy appendString:reason withName:@"reason"];

  prefetchBehavior = [(SBIconPrefetchAssertion *)self prefetchBehavior];
  if (prefetchBehavior > 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = off_1E8091008[prefetchBehavior];
  }

  [formatterCopy appendString:v14 withName:@"prefetchBehavior"];
  v15 = [formatterCopy appendBool:-[SBIconPrefetchAssertion isInvalidated](self withName:"isInvalidated") ifEqualTo:{@"isInvalidated", 1}];
}

@end