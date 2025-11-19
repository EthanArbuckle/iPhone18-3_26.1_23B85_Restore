@interface _SBSystemApertureBackgroundActivitySuppressionAssertion
- (_SBSystemApertureBackgroundActivitySuppressionAssertion)initWithIdentifier:(id)a3 forReason:(id)a4 backgroundActivitiesToSuppress:(id)a5 invalidationBlock:(id)a6;
@end

@implementation _SBSystemApertureBackgroundActivitySuppressionAssertion

- (_SBSystemApertureBackgroundActivitySuppressionAssertion)initWithIdentifier:(id)a3 forReason:(id)a4 backgroundActivitiesToSuppress:(id)a5 invalidationBlock:(id)a6
{
  v10 = a5;
  v11 = [(BSSimpleAssertion *)self initWithIdentifier:a3 forReason:a4 invalidationBlock:a6];
  if (v11)
  {
    v12 = [v10 copy];
    backgroundActivitiesToSuppress = v11->_backgroundActivitiesToSuppress;
    v11->_backgroundActivitiesToSuppress = v12;
  }

  return v11;
}

@end