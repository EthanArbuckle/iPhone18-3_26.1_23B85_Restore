@interface NCNotificationListStackDimmingOverlayView
- (NCNotificationListStackDimmingOverlayView)initWithFrame:(CGRect)frame cornerRadius:(double)radius;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateStackDimmingVisualStyling;
@end

@implementation NCNotificationListStackDimmingOverlayView

- (NCNotificationListStackDimmingOverlayView)initWithFrame:(CGRect)frame cornerRadius:(double)radius
{
  v8.receiver = self;
  v8.super_class = NCNotificationListStackDimmingOverlayView;
  v5 = [(NCNotificationListStackDimmingOverlayView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(NCNotificationListStackDimmingOverlayView *)v5 setUserInteractionEnabled:0];
    [(NCNotificationListStackDimmingOverlayView *)v6 _setContinuousCornerRadius:radius];
    [(NCNotificationListStackDimmingOverlayView *)v6 setClipsToBounds:1];
    [(NCNotificationListStackDimmingOverlayView *)v6 setAutoresizingMask:18];
    [(NCNotificationListStackDimmingOverlayView *)v6 setAlpha:0.0];
    [(NCNotificationListStackDimmingOverlayView *)v6 _updateStackDimmingVisualStyling];
  }

  return v6;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = NCNotificationListStackDimmingOverlayView;
  [(NCNotificationListStackDimmingOverlayView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(NCNotificationListStackDimmingOverlayView *)self _updateStackDimmingVisualStyling];
}

- (void)_updateStackDimmingVisualStyling
{
  traitCollection = [(NCNotificationListStackDimmingOverlayView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v5 = @"stackDimmingLight";
  if (userInterfaceStyle == 2)
  {
    v5 = @"stackDimmingDark";
  }

  v6 = v5;

  v7 = MEMORY[0x277D26740];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v7 _visualStylingProviderForStyleSetNamed:v6 inBundle:v8];

  [(NCNotificationListStackDimmingOverlayView *)self alpha];
  v10 = v9;
  v11 = [v12 _visualStylingForStyle:1];
  [(NCNotificationListStackDimmingOverlayView *)self mt_replaceVisualStyling:v11];

  [(NCNotificationListStackDimmingOverlayView *)self setAlpha:v10];
}

@end