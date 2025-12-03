@interface SBCornerPencilPanGestureSettings
+ (BOOL)ignoresKey:(id)key;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBCornerPencilPanGestureSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBCornerPencilPanGestureSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBCornerPencilPanGestureSettings *)self setCornerHorizontalEdgeLength:30.0];
  [(SBCornerPencilPanGestureSettings *)self setCornerVerticalEdgeLength:30.0];
}

+ (id)settingsControllerModule
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D43290] rowWithTitle:@"Corner Horizontal Edge Length" valueKeyPath:@"cornerHorizontalEdgeLength"];
  v3 = [v2 minValue:0.0 maxValue:150.0];

  v4 = [MEMORY[0x277D43290] rowWithTitle:@"Corner Vertical Edge Length" valueKeyPath:@"cornerVerticalEdgeLength"];
  v5 = [v4 minValue:0.0 maxValue:150.0];

  v6 = MEMORY[0x277D43210];
  v14[0] = v3;
  v14[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v8 = [v6 sectionWithRows:v7 title:@"Basic Configuration"];

  v9 = MEMORY[0x277D43210];
  v13 = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v11 = [v9 moduleWithTitle:@"Corner Swipe Gesture" contents:v10];

  return v11;
}

+ (BOOL)ignoresKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"idealSwipeUnitVector"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"cornerSwipeGestureEnabled") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"type") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"useNewCornerGestureHeuristics") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"idealSwipeDegrees") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"underSwipeForgivenessDegrees") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"overSwipeForgivenessDegrees"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [keyCopy isEqualToString:@"edgeProtectMode"];
  }

  return v4;
}

@end