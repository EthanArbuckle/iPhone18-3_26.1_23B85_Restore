@interface SBPIPBehaviorOverrideAssertion
- (SBPIPBehaviorOverrideAssertion)initWithReason:(int64_t)a3 identifier:(id)a4 cameraSensorAttributionBundleIdentifier:(id)a5 invalidationBlock:(id)a6;
- (SBPIPBehaviorOverrideAssertion)initWithReason:(int64_t)a3 identifier:(id)a4 invalidationBlock:(id)a5;
- (SBPIPBehaviorOverrideAssertion)initWithReason:(int64_t)a3 invalidationBlock:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (int64_t)behaviorOverrideReason;
@end

@implementation SBPIPBehaviorOverrideAssertion

- (int64_t)behaviorOverrideReason
{
  v2 = [(BSSimpleAssertion *)self reason];
  v3 = SBPIPStashStateOverrideReasonForString(v2);

  return v3;
}

- (SBPIPBehaviorOverrideAssertion)initWithReason:(int64_t)a3 invalidationBlock:(id)a4
{
  v6 = a4;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [(SBPIPBehaviorOverrideAssertion *)self initWithReason:a3 identifier:v8 invalidationBlock:v6];

  return v9;
}

- (SBPIPBehaviorOverrideAssertion)initWithReason:(int64_t)a3 identifier:(id)a4 invalidationBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = SBStringForPIPBehaviorOverrideReason(a3);
  v13.receiver = self;
  v13.super_class = SBPIPBehaviorOverrideAssertion;
  v11 = [(BSSimpleAssertion *)&v13 initWithIdentifier:v9 forReason:v10 queue:MEMORY[0x277D85CD0] invalidationBlock:v8];

  return v11;
}

- (SBPIPBehaviorOverrideAssertion)initWithReason:(int64_t)a3 identifier:(id)a4 cameraSensorAttributionBundleIdentifier:(id)a5 invalidationBlock:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    [SBPIPBehaviorOverrideAssertion initWithReason:a2 identifier:self cameraSensorAttributionBundleIdentifier:? invalidationBlock:?];
  }

  v14 = [(SBPIPBehaviorOverrideAssertion *)self initWithReason:a3 identifier:v11 invalidationBlock:v13];
  if (v14)
  {
    v15 = [v12 copy];
    cameraSensorAttributionBundleIdentifier = v14->_cameraSensorAttributionBundleIdentifier;
    v14->_cameraSensorAttributionBundleIdentifier = v15;
  }

  return v14;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBPIPBehaviorOverrideAssertion;
  v4 = [(BSSimpleAssertion *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [(SBPIPBehaviorOverrideAssertion *)self cameraSensorAttributionBundleIdentifier];
  [v4 appendString:v5 withName:@"camera sensor bundle identifier" skipIfEmpty:1];

  return v4;
}

- (void)initWithReason:(uint64_t)a1 identifier:(uint64_t)a2 cameraSensorAttributionBundleIdentifier:invalidationBlock:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPIPControllerOverrideAssertions.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"reason != SBPIPBehaviorOverrideReasonNone"}];
}

@end