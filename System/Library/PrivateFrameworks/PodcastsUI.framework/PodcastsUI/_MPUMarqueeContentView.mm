@interface _MPUMarqueeContentView
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3;
@end

@implementation _MPUMarqueeContentView

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3
{
  v4 = a3;
  v6 = [(_MPUMarqueeContentView *)self superview];
  v5 = [v6 viewForContentSize];

  if (v5 == v4)
  {
    [v6 invalidateIntrinsicContentSize];
  }
}

@end