@interface CACOverlayContainerView
+ (id)badgeViewContainerWithFrame:(CGRect)frame usingContrast:(BOOL)contrast;
@end

@implementation CACOverlayContainerView

+ (id)badgeViewContainerWithFrame:(CGRect)frame usingContrast:(BOOL)contrast
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (contrast)
  {
    v8 = [CACAdaptiveBackdropView contrastAdaptiveBackdropViewWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  }

  else
  {
    v8 = [[CACAdaptiveBackdropView alloc] initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  }

  v9 = v8;
  layer = [(CACAdaptiveBackdropView *)v8 layer];
  [layer setCaptureOnly:1];

  layer2 = [(CACAdaptiveBackdropView *)v9 layer];
  [layer2 setCreatesCompositingGroup:1];

  [(CACAdaptiveBackdropView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v12 setBackgroundColor:clearColor];

  layer3 = [v12 layer];
  [layer3 setCreatesCompositingGroup:1];

  [v12 addSubview:v9];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v12;
}

@end