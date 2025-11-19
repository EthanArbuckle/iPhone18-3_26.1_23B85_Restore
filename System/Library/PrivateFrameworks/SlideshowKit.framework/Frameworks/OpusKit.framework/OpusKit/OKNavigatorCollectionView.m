@interface OKNavigatorCollectionView
- (OKNavigatorCollectionView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation OKNavigatorCollectionView

- (OKNavigatorCollectionView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = OKNavigatorCollectionView;
  v3 = [(OKNavigatorCollectionView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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