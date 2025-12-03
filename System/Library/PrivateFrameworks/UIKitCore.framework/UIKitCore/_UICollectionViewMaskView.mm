@interface _UICollectionViewMaskView
- (_UICollectionViewMaskView)initWithFrame:(CGRect)frame;
@end

@implementation _UICollectionViewMaskView

- (_UICollectionViewMaskView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UICollectionViewMaskView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor blackColor];
    [(UIView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

@end