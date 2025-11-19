@interface MTFullscreenTransitionTracker
+ (BOOL)isTransitioning;
+ (void)performAfterTransitioning:(id)a3;
- (MTFullscreenTransitionTracker)init;
- (void)didFinishTransition:(id)a3;
@end

@implementation MTFullscreenTransitionTracker

- (MTFullscreenTransitionTracker)init
{
  v6.receiver = self;
  v6.super_class = MTFullscreenTransitionTracker;
  v2 = [(MTFullscreenTransitionTracker *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    [(MTFullscreenTransitionTracker *)v2 setPendingBlocks:v3];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel_willBeginTransition_ name:@"NSWindowWillEnterFullScreenNotification" object:0];
    [v4 addObserver:v2 selector:sel_didFinishTransition_ name:@"NSWindowDidEnterFullScreenNotification" object:0];
    [v4 addObserver:v2 selector:sel_willBeginTransition_ name:@"NSWindowWillExitFullScreenNotification" object:0];
    [v4 addObserver:v2 selector:sel_didFinishTransition_ name:@"NSWindowDidExitFullScreenNotification" object:0];
  }

  return v2;
}

+ (BOOL)isTransitioning
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__MTFullscreenTransitionTracker_isTransitioning__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isTransitioning_onceToken != -1)
  {
    dispatch_once(&isTransitioning_onceToken, block);
  }

  return [tracker isTransitioning];
}

uint64_t __48__MTFullscreenTransitionTracker_isTransitioning__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = tracker;
  tracker = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (void)performAfterTransitioning:(id)a3
{
  if (a3)
  {
    v3 = tracker;
    v4 = a3;
    v6 = [v3 pendingBlocks];
    v5 = _Block_copy(v4);

    [v6 addObject:v5];
  }
}

- (void)didFinishTransition:(id)a3
{
  [tracker setIsTransitioning:0];
  v4 = [(NSMutableArray *)self->_pendingBlocks copy];
  [(NSMutableArray *)self->_pendingBlocks removeAllObjects];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_12];
}

@end