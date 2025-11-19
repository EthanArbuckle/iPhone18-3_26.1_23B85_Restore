@interface SBHScrollableZoomingIconViewInteraction
- (BOOL)isIconViewTheInteractingTargetIconView:(id)a3;
- (void)handleTargetIconViewClipped:(id)a3;
@end

@implementation SBHScrollableZoomingIconViewInteraction

- (BOOL)isIconViewTheInteractingTargetIconView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 effectiveIconImageAlpha], v6 == 0.0))
  {
    v7 = 1;
  }

  else if ([(SBHScrollableZoomingIconViewInteraction *)self considersFolderIconTargets])
  {
    v8 = [v5 _iconImageView];
    objc_opt_class();
    v7 = 0;
    if ((objc_opt_isKindOfClass() & 1) != 0 && v8)
    {
      [v8 iconGridImageAlpha];
      v7 = v9 == 0.0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)handleTargetIconViewClipped:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = SBHScrollableZoomingIconViewInteraction;
  v4 = a3;
  [(SBHScrollableIconViewInteraction *)&v7 handleTargetIconViewClipped:v4];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = @"SBHHiddenIconViewUserInfoKey";
  v9[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [v5 postNotificationName:@"SBHScrollableContainerDidScrollHiddenIconViewOutsideClippingBoundsNotification" object:self userInfo:v6];
}

@end