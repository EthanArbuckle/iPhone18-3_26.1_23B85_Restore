@interface VUIConfirmationTransitioningDelegate
+ (id)sharedInstance;
- (id)_init;
- (void)confirmationAnimatedTransitioningAnimationDidEnd:(id)end;
@end

@implementation VUIConfirmationTransitioningDelegate

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VUIConfirmationTransitioningDelegate_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_25 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_25, block);
  }

  v2 = sharedInstance__sharedInstance_0;

  return v2;
}

void __54__VUIConfirmationTransitioningDelegate_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = sharedInstance__sharedInstance_0;
  sharedInstance__sharedInstance_0 = v1;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = VUIConfirmationTransitioningDelegate;
  v2 = [(VUIConfirmationTransitioningDelegate *)&v8 init];
  if (v2)
  {
    v3 = [[VUIConfirmationAnimatedTransitioning alloc] initWithPresenting:1];
    presentTransition = v2->_presentTransition;
    v2->_presentTransition = v3;

    [(VUIConfirmationAnimatedTransitioning *)v2->_presentTransition setDelegate:v2];
    v5 = [[VUIConfirmationAnimatedTransitioning alloc] initWithPresenting:0];
    dismissTransition = v2->_dismissTransition;
    v2->_dismissTransition = v5;

    [(VUIConfirmationAnimatedTransitioning *)v2->_dismissTransition setDelegate:v2];
  }

  return v2;
}

- (void)confirmationAnimatedTransitioningAnimationDidEnd:(id)end
{
  endCopy = end;
  if (self->_presentTransition == endCopy)
  {
    v9 = endCopy;
    presentedHandlerBlock = [(VUIConfirmationTransitioningDelegate *)self presentedHandlerBlock];

    endCopy = v9;
    if (!presentedHandlerBlock)
    {
      goto LABEL_8;
    }

    presentedHandlerBlock2 = [(VUIConfirmationTransitioningDelegate *)self presentedHandlerBlock];
    goto LABEL_7;
  }

  if (self->_dismissTransition == endCopy)
  {
    v9 = endCopy;
    dismissedHandlerBlock = [(VUIConfirmationTransitioningDelegate *)self dismissedHandlerBlock];

    endCopy = v9;
    if (dismissedHandlerBlock)
    {
      presentedHandlerBlock2 = [(VUIConfirmationTransitioningDelegate *)self dismissedHandlerBlock];
LABEL_7:
      v8 = presentedHandlerBlock2;
      (*(presentedHandlerBlock2 + 16))();

      endCopy = v9;
    }
  }

LABEL_8:
}

@end