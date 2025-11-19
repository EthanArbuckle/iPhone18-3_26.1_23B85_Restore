@interface SBHomeScreenBackdropViewBase
- (BOOL)isOpaque;
- (SBHomeScreenBackdropViewBase)initWithFrame:(CGRect)a3;
- (SBHomeScreenBackdropViewBaseDelegate)delegate;
- (void)beginRequiringBackdropViewForReason:(id)a3;
- (void)beginRequiringLiveBackdropViewForReason:(id)a3;
- (void)endRequiringBackdropViewForReason:(id)a3;
- (void)endRequiringLiveBackdropViewForReason:(id)a3;
- (void)setBlurProgress:(double)a3 behaviorMode:(int64_t)a4 completion:(id)a5;
@end

@implementation SBHomeScreenBackdropViewBase

- (SBHomeScreenBackdropViewBase)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SBHomeScreenBackdropViewBase;
  v3 = [(SBHomeScreenBackdropViewBase *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[SBAppSwitcherDomain rootSettings];
    v5 = [v4 animationSettings];
    animationSettings = v3->_animationSettings;
    v3->_animationSettings = v5;
  }

  return v3;
}

- (void)beginRequiringBackdropViewForReason:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4)
  {
    [SBHomeScreenBackdropViewBase beginRequiringBackdropViewForReason:];
    v4 = 0;
  }

  backdropViewRequiringReasons = self->_backdropViewRequiringReasons;
  if (!backdropViewRequiringReasons)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_backdropViewRequiringReasons;
    self->_backdropViewRequiringReasons = v6;

    v4 = v8;
    backdropViewRequiringReasons = self->_backdropViewRequiringReasons;
  }

  [(NSMutableSet *)backdropViewRequiringReasons addObject:v4];
}

- (void)beginRequiringLiveBackdropViewForReason:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4)
  {
    [SBHomeScreenBackdropViewBase beginRequiringLiveBackdropViewForReason:];
    v4 = 0;
  }

  liveBackdropViewRequiringReasons = self->_liveBackdropViewRequiringReasons;
  if (!liveBackdropViewRequiringReasons)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_liveBackdropViewRequiringReasons;
    self->_liveBackdropViewRequiringReasons = v6;

    v4 = v8;
    liveBackdropViewRequiringReasons = self->_liveBackdropViewRequiringReasons;
  }

  [(NSMutableSet *)liveBackdropViewRequiringReasons addObject:v4];
}

- (void)endRequiringBackdropViewForReason:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [SBHomeScreenBackdropViewBase endRequiringBackdropViewForReason:];
    v4 = 0;
  }

  [(NSMutableSet *)self->_backdropViewRequiringReasons removeObject:v4];
}

- (void)endRequiringLiveBackdropViewForReason:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [SBHomeScreenBackdropViewBase endRequiringLiveBackdropViewForReason:];
    v4 = 0;
  }

  [(NSMutableSet *)self->_liveBackdropViewRequiringReasons removeObject:v4];
}

- (SBHomeScreenBackdropViewBaseDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setBlurProgress:(double)a3 behaviorMode:(int64_t)a4 completion:(id)a5
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