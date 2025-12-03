@interface _SBSystemApertureBackgroundActivitySuppressionAssertion
- (_SBSystemApertureBackgroundActivitySuppressionAssertion)initWithIdentifier:(id)identifier forReason:(id)reason backgroundActivitiesToSuppress:(id)suppress invalidationBlock:(id)block;
@end

@implementation _SBSystemApertureBackgroundActivitySuppressionAssertion

- (_SBSystemApertureBackgroundActivitySuppressionAssertion)initWithIdentifier:(id)identifier forReason:(id)reason backgroundActivitiesToSuppress:(id)suppress invalidationBlock:(id)block
{
  suppressCopy = suppress;
  v11 = [(BSSimpleAssertion *)self initWithIdentifier:identifier forReason:reason invalidationBlock:block];
  if (v11)
  {
    v12 = [suppressCopy copy];
    backgroundActivitiesToSuppress = v11->_backgroundActivitiesToSuppress;
    v11->_backgroundActivitiesToSuppress = v12;
  }

  return v11;
}

@end