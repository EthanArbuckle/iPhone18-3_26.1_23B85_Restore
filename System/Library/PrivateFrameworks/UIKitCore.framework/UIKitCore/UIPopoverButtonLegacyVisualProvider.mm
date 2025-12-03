@interface UIPopoverButtonLegacyVisualProvider
- (id)_setupBackgroundView;
@end

@implementation UIPopoverButtonLegacyVisualProvider

- (id)_setupBackgroundView
{
  v6.receiver = self;
  v6.super_class = UIPopoverButtonLegacyVisualProvider;
  _setupBackgroundView = [(UIButtonLegacyVisualProvider *)&v6 _setupBackgroundView];
  v3 = _setupBackgroundView;
  if (_setupBackgroundView)
  {
    layer = [_setupBackgroundView layer];
    [layer setContentsCenter:{0.5, 0.0, 0.0, 1.0}];
  }

  return v3;
}

@end