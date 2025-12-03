@interface _UISearchControllerAnimator
- (double)transitionDuration:(id)duration;
@end

@implementation _UISearchControllerAnimator

- (double)transitionDuration:(id)duration
{
  v3 = _UISolariumEnabled();
  result = 0.3;
  if (v3)
  {
    return 0.3833;
  }

  return result;
}

@end