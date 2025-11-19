@interface VUIConfirmationTransitioningDelegate
+ (id)sharedInstance;
- (id)_init;
- (void)confirmationAnimatedTransitioningAnimationDidEnd:(id)a3;
@end

@implementation VUIConfirmationTransitioningDelegate

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VUIConfirmationTransitioningDelegate_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (void)confirmationAnimatedTransitioningAnimationDidEnd:(id)a3
{
  v4 = a3;
  if (self->_presentTransition == v4)
  {
    v9 = v4;
    v7 = [(VUIConfirmationTransitioningDelegate *)self presentedHandlerBlock];

    v4 = v9;
    if (!v7)
    {
      goto LABEL_8;
    }

    v6 = [(VUIConfirmationTransitioningDelegate *)self presentedHandlerBlock];
    goto LABEL_7;
  }

  if (self->_dismissTransition == v4)
  {
    v9 = v4;
    v5 = [(VUIConfirmationTransitioningDelegate *)self dismissedHandlerBlock];

    v4 = v9;
    if (v5)
    {
      v6 = [(VUIConfirmationTransitioningDelegate *)self dismissedHandlerBlock];
LABEL_7:
      v8 = v6;
      (*(v6 + 16))();

      v4 = v9;
    }
  }

LABEL_8:
}

@end