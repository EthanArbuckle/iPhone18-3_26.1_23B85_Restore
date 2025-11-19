@interface SearchUICollectionReusableView
- (SearchUICollectionReusableView)initWithFrame:(CGRect)a3;
@end

@implementation SearchUICollectionReusableView

- (SearchUICollectionReusableView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SearchUICollectionReusableView;
  v3 = [(SearchUICollectionReusableView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SearchUICollectionReusableView *)v3 contentView];
    if (v5)
    {
      [(SearchUICollectionReusableView *)v4 addSubview:v5];
      [SearchUIAutoLayout fillContainerWithView:v5];
    }
  }

  return v4;
}

@end