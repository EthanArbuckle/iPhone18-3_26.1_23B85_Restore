@interface TSDCanvasAnimation
- (NSString)beginTimeMode;
- (SEL)didStopSelector;
- (SEL)willStartSelector;
- (TSDCanvasAnimation)initWithAnimationID:(id)d interactiveCanvasController:(id)controller context:(void *)context;
- (double)beginTime;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)setAnimation:(id)animation forLayer:(id)layer forKey:(id)key;
- (void)setDidStopSelector:(SEL)selector;
- (void)setWillStartSelector:(SEL)selector;
@end

@implementation TSDCanvasAnimation

- (TSDCanvasAnimation)initWithAnimationID:(id)d interactiveCanvasController:(id)controller context:(void *)context
{
  v10.receiver = self;
  v10.super_class = TSDCanvasAnimation;
  v8 = [(TSDCanvasAnimation *)&v10 init];
  if (v8)
  {
    v8->_animationID = d;
    v8->_context = context;
    v8->_duration = 0.2;
    v8->_timingFunction = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    v8->_allAnimationsFinishedBeforeStopping = 1;
    v8->_interactiveCanvasController = controller;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDCanvasAnimation;
  [(TSDCanvasAnimation *)&v3 dealloc];
}

- (double)beginTime
{
  startDate = self->_startDate;
  if (startDate)
  {
    [(NSDate *)startDate timeIntervalSinceReferenceDate];
  }

  else
  {
    v4 = 0.0;
  }

  return v4 + self->_delay;
}

- (NSString)beginTimeMode
{
  if (self->_startDate)
  {
    v2 = MEMORY[0x277CDA048];
  }

  else
  {
    v2 = MEMORY[0x277CDA080];
  }

  return *v2;
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  if (self->_firstAnimationDidStart)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasAnimation actionForLayer:forKey:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasAnimation.m"), 116, @"shouldn't be adding animations after we've started showing them"}];
  }

  v9 = [-[TSUNoCopyDictionary objectForKeyedSubscript:](self->_animationDictionariesForLayers objectForKeyedSubscript:{layer), "objectForKeyedSubscript:", key}];
  filterBlock = self->_filterBlock;
  if (filterBlock)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v9 = filterBlock[2](filterBlock, self, layer, key);
  }

  if (v9)
  {
    goto LABEL_35;
  }

  if (layer && self->_useRepFiltering)
  {
    layerCopy = layer;
    while (1)
    {
      v13 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController repForLayer:layerCopy];
      if (v13)
      {
        break;
      }

      v13 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController repForContainerLayer:layerCopy];
      if (v13)
      {
        break;
      }

      layerCopy = [layerCopy superlayer];
      if (!layerCopy)
      {
        goto LABEL_34;
      }
    }

    v14 = v13;
    parentRep = v13;
    while (1)
    {
      v16 = TSUProtocolCast();
      v17 = v16;
      if (v16)
      {
        v18 = parentRep == v14;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        v9 = [v16 animationForRepLayer:layer withEvent:key];
      }

      else
      {
        v9 = 0;
      }

      if (v17)
      {
        v19 = v9 == 0;
      }

      else
      {
        v19 = 0;
      }

      if (!v19)
      {
        goto LABEL_32;
      }

      if (parentRep != v14 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        break;
      }

LABEL_33:
      parentRep = [parentRep parentRep];
      if (!parentRep)
      {
        goto LABEL_34;
      }
    }

    v9 = [v17 animationForChildRep:v14 layer:layer withEvent:key];
LABEL_32:
    if (v9)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_34:
  v9 = [MEMORY[0x277CD9E10] animationWithKeyPath:key];
  [v9 setDuration:self->_duration];
  [(TSDCanvasAnimation *)self beginTime];
  [v9 setBeginTime:?];
  [v9 setBeginTimeMode:{-[TSDCanvasAnimation beginTimeMode](self, "beginTimeMode")}];
  [v9 setTimingFunction:self->_timingFunction];
  *&v20 = self->_repeatCount;
  [v9 setRepeatCount:v20];
  [v9 setAutoreverses:self->_repeatAutoreverses];
  [v9 setFillMode:*MEMORY[0x277CDA230]];
  if (v9)
  {
LABEL_35:
    objc_opt_class();
    if (TSUDynamicCast())
    {
      [v9 setDelegate:self];
      ++self->_outstandingAnimationCount;
    }
  }

  return v9;
}

- (void)setAnimation:(id)animation forLayer:(id)layer forKey:(id)key
{
  animationDictionariesForLayers = self->_animationDictionariesForLayers;
  if (!animationDictionariesForLayers)
  {
    animationDictionariesForLayers = objc_alloc_init(MEMORY[0x277D6C320]);
    self->_animationDictionariesForLayers = animationDictionariesForLayers;
  }

  dictionary = [(TSUNoCopyDictionary *)animationDictionariesForLayers objectForKeyedSubscript:layer];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(TSUNoCopyDictionary *)self->_animationDictionariesForLayers setObject:dictionary forUncopiedKey:layer];
  }

  [dictionary setObject:animation forKeyedSubscript:key];
}

- (void)animationDidStart:(id)start
{
  if (!self->_outstandingAnimationCount)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasAnimation animationDidStart:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasAnimation.m"), 219, @"unexpected animation started"}];
  }

  if (!self->_firstAnimationDidStart)
  {
    willStartSelector = self->_willStartSelector;
    self->_firstAnimationDidStart = 1;
    if (willStartSelector)
    {
      context = self->_context;
      delegate = self->_delegate;
      animationID = self->_animationID;

      [delegate willStartSelector];
    }
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (!self->_outstandingAnimationCount)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasAnimation animationDidStop:finished:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasAnimation.m"), 234, @"unexpected animation stopped"}];
  }

  if (!self->_firstAnimationDidStart)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasAnimation animationDidStop:finished:]"];
    [currentHandler2 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasAnimation.m"), 235, @"animation stopped before starting"}];
  }

  outstandingAnimationCount = self->_outstandingAnimationCount;
  v11 = self->_allAnimationsFinishedBeforeStopping || finished;
  self->_allAnimationsFinishedBeforeStopping = v11;
  self->_outstandingAnimationCount = --outstandingAnimationCount;
  if (!outstandingAnimationCount)
  {
    didStopSelector = self->_didStopSelector;
    if (didStopSelector)
    {
      [self->_delegate didStopSelector];
    }

    completionBlock = self->_completionBlock;
    if (completionBlock)
    {
      v14 = *(completionBlock + 2);

      v14();
    }
  }
}

- (SEL)willStartSelector
{
  if (self->_willStartSelector)
  {
    return self->_willStartSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setWillStartSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_willStartSelector = selectorCopy;
}

- (SEL)didStopSelector
{
  if (self->_didStopSelector)
  {
    return self->_didStopSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setDidStopSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_didStopSelector = selectorCopy;
}

@end