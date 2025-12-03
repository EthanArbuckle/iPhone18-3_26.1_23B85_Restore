@interface UITextView(LayoutAdditions)
- (double)tf_estimatedFirstBaseline;
@end

@implementation UITextView(LayoutAdditions)

- (double)tf_estimatedFirstBaseline
{
  font = [self font];
  if (font)
  {
    font2 = [self font];
    [font2 tf_estimatedFirstBaseline];
    v5 = v4;
    [self textContainerInset];
    v7 = v5 + v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

@end