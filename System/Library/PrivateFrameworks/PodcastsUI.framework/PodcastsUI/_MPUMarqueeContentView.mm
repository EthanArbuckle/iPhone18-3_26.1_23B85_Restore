@interface _MPUMarqueeContentView
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
@end

@implementation _MPUMarqueeContentView

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  viewCopy = view;
  superview = [(_MPUMarqueeContentView *)self superview];
  viewForContentSize = [superview viewForContentSize];

  if (viewForContentSize == viewCopy)
  {
    [superview invalidateIntrinsicContentSize];
  }
}

@end