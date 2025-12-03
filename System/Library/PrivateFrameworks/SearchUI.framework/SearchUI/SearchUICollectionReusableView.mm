@interface SearchUICollectionReusableView
- (SearchUICollectionReusableView)initWithFrame:(CGRect)frame;
@end

@implementation SearchUICollectionReusableView

- (SearchUICollectionReusableView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SearchUICollectionReusableView;
  v3 = [(SearchUICollectionReusableView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(SearchUICollectionReusableView *)v3 contentView];
    if (contentView)
    {
      [(SearchUICollectionReusableView *)v4 addSubview:contentView];
      [SearchUIAutoLayout fillContainerWithView:contentView];
    }
  }

  return v4;
}

@end