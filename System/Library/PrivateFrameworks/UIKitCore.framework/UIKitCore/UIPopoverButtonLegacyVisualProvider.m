@interface UIPopoverButtonLegacyVisualProvider
- (id)_setupBackgroundView;
@end

@implementation UIPopoverButtonLegacyVisualProvider

- (id)_setupBackgroundView
{
  v6.receiver = self;
  v6.super_class = UIPopoverButtonLegacyVisualProvider;
  v2 = [(UIButtonLegacyVisualProvider *)&v6 _setupBackgroundView];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 layer];
    [v4 setContentsCenter:{0.5, 0.0, 0.0, 1.0}];
  }

  return v3;
}

@end