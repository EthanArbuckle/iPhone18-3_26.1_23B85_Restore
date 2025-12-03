@interface OKNavigatorCollectionView
- (OKNavigatorCollectionView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation OKNavigatorCollectionView

- (OKNavigatorCollectionView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = OKNavigatorCollectionView;
  v3 = [(OKNavigatorCollectionView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    objc_storeWeak(&v3->_collectionViewController, 0);
  }

  return v4;
}

- (void)dealloc
{
  objc_storeWeak(&self->_collectionViewController, 0);
  v3.receiver = self;
  v3.super_class = OKNavigatorCollectionView;
  [(OKNavigatorCollectionView *)&v3 dealloc];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(OKNavigatorCollectionView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = OKNavigatorCollectionView;
  [(OKNavigatorCollectionView *)&v13 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(OKNavigatorCollectionViewControllerProxy *)[(OKNavigatorCollectionView *)self collectionViewController] updateCollectionViewLayoutItemSize];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(OKNavigatorCollectionView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = OKNavigatorCollectionView;
  [(OKNavigatorCollectionView *)&v13 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(OKNavigatorCollectionViewControllerProxy *)[(OKNavigatorCollectionView *)self collectionViewController] updateCollectionViewLayoutItemSize];
  }
}

@end