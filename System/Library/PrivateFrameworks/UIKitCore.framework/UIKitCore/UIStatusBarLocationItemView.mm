@interface UIStatusBarLocationItemView
- (BOOL)updateForNewData:(id)data actions:(int)actions;
- (id)_imageName;
- (id)accessibilityHUDRepresentation;
- (id)contentsImage;
@end

@implementation UIStatusBarLocationItemView

- (BOOL)updateForNewData:(id)data actions:(int)actions
{
  v5 = (*([data rawData] + 2529) >> 3) & 3;
  result = self->_iconType != v5;
  self->_iconType = v5;
  return result;
}

- (id)_imageName
{
  if (self->_iconType == 1)
  {
    return @"Geofence";
  }

  else
  {
    return @"Location";
  }
}

- (id)contentsImage
{
  _imageName = [(UIStatusBarLocationItemView *)self _imageName];
  v4 = [(UIStatusBarItemView *)self imageWithShadowNamed:_imageName];

  return v4;
}

- (id)accessibilityHUDRepresentation
{
  v3 = [UIAccessibilityHUDItem alloc];
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  _imageName = [(UIStatusBarLocationItemView *)self _imageName];
  v6 = [foregroundStyle accessibilityHUDImageNamed:_imageName];
  v7 = [(UIAccessibilityHUDItem *)v3 initWithTitle:0 image:v6 imageInsets:1 scaleImage:0.0, 0.0, 0.0, 0.0];

  return v7;
}

@end