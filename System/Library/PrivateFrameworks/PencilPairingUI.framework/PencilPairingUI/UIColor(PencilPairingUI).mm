@interface UIColor(PencilPairingUI)
+ (id)batteryBodyColor;
+ (id)batteryTextColorLowPower:()PencilPairingUI;
+ (id)fingerDrawingInkColor;
+ (id)platterContainerColor;
+ (id)platterStrokeColor;
+ (id)scratchpadBackgroundColor;
+ (id)toastLabelTextColor;
+ (id)tuckViewColorTransparencyEnabled:()PencilPairingUI;
@end

@implementation UIColor(PencilPairingUI)

+ (id)scratchpadBackgroundColor
{
  v0 = MEMORY[0x277D75348];
  v1 = PencilPairingUIBundle();
  v2 = [v0 colorNamed:@"scratchpad_background_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)toastLabelTextColor
{
  v0 = MEMORY[0x277D75348];
  v1 = PencilPairingUIBundle();
  v2 = [v0 colorNamed:@"toast_label_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)tuckViewColorTransparencyEnabled:()PencilPairingUI
{
  if (a3)
  {
    [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v3 = ;

  return v3;
}

+ (id)platterContainerColor
{
  v0 = MEMORY[0x277D75348];
  v1 = PencilPairingUIBundle();
  v2 = [v0 colorNamed:@"platter_background_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)platterStrokeColor
{
  v0 = MEMORY[0x277D75348];
  v1 = PencilPairingUIBundle();
  v2 = [v0 colorNamed:@"platter_stroke_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)batteryTextColorLowPower:()PencilPairingUI
{
  if (a3)
  {
    [MEMORY[0x277D75348] systemRedColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v3 = ;

  return v3;
}

+ (id)fingerDrawingInkColor
{
  blackColor = [MEMORY[0x277D75348] blackColor];
  v1 = [blackColor colorWithAlphaComponent:0.1];

  return v1;
}

+ (id)batteryBodyColor
{
  labelColor = [MEMORY[0x277D75348] labelColor];
  v1 = [labelColor colorWithAlphaComponent:0.4];

  return v1;
}

@end