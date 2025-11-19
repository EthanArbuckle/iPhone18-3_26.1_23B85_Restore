@interface VUICollectionViewFeaturedCell
+ (double)_iOSLockupWidthWithWindowWidth:(double)result safeAreaInsets:(UIEdgeInsets)a4 showsPageControl:(BOOL)a5;
- (VUICollectionViewFeaturedCell)initWithFrame:(CGRect)a3;
- (void)_commonInitWithFrame:(CGRect)a3;
@end

@implementation VUICollectionViewFeaturedCell

+ (double)_iOSLockupWidthWithWindowWidth:(double)result safeAreaInsets:(UIEdgeInsets)a4 showsPageControl:(BOOL)a5
{
  if (!a5)
  {
    return result - a4.left * 0.5 - a4.right * 0.5;
  }

  return result;
}

- (VUICollectionViewFeaturedCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = VUICollectionViewFeaturedCell;
  v7 = [(VUIBaseCollectionViewCell *)&v10 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(VUICollectionViewFeaturedCell *)v7 _commonInitWithFrame:x, y, width, height];
  }

  return v8;
}

- (void)_commonInitWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [VUICollectionViewFeaturedView alloc];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGRectGetWidth(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v10 = [(VUICollectionViewFeaturedView *)v8 initWithFrame:0.0, 0.0, v9, CGRectGetHeight(v15)];
  featuredView = self->_featuredView;
  self->_featuredView = v10;

  [(VUICollectionViewFeaturedView *)self->_featuredView setTranslatesAutoresizingMaskIntoConstraints:1];
  [(VUICollectionViewFeaturedView *)self->_featuredView setAutoresizingMask:18];
  v12 = [(VUIBaseCollectionViewCell *)self vuiContentView];
  [v12 vui_addSubview:self->_featuredView oldView:0];
}

@end