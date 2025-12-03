@interface SBHomeScreenBackdropViewBase
- (BOOL)isOpaque;
- (SBHomeScreenBackdropViewBase)initWithFrame:(CGRect)frame;
- (SBHomeScreenBackdropViewBaseDelegate)delegate;
- (void)beginRequiringBackdropViewForReason:(id)reason;
- (void)beginRequiringLiveBackdropViewForReason:(id)reason;
- (void)endRequiringBackdropViewForReason:(id)reason;
- (void)endRequiringLiveBackdropViewForReason:(id)reason;
- (void)setBlurProgress:(double)progress behaviorMode:(int64_t)mode completion:(id)completion;
@end

@implementation SBHomeScreenBackdropViewBase

- (SBHomeScreenBackdropViewBase)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SBHomeScreenBackdropViewBase;
  v3 = [(SBHomeScreenBackdropViewBase *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[SBAppSwitcherDomain rootSettings];
    animationSettings = [v4 animationSettings];
    animationSettings = v3->_animationSettings;
    v3->_animationSettings = animationSettings;
  }

  return v3;
}

- (void)beginRequiringBackdropViewForReason:(id)reason
{
  reasonCopy = reason;
  v8 = reasonCopy;
  if (!reasonCopy)
  {
    [SBHomeScreenBackdropViewBase beginRequiringBackdropViewForReason:];
    reasonCopy = 0;
  }

  backdropViewRequiringReasons = self->_backdropViewRequiringReasons;
  if (!backdropViewRequiringReasons)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_backdropViewRequiringReasons;
    self->_backdropViewRequiringReasons = v6;

    reasonCopy = v8;
    backdropViewRequiringReasons = self->_backdropViewRequiringReasons;
  }

  [(NSMutableSet *)backdropViewRequiringReasons addObject:reasonCopy];
}

- (void)beginRequiringLiveBackdropViewForReason:(id)reason
{
  reasonCopy = reason;
  v8 = reasonCopy;
  if (!reasonCopy)
  {
    [SBHomeScreenBackdropViewBase beginRequiringLiveBackdropViewForReason:];
    reasonCopy = 0;
  }

  liveBackdropViewRequiringReasons = self->_liveBackdropViewRequiringReasons;
  if (!liveBackdropViewRequiringReasons)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_liveBackdropViewRequiringReasons;
    self->_liveBackdropViewRequiringReasons = v6;

    reasonCopy = v8;
    liveBackdropViewRequiringReasons = self->_liveBackdropViewRequiringReasons;
  }

  [(NSMutableSet *)liveBackdropViewRequiringReasons addObject:reasonCopy];
}

- (void)endRequiringBackdropViewForReason:(id)reason
{
  reasonCopy = reason;
  v5 = reasonCopy;
  if (!reasonCopy)
  {
    [SBHomeScreenBackdropViewBase endRequiringBackdropViewForReason:];
    reasonCopy = 0;
  }

  [(NSMutableSet *)self->_backdropViewRequiringReasons removeObject:reasonCopy];
}

- (void)endRequiringLiveBackdropViewForReason:(id)reason
{
  reasonCopy = reason;
  v5 = reasonCopy;
  if (!reasonCopy)
  {
    [SBHomeScreenBackdropViewBase endRequiringLiveBackdropViewForReason:];
    reasonCopy = 0;
  }

  [(NSMutableSet *)self->_liveBackdropViewRequiringReasons removeObject:reasonCopy];
}

- (SBHomeScreenBackdropViewBaseDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setBlurProgress:(double)progress behaviorMode:(int64_t)mode completion:(id)completion
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (BOOL)isOpaque
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)beginRequiringBackdropViewForReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)beginRequiringLiveBackdropViewForReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)endRequiringBackdropViewForReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)endRequiringLiveBackdropViewForReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

@end