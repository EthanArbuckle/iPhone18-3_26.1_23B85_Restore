@interface SBPIPBehaviorOverrideAssertion
- (SBPIPBehaviorOverrideAssertion)initWithReason:(int64_t)reason identifier:(id)identifier cameraSensorAttributionBundleIdentifier:(id)bundleIdentifier invalidationBlock:(id)block;
- (SBPIPBehaviorOverrideAssertion)initWithReason:(int64_t)reason identifier:(id)identifier invalidationBlock:(id)block;
- (SBPIPBehaviorOverrideAssertion)initWithReason:(int64_t)reason invalidationBlock:(id)block;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (int64_t)behaviorOverrideReason;
@end

@implementation SBPIPBehaviorOverrideAssertion

- (int64_t)behaviorOverrideReason
{
  reason = [(BSSimpleAssertion *)self reason];
  v3 = SBPIPStashStateOverrideReasonForString(reason);

  return v3;
}

- (SBPIPBehaviorOverrideAssertion)initWithReason:(int64_t)reason invalidationBlock:(id)block
{
  blockCopy = block;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [(SBPIPBehaviorOverrideAssertion *)self initWithReason:reason identifier:v8 invalidationBlock:blockCopy];

  return v9;
}

- (SBPIPBehaviorOverrideAssertion)initWithReason:(int64_t)reason identifier:(id)identifier invalidationBlock:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  v10 = SBStringForPIPBehaviorOverrideReason(reason);
  v13.receiver = self;
  v13.super_class = SBPIPBehaviorOverrideAssertion;
  v11 = [(BSSimpleAssertion *)&v13 initWithIdentifier:identifierCopy forReason:v10 queue:MEMORY[0x277D85CD0] invalidationBlock:blockCopy];

  return v11;
}

- (SBPIPBehaviorOverrideAssertion)initWithReason:(int64_t)reason identifier:(id)identifier cameraSensorAttributionBundleIdentifier:(id)bundleIdentifier invalidationBlock:(id)block
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  blockCopy = block;
  if (!reason)
  {
    [SBPIPBehaviorOverrideAssertion initWithReason:a2 identifier:self cameraSensorAttributionBundleIdentifier:? invalidationBlock:?];
  }

  v14 = [(SBPIPBehaviorOverrideAssertion *)self initWithReason:reason identifier:identifierCopy invalidationBlock:blockCopy];
  if (v14)
  {
    v15 = [bundleIdentifierCopy copy];
    cameraSensorAttributionBundleIdentifier = v14->_cameraSensorAttributionBundleIdentifier;
    v14->_cameraSensorAttributionBundleIdentifier = v15;
  }

  return v14;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = SBPIPBehaviorOverrideAssertion;
  v4 = [(BSSimpleAssertion *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  cameraSensorAttributionBundleIdentifier = [(SBPIPBehaviorOverrideAssertion *)self cameraSensorAttributionBundleIdentifier];
  [v4 appendString:cameraSensorAttributionBundleIdentifier withName:@"camera sensor bundle identifier" skipIfEmpty:1];

  return v4;
}

- (void)initWithReason:(uint64_t)a1 identifier:(uint64_t)a2 cameraSensorAttributionBundleIdentifier:invalidationBlock:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPIPControllerOverrideAssertions.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"reason != SBPIPBehaviorOverrideReasonNone"}];
}

@end