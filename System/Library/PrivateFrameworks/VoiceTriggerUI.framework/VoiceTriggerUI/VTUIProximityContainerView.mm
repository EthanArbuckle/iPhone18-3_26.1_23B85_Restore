@interface VTUIProximityContainerView
- (VTUIProximityContainerView)initWithFrame:(CGRect)a3;
@end

@implementation VTUIProximityContainerView

- (VTUIProximityContainerView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = VTUIProximityContainerView;
  v3 = [(VTUIProximityContainerView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[VTUIStyle sharedStyle];
    [v4 proxContainerCornerRadius];
    v6 = v5;

    v7 = +[MGWrapper sharedMGWrapper];
    v8 = [v7 supportsSideButtonActivation];

    if (v8)
    {
      [(VTUIProximityContainerView *)v3 _setContinuousCornerRadius:v6];
    }

    else
    {
      v9 = [(VTUIProximityContainerView *)v3 layer];
      [v9 setCornerRadius:v6];
    }
  }

  [(VTUIProximityContainerView *)v3 setClipsToBounds:1];
  return v3;
}

@end