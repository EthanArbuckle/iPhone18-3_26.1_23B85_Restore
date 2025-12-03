@interface TUNavigationBarCompressibleBarButtonItemView
- (TUNavigationBarCompressibleBarButtonItemView)initWithCustomItemView:(id)view;
- (TUNavigationBarCompressibleBarButtonItemView)initWithRegularItemView:(id)view;
- (UIView)view;
- (double)contentAlpha;
- (double)verticalOffset;
- (void)setContentAlpha:(double)alpha;
- (void)setVerticalOffset:(double)offset;
@end

@implementation TUNavigationBarCompressibleBarButtonItemView

- (TUNavigationBarCompressibleBarButtonItemView)initWithCustomItemView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = TUNavigationBarCompressibleBarButtonItemView;
  v6 = [(TUNavigationBarCompressibleBarButtonItemView *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_customItemView, view);
    regularItemView = v7->_regularItemView;
    v7->_regularItemView = 0;
  }

  return v7;
}

- (TUNavigationBarCompressibleBarButtonItemView)initWithRegularItemView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = TUNavigationBarCompressibleBarButtonItemView;
  v6 = [(TUNavigationBarCompressibleBarButtonItemView *)&v10 init];
  v7 = v6;
  if (v6)
  {
    customItemView = v6->_customItemView;
    v6->_customItemView = 0;

    objc_storeStrong(&v7->_regularItemView, view);
  }

  return v7;
}

- (UIView)view
{
  customItemView = [(TUNavigationBarCompressibleBarButtonItemView *)self customItemView];
  v4 = customItemView;
  if (customItemView)
  {
    regularItemView = customItemView;
  }

  else
  {
    regularItemView = [(TUNavigationBarCompressibleBarButtonItemView *)self regularItemView];
  }

  v6 = regularItemView;

  return v6;
}

- (double)contentAlpha
{
  customItemView = [(TUNavigationBarCompressibleBarButtonItemView *)self customItemView];

  if (customItemView)
  {
    customItemView2 = [(TUNavigationBarCompressibleBarButtonItemView *)self customItemView];
    [customItemView2 contentAlpha];
  }

  else
  {
    customItemView2 = [(TUNavigationBarCompressibleBarButtonItemView *)self regularItemView];
    [customItemView2 alpha];
  }

  v6 = v5;

  return v6;
}

- (void)setContentAlpha:(double)alpha
{
  customItemView = [(TUNavigationBarCompressibleBarButtonItemView *)self customItemView];

  if (customItemView)
  {
    customItemView2 = [(TUNavigationBarCompressibleBarButtonItemView *)self customItemView];
    [customItemView2 setContentAlpha:alpha];
  }

  regularItemView = [(TUNavigationBarCompressibleBarButtonItemView *)self regularItemView];

  if (regularItemView)
  {
    regularItemView2 = [(TUNavigationBarCompressibleBarButtonItemView *)self regularItemView];
    [regularItemView2 setAlpha:alpha];
  }
}

- (double)verticalOffset
{
  view = [(TUNavigationBarCompressibleBarButtonItemView *)self view];
  v3 = view;
  if (view)
  {
    [view transform];
    v4 = v6;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

- (void)setVerticalOffset:(double)offset
{
  view = [(TUNavigationBarCompressibleBarButtonItemView *)self view];
  CATransform3DMakeTranslation(&v5, 0.0, offset, 0.0);
  [view setTransform3D:&v5];
}

@end