@interface TUNavigationBarCompressibleTitleView
- (TUNavigationBarCompressibleTitleView)initWithCustomTitleView:(id)view;
- (TUNavigationBarCompressibleTitleView)initWithRegularTitleView:(id)view;
- (UIView)view;
- (double)contentAlpha;
- (double)verticalOffset;
- (void)setContentAlpha:(double)alpha;
- (void)setVerticalOffset:(double)offset;
@end

@implementation TUNavigationBarCompressibleTitleView

- (TUNavigationBarCompressibleTitleView)initWithCustomTitleView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = TUNavigationBarCompressibleTitleView;
  v6 = [(TUNavigationBarCompressibleTitleView *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_customTitleView, view);
    regularTitleView = v7->_regularTitleView;
    v7->_regularTitleView = 0;
  }

  return v7;
}

- (TUNavigationBarCompressibleTitleView)initWithRegularTitleView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = TUNavigationBarCompressibleTitleView;
  v6 = [(TUNavigationBarCompressibleTitleView *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_regularTitleView, view);
    customTitleView = v7->_customTitleView;
    v7->_customTitleView = 0;
  }

  return v7;
}

- (UIView)view
{
  customTitleView = [(TUNavigationBarCompressibleTitleView *)self customTitleView];
  v4 = customTitleView;
  if (customTitleView)
  {
    regularTitleView = customTitleView;
  }

  else
  {
    regularTitleView = [(TUNavigationBarCompressibleTitleView *)self regularTitleView];
  }

  v6 = regularTitleView;

  return v6;
}

- (double)contentAlpha
{
  customTitleView = [(TUNavigationBarCompressibleTitleView *)self customTitleView];

  if (customTitleView)
  {
    customTitleView2 = [(TUNavigationBarCompressibleTitleView *)self customTitleView];
    [customTitleView2 contentAlpha];
  }

  else
  {
    customTitleView2 = [(TUNavigationBarCompressibleTitleView *)self regularTitleView];
    [customTitleView2 alpha];
  }

  v6 = v5;

  return v6;
}

- (void)setContentAlpha:(double)alpha
{
  customTitleView = [(TUNavigationBarCompressibleTitleView *)self customTitleView];

  if (customTitleView)
  {
    customTitleView2 = [(TUNavigationBarCompressibleTitleView *)self customTitleView];
    [customTitleView2 setContentAlpha:alpha];
  }

  regularTitleView = [(TUNavigationBarCompressibleTitleView *)self regularTitleView];

  if (regularTitleView)
  {
    regularTitleView2 = [(TUNavigationBarCompressibleTitleView *)self regularTitleView];
    [regularTitleView2 setAlpha:alpha];
  }
}

- (double)verticalOffset
{
  view = [(TUNavigationBarCompressibleTitleView *)self view];
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
  view = [(TUNavigationBarCompressibleTitleView *)self view];
  CATransform3DMakeTranslation(&v5, 0.0, offset, 0.0);
  [view setTransform3D:&v5];
}

@end