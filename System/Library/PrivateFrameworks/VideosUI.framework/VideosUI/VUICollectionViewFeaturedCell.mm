@interface VUICollectionViewFeaturedCell
+ (double)_iOSLockupWidthWithWindowWidth:(double)result safeAreaInsets:(UIEdgeInsets)insets showsPageControl:(BOOL)control;
- (VUICollectionViewFeaturedCell)initWithFrame:(CGRect)frame;
- (void)_commonInitWithFrame:(CGRect)frame;
@end

@implementation VUICollectionViewFeaturedCell

+ (double)_iOSLockupWidthWithWindowWidth:(double)result safeAreaInsets:(UIEdgeInsets)insets showsPageControl:(BOOL)control
{
  if (!control)
  {
    return result - insets.left * 0.5 - insets.right * 0.5;
  }

  return result;
}

- (VUICollectionViewFeaturedCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)_commonInitWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  vuiContentView = [(VUIBaseCollectionViewCell *)self vuiContentView];
  [vuiContentView vui_addSubview:self->_featuredView oldView:0];
}

@end