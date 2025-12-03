@interface SBHScrollableZoomingIconViewInteraction
- (BOOL)isIconViewTheInteractingTargetIconView:(id)view;
- (void)handleTargetIconViewClipped:(id)clipped;
@end

@implementation SBHScrollableZoomingIconViewInteraction

- (BOOL)isIconViewTheInteractingTargetIconView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (viewCopy && ([viewCopy effectiveIconImageAlpha], v6 == 0.0))
  {
    v7 = 1;
  }

  else if ([(SBHScrollableZoomingIconViewInteraction *)self considersFolderIconTargets])
  {
    _iconImageView = [v5 _iconImageView];
    objc_opt_class();
    v7 = 0;
    if ((objc_opt_isKindOfClass() & 1) != 0 && _iconImageView)
    {
      [_iconImageView iconGridImageAlpha];
      v7 = v9 == 0.0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)handleTargetIconViewClipped:(id)clipped
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = SBHScrollableZoomingIconViewInteraction;
  clippedCopy = clipped;
  [(SBHScrollableIconViewInteraction *)&v7 handleTargetIconViewClipped:clippedCopy];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = @"SBHHiddenIconViewUserInfoKey";
  v9[0] = clippedCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"SBHScrollableContainerDidScrollHiddenIconViewOutsideClippingBoundsNotification" object:self userInfo:v6];
}

@end