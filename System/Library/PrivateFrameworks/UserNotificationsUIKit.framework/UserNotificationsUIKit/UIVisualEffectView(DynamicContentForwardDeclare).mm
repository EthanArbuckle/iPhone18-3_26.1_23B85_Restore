@interface UIVisualEffectView(DynamicContentForwardDeclare)
- (id)_obtainDynamicContentAssertionForReasonIfPossible:()DynamicContentForwardDeclare;
@end

@implementation UIVisualEffectView(DynamicContentForwardDeclare)

- (id)_obtainDynamicContentAssertionForReasonIfPossible:()DynamicContentForwardDeclare
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [a1 _obtainDynamicContentAssertionForReason:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end