@interface SearchUIPersonHeaderBoxView
- (CGSize)contentLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
@end

@implementation SearchUIPersonHeaderBoxView

- (CGSize)contentLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  [subview systemLayoutSizeFittingSize:{size.width, size.height}];
  result.height = v5;
  result.width = v4;
  return result;
}

@end