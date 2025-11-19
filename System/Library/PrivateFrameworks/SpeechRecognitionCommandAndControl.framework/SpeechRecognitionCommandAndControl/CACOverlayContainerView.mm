@interface CACOverlayContainerView
+ (id)badgeViewContainerWithFrame:(CGRect)a3 usingContrast:(BOOL)a4;
@end

@implementation CACOverlayContainerView

+ (id)badgeViewContainerWithFrame:(CGRect)a3 usingContrast:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4)
  {
    v8 = [CACAdaptiveBackdropView contrastAdaptiveBackdropViewWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  }

  else
  {
    v8 = [[CACAdaptiveBackdropView alloc] initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  }

  v9 = v8;
  v10 = [(CACAdaptiveBackdropView *)v8 layer];
  [v10 setCaptureOnly:1];

  v11 = [(CACAdaptiveBackdropView *)v9 layer];
  [v11 setCreatesCompositingGroup:1];

  [(CACAdaptiveBackdropView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
  v13 = [MEMORY[0x277D75348] clearColor];
  [v12 setBackgroundColor:v13];

  v14 = [v12 layer];
  [v14 setCreatesCompositingGroup:1];

  [v12 addSubview:v9];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v12;
}

@end