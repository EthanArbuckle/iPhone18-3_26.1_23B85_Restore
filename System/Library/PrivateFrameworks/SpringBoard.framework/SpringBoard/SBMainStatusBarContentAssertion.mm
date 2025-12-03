@interface SBMainStatusBarContentAssertion
- (SBMainStatusBarContentAssertion)initWithIdentifier:(id)identifier forReason:(id)reason;
- (void)setDateAndTimeVisible:(BOOL)visible;
@end

@implementation SBMainStatusBarContentAssertion

- (SBMainStatusBarContentAssertion)initWithIdentifier:(id)identifier forReason:(id)reason
{
  v8.receiver = self;
  v8.super_class = SBMainStatusBarContentAssertion;
  v4 = [(BSSimpleAssertion *)&v8 initWithIdentifier:identifier forReason:reason invalidationBlock:&__block_literal_global_149_3];
  v5 = v4;
  if (v4)
  {
    v4->_dateAndTimeVisible = 1;
    v4->_animated = 1;
    v4->_duration = 0.3;
    v6 = +[SBMainStatusBarStateProvider sharedInstance];
    [v6 acquireContentAssertion:v5];
  }

  return v5;
}

void __64__SBMainStatusBarContentAssertion_initWithIdentifier_forReason___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v5 = SBSafeCast(v3, v2);

  v4 = +[SBMainStatusBarStateProvider sharedInstance];
  [v4 relinquishContentAssertion:v5];
}

- (void)setDateAndTimeVisible:(BOOL)visible
{
  if (self->_dateAndTimeVisible != visible)
  {
    self->_dateAndTimeVisible = visible;
    v5 = +[SBMainStatusBarStateProvider sharedInstance];
    [v5 didUpdateContentAssertion:self];
  }
}

@end