@interface _UIFloatingTabBarCell
- (void)layoutSubviews;
@end

@implementation _UIFloatingTabBarCell

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIFloatingTabBarCell;
  [(UICollectionViewCell *)&v3 layoutSubviews];
  [(UIView *)self bounds];
  [(UIView *)self _setContinuousCornerRadius:CGRectGetHeight(v4) * 0.5];
}

@end