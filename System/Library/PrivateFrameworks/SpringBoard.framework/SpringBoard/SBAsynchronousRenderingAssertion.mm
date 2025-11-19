@interface SBAsynchronousRenderingAssertion
- (SBAsynchronousRenderingAssertion)initWithReason:(id)a3 wantsMinificationFilter:(BOOL)a4;
- (void)setWantsMinificationFilter:(BOOL)a3;
@end

@implementation SBAsynchronousRenderingAssertion

- (SBAsynchronousRenderingAssertion)initWithReason:(id)a3 wantsMinificationFilter:(BOOL)a4
{
  v7 = a3;
  if (!v7)
  {
    [SBAsynchronousRenderingAssertion initWithReason:a2 wantsMinificationFilter:self];
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v13.receiver = self;
  v13.super_class = SBAsynchronousRenderingAssertion;
  v10 = [(BSSimpleAssertion *)&v13 initWithIdentifier:v9 forReason:v7 queue:MEMORY[0x277D85CD0] invalidationBlock:&__block_literal_global_139];

  if (v10)
  {
    v10->_wantsMinificationFilter = a4;
    v11 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    [v11 _acquireAssertion:v10];
  }

  return v10;
}

void __75__SBAsynchronousRenderingAssertion_initWithReason_wantsMinificationFilter___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v5 = SBSafeCast(v3, v2);

  v4 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  [v4 _reqlinquishAssertion:v5];
}

- (void)setWantsMinificationFilter:(BOOL)a3
{
  if (self->_wantsMinificationFilter != a3)
  {
    self->_wantsMinificationFilter = a3;
    v5 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    [v5 _updateAssertion:self];
  }
}

- (void)initWithReason:(uint64_t)a1 wantsMinificationFilter:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAsynchronousRenderingAssertion.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"asynchronousRenderingReason != nil"}];
}

@end