@interface UIView(PLVideoOverlayButton)
+ (id)pl_videoOverlayButtonWithStyle:()PLVideoOverlayButton;
+ (uint64_t)pl_videoOverlayButtonSize;
@end

@implementation UIView(PLVideoOverlayButton)

+ (uint64_t)pl_videoOverlayButtonSize
{
  v0 = [MEMORY[0x277D755B8] imageNamed:@"PLVideoOverlayBackgroundMask" inBundle:{objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class())}];

  return [v0 size];
}

+ (id)pl_videoOverlayButtonWithStyle:()PLVideoOverlayButton
{
  v3 = off_2782A0FE0;
  if (a3 != 2)
  {
    v3 = off_2782A0FE8;
  }

  v4 = [objc_alloc(*v3) initWithStyle:a3];

  return v4;
}

@end