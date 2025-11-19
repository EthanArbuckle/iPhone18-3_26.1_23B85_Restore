@interface PCAnnouncementActivity
- (BOOL)isValid;
- (PCAnnouncementActivity)init;
- (PCAnnouncementActivity)initWithActivity:(id)a3;
- (id)image;
@end

@implementation PCAnnouncementActivity

- (PCAnnouncementActivity)init
{
  v10[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = PCAnnouncementActivity;
  v2 = [(PCAnnouncementActivity *)&v8 initWithActivityType:@"com.apple.ProximityControl.activity.annoucement"];
  v3 = v2;
  if (v2)
  {
    makeIneligibleForProcessing(v2);
    v4 = [PCLocalizedString localizedStringForKey:1];
    [(PCAnnouncementActivity *)v3 setTitle:v4];

    v9 = @"IS_ANNOUNCING";
    v10[0] = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [(PCAnnouncementActivity *)v3 setUserInfo:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (PCAnnouncementActivity)initWithActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  v6 = [@"com.apple.ProximityControl.activity.annoucement" isEqualToString:v5];

  if (v6)
  {
    v7 = [v4 activityType];
    v12.receiver = self;
    v12.super_class = PCAnnouncementActivity;
    v8 = [(PCAnnouncementActivity *)&v12 initWithActivityType:v7];

    if (v8)
    {
      makeIneligibleForProcessing(v8);
      v9 = [v4 userInfo];
      [(PCAnnouncementActivity *)v8 setUserInfo:v9];
    }

    self = v8;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)image
{
  if (announceImage)
  {
    v2 = announceImage;
  }

  else
  {
    v3 = [MEMORY[0x277D755B8] systemImageNamed:@"waveform"];
    v4 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:32.0];
    v5 = [v3 imageWithConfiguration:v4];

    v6 = [MEMORY[0x277D75348] whiteColor];
    v7 = [v5 imageWithTintColor:v6 renderingMode:2];

    [v7 size];
    v9 = v8;
    [v7 size];
    height = v19.height;
    v19.width = v9;
    UIGraphicsBeginImageContextWithOptions(v19, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = v9;
    v22.size.height = height;
    CGContextAddEllipseInRect(CurrentContext, v22);
    CGContextClosePath(CurrentContext);
    v12 = [MEMORY[0x277D75348] orangeColor];
    CGContextSetFillColorWithColor(CurrentContext, [v12 CGColor]);

    CGContextFillPath(CurrentContext);
    v13 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v20.width = v9;
    v20.height = height;
    UIGraphicsBeginImageContext(v20);
    v14 = UIGraphicsGetCurrentContext();
    v15 = [MEMORY[0x277D75348] whiteColor];
    CGContextSetFillColorWithColor(v14, [v15 CGColor]);

    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = v9;
    v23.size.height = height;
    CGContextFillRect(v14, v23);
    [v7 drawInRect:22 blendMode:0.0 alpha:{0.0, v9, height, 1.0}];
    v16 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v21.width = v9;
    v21.height = height;
    UIGraphicsBeginImageContext(v21);
    [v13 drawInRect:{0.0, 0.0, v9, height}];
    [v16 drawInRect:{3.0, 3.0, v9 + -6.0, height + -6.0}];
    v2 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    objc_storeStrong(&announceImage, v2);
  }

  return v2;
}

- (BOOL)isValid
{
  v2 = [(PCAnnouncementActivity *)self userInfo];
  v3 = [v2 allKeys];
  v4 = [v3 count] != 0;

  return v4;
}

@end