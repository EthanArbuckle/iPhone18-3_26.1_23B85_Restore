@interface UIView(Workflow)
- (uint64_t)wf_containsFirstResponder;
@end

@implementation UIView(Workflow)

- (uint64_t)wf_containsFirstResponder
{
  v2 = [a1 window];
  v3 = [v2 firstResponder];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 isDescendantOfView:a1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end