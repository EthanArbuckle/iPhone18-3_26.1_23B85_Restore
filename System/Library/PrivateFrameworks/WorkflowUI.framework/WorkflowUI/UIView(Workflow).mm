@interface UIView(Workflow)
- (uint64_t)wf_containsFirstResponder;
@end

@implementation UIView(Workflow)

- (uint64_t)wf_containsFirstResponder
{
  window = [self window];
  firstResponder = [window firstResponder];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [firstResponder isDescendantOfView:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end