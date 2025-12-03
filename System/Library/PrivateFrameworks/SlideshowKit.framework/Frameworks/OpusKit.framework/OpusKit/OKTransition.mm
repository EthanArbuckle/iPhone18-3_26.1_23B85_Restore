@interface OKTransition
+ (id)supportedSettings;
- (CGPoint)currentLocation;
- (CGPoint)resolveLocation:(CGPoint)result;
- (OKTransition)init;
- (OKTransition)initWithSettings:(id)settings;
- (void)animateTransitionWithContext:(id)context;
- (void)dealloc;
- (void)endInteractiveTransitionWithContext:(id)context transitionCompleted:(BOOL)completed;
- (void)updateInteractiveTransitionWithContext:(id)context andProgress:(double)progress;
@end

@implementation OKTransition

- (OKTransition)init
{
  v5.receiver = self;
  v5.super_class = OKTransition;
  v2 = [(OKTransition *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_duration = 0.5;
    [objc_msgSend(+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
  }

  return v3;
}

- (OKTransition)initWithSettings:(id)settings
{
  v4 = [(OKTransition *)self init];
  if (v4)
  {
    v5 = [settings objectForKey:@"duration"];
    if (v5)
    {
      [v5 doubleValue];
      v4->_duration = v6;
    }

    v7 = [settings objectForKey:@"reversed"];
    if (v7)
    {
      v4->_reversed = [v7 BOOLValue];
    }
  }

  return v4;
}

- (void)dealloc
{
  [objc_msgSend(+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
  v3.receiver = self;
  v3.super_class = OKTransition;
  [(OKTransition *)&v3 dealloc];
}

+ (id)supportedSettings
{
  v9[2] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8[0] = @"duration";
  v6[0] = @"type";
  v6[1] = @"default";
  v7[0] = &unk_287AF1958;
  v7[1] = &unk_287AF23F8;
  v9[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v8[1] = @"reversed";
  v4[0] = @"type";
  v4[1] = @"default";
  v5[0] = &unk_287AF1970;
  v5[1] = MEMORY[0x277CBEC28];
  v9[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  [dictionary addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, v8, 2)}];
  return dictionary;
}

- (CGPoint)resolveLocation:(CGPoint)result
{
  if (self->_currentLocation.x != *MEMORY[0x277CBF348] || self->_currentLocation.y != *(MEMORY[0x277CBF348] + 8))
  {
    return self->_currentLocation;
  }

  return result;
}

- (void)updateInteractiveTransitionWithContext:(id)context andProgress:(double)progress
{
  if (progress < 0.0)
  {
    progress = 0.0;
  }

  if (progress > 1.0)
  {
    progress = 1.0;
  }

  [context updateInteractiveTransition:progress];
}

- (void)endInteractiveTransitionWithContext:(id)context transitionCompleted:(BOOL)completed
{
  v4 = self->_animationCompletionBarrier - 1;
  self->_animationCompletionBarrier = v4;
  if (!v4)
  {
    [context completeTransition:completed];
  }
}

- (void)animateTransitionWithContext:(id)context
{
  v5 = 0.25;
  if (([context isRubberBanding] & 1) == 0)
  {
    [context progressVelocity];
    v7 = v6;
    wasCancelled = [context wasCancelled];
    v9 = -v7;
    if (!wasCancelled)
    {
      v9 = v7;
    }

    if (v9 > 3.0)
    {
      v9 = 3.0;
    }

    v10 = 1.0;
    if (v9 >= 1.0 / self->_duration)
    {
      v11 = v9;
    }

    else
    {
      v11 = 1.0 / self->_duration;
    }

    if ([context initiallyInteractive])
    {
      [context progress];
      v10 = v12;
      if (![context wasCancelled])
      {
        v10 = 1.0 - v10;
      }
    }

    v5 = fmax(v10 / v11, 0.02);
  }

  ++self->_animationCompletionBarrier;
  containerView = [context containerView];
  v14 = [objc_msgSend(context "fromViewController")];
  v15 = [objc_msgSend(context "toViewController")];
  initiallyInteractive = [context initiallyInteractive];
  doEaseIn = [context doEaseIn];
  doEaseOut = [context doEaseOut];
  isCompleting = [context isCompleting];
  wasCancelled2 = [context wasCancelled];
  [context progress];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __45__OKTransition_animateTransitionWithContext___block_invoke;
  v23[3] = &unk_279C90630;
  v23[4] = self;
  v23[5] = context;
  BYTE1(v22) = wasCancelled2;
  LOBYTE(v22) = isCompleting;
  [(OKTransition *)self _transitionInView:containerView fromSubview:v14 toSubview:v15 wasInteractive:initiallyInteractive duration:doEaseIn doEaseIn:doEaseOut doEaseOut:v5 isCompleting:v21 wasCancelled:v22 fromProgress:v23 completionHandler:?];
}

uint64_t __45__OKTransition_animateTransitionWithContext___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = *(v2 + 8) - 1;
  *(v2 + 8) = v3;
  if (!v3)
  {
    return [*(result + 40) completeTransition:a2];
  }

  return result;
}

- (CGPoint)currentLocation
{
  objc_copyStruct(v4, &self->_currentLocation, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end