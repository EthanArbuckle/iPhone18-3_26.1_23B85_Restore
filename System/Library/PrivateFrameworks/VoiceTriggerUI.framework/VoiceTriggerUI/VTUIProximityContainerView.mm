@interface VTUIProximityContainerView
- (VTUIProximityContainerView)initWithFrame:(CGRect)frame;
@end

@implementation VTUIProximityContainerView

- (VTUIProximityContainerView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = VTUIProximityContainerView;
  v3 = [(VTUIProximityContainerView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[VTUIStyle sharedStyle];
    [v4 proxContainerCornerRadius];
    v6 = v5;

    v7 = +[MGWrapper sharedMGWrapper];
    supportsSideButtonActivation = [v7 supportsSideButtonActivation];

    if (supportsSideButtonActivation)
    {
      [(VTUIProximityContainerView *)v3 _setContinuousCornerRadius:v6];
    }

    else
    {
      layer = [(VTUIProximityContainerView *)v3 layer];
      [layer setCornerRadius:v6];
    }
  }

  [(VTUIProximityContainerView *)v3 setClipsToBounds:1];
  return v3;
}

@end