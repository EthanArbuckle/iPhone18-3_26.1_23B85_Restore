@interface SBPIPWindowLevelOverrideAssertion
- (SBPIPWindowLevelOverrideAssertion)initWithWindowLevel:(unint64_t)level reason:(int64_t)reason identifier:(id)identifier invalidationBlock:(id)block;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBPIPWindowLevelOverrideAssertion

- (SBPIPWindowLevelOverrideAssertion)initWithWindowLevel:(unint64_t)level reason:(int64_t)reason identifier:(id)identifier invalidationBlock:(id)block
{
  v8.receiver = self;
  v8.super_class = SBPIPWindowLevelOverrideAssertion;
  result = [(SBPIPBehaviorOverrideAssertion *)&v8 initWithReason:reason identifier:identifier invalidationBlock:block];
  if (result)
  {
    result->_windowLevel = level;
  }

  return result;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = SBPIPWindowLevelOverrideAssertion;
  v4 = [(SBPIPBehaviorOverrideAssertion *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendUInt64:self->_windowLevel withName:@"Window Level"];

  return v4;
}

@end