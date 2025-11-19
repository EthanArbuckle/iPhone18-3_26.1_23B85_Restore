@interface UITextView(LayoutAdditions)
- (double)tf_estimatedFirstBaseline;
@end

@implementation UITextView(LayoutAdditions)

- (double)tf_estimatedFirstBaseline
{
  v2 = [a1 font];
  if (v2)
  {
    v3 = [a1 font];
    [v3 tf_estimatedFirstBaseline];
    v5 = v4;
    [a1 textContainerInset];
    v7 = v5 + v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

@end