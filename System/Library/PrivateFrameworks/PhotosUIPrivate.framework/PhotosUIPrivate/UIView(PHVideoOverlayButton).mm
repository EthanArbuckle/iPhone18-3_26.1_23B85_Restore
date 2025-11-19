@interface UIView(PHVideoOverlayButton)
+ (id)ph_videoOverlayButton;
@end

@implementation UIView(PHVideoOverlayButton)

+ (id)ph_videoOverlayButton
{
  v0 = [MEMORY[0x1E69DD250] px_videoOverlayButtonWithStyle:0];
  v1 = 0;
  if (objc_opt_respondsToSelector())
  {
    v1 = v0;
  }

  return v1;
}

@end