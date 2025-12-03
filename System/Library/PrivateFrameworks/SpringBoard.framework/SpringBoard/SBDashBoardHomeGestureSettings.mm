@interface SBDashBoardHomeGestureSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBDashBoardHomeGestureSettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = SBDashBoardHomeGestureSettings;
  [(SBHomeGestureSettings *)&v5 setDefaultValues];
  [(SBHomeGestureSettings *)self setHomeGestureXOffsetFactor:1.0];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [(SBHomeGestureSettings *)self setHomeGestureCenterZoomDownCenterYOffsetFactor:dbl_21F8A7470[(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1]];
  [(SBHomeGestureSettings *)self setHomeGestureMinimumCardScale:0.55];
  [(SBHomeGestureSettings *)self setHomeGestureMinimumCardScaleRubberBandingRange:0.4];
}

+ (id)settingsControllerModule
{
  v28[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43290];
  v24 = NSStringFromSelector(sel_homeGestureXOffsetFactor);
  v23 = [v2 rowWithTitle:@"X Offset Factor" valueKeyPath:v24];
  v22 = [v23 minValue:0.2 maxValue:1.0];
  v28[0] = v22;
  v3 = MEMORY[0x277D43290];
  v4 = NSStringFromSelector(sel_homeGestureCenterZoomDownCenterYOffsetFactor);
  v5 = [v3 rowWithTitle:@"Center Y Offset Factor" valueKeyPath:v4];
  v6 = [v5 minValue:-0.5 maxValue:0.0];
  v28[1] = v6;
  v7 = MEMORY[0x277D43290];
  v8 = NSStringFromSelector(sel_homeGestureMinimumCardScale);
  v9 = [v7 rowWithTitle:@"Minimum Card Scale" valueKeyPath:v8];
  v10 = [v9 minValue:0.4 maxValue:1.0];
  v28[2] = v10;
  v11 = MEMORY[0x277D431E8];
  v12 = NSStringFromSelector(sel_homeGestureMinimumCardScaleRubberBandingRange);
  v13 = [v11 rowWithTitle:@"Minimum Card Scale RubberBanding Range" valueKeyPath:v12];
  v14 = [v13 between:0.0 and:1.0];
  v28[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];

  v16 = [MEMORY[0x277D43210] sectionWithRows:v15 title:@"Dashboard Gesture Zoom Down"];
  v17 = MEMORY[0x277D43210];
  v26.receiver = self;
  v26.super_class = &OBJC_METACLASS___SBDashBoardHomeGestureSettings;
  v27[0] = v16;
  v18 = objc_msgSendSuper2(&v26, sel_settingsControllerModule);
  v27[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v20 = [v17 moduleWithTitle:0 contents:v19];

  return v20;
}

@end