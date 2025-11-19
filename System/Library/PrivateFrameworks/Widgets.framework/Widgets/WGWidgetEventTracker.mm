@interface WGWidgetEventTracker
+ (id)sharedInstance;
- (WGWidgetEventTracker)init;
- (id)_authenticationProperty;
- (id)_locationProperty;
- (id)_modeProperty;
- (id)_statusProperty;
- (id)_widgetLingerTracker;
- (id)_widgetListLingerTracker;
- (id)_widgetShownTracker;
- (id)_widgetStatusTracker;
- (id)_widgetToggleContractTracker;
- (id)widgetListShownTracker;
- (id)widgetToggleExpandTracker;
- (void)_trackWidgetContractEventForWidget:(id)a3;
- (void)_trackWidgetExpandEventForWidget:(id)a3;
- (void)_trackWidgetLingerEventForWidget:(id)a3 withLocation:(unint64_t)a4 authenticated:(BOOL)a5 mode:(int64_t)a6 duration:(double)a7;
- (void)_trackWidgetListLingerEventWithLocation:(unint64_t)a3 authenticated:(BOOL)a4 duration:(double)a5;
- (void)_trackWidgetListShownEventWithLocation:(unint64_t)a3 authenticated:(BOOL)a4;
- (void)_trackWidgetShownEventForWidget:(id)a3 withLocation:(unint64_t)a4 authenticated:(BOOL)a5 mode:(int64_t)a6;
- (void)_trackWidgetStatusEventForWidget:(id)a3 withStatus:(BOOL)a4;
- (void)dealloc;
- (void)widget:(id)a3 didAppearInMode:(int64_t)a4;
- (void)widget:(id)a3 didChangeUserSpecifiedDisplayMode:(int64_t)a4;
- (void)widget:(id)a3 didDisappearInMode:(int64_t)a4;
- (void)widgetListDidAppearAtLocation:(unint64_t)a3 withEnabledWidgets:(id)a4 disabledWidgets:(id)a5;
- (void)widgetListDidDisappearAtLocation:(unint64_t)a3;
@end

@implementation WGWidgetEventTracker

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__WGWidgetEventTracker_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance___sharedInstance;

  return v2;
}

uint64_t __38__WGWidgetEventTracker_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (WGWidgetEventTracker)init
{
  v7.receiver = self;
  v7.super_class = WGWidgetEventTracker;
  v2 = [(WGWidgetEventTracker *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    previousWidgetAppearanceDateByIdentifier = v2->_previousWidgetAppearanceDateByIdentifier;
    v2->_previousWidgetAppearanceDateByIdentifier = v3;

    [(WGWidgetEventTracker *)v2 _lockedStateDidChange];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _HandleKeybagLockStatusChanged, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDrop);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = WGWidgetEventTracker;
  [(WGWidgetEventTracker *)&v4 dealloc];
}

- (void)widgetListDidAppearAtLocation:(unint64_t)a3 withEnabledWidgets:(id)a4 disabledWidgets:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  self->_location = a3;
  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [MEMORY[0x277CBEA80] currentCalendar];
  v12 = [v11 components:28 fromDate:v10];
  if (([(NSDateComponents *)self->_previousTodayViewAppearDateComponents isEqual:v12]& 1) == 0)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v23 = v8;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(WGWidgetEventTracker *)self _trackWidgetStatusEventForWidget:*(*(&v28 + 1) + 8 * i) withStatus:1];
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v15);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v25;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [(WGWidgetEventTracker *)self _trackWidgetStatusEventForWidget:*(*(&v24 + 1) + 8 * j) withStatus:0];
        }

        v20 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v20);
    }

    objc_storeStrong(&self->_previousTodayViewAppearDateComponents, v12);
    v8 = v23;
  }

  if (!self->_previousTodayViewAppearanceDate)
  {
    objc_storeStrong(&self->_previousTodayViewAppearanceDate, v10);
    [(WGWidgetEventTracker *)self _trackWidgetListShownEventWithLocation:self->_location authenticated:self->_authenticated];
  }
}

- (void)widgetListDidDisappearAtLocation:(unint64_t)a3
{
  previousTodayViewAppearanceDate = self->_previousTodayViewAppearanceDate;
  if (previousTodayViewAppearanceDate)
  {
    [(NSDate *)previousTodayViewAppearanceDate timeIntervalSinceNow];
    [(WGWidgetEventTracker *)self _trackWidgetListLingerEventWithLocation:self->_location authenticated:self->_authenticated duration:-v5];
    v6 = self->_previousTodayViewAppearanceDate;
    self->_previousTodayViewAppearanceDate = 0;

    self->_location = 0;
  }
}

- (void)widget:(id)a3 didAppearInMode:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v10 = v6;
    v7 = [(NSMutableDictionary *)self->_previousWidgetAppearanceDateByIdentifier objectForKey:?];
    if (!v7)
    {
      [(WGWidgetEventTracker *)self _trackWidgetShownEventForWidget:v10 withLocation:self->_location authenticated:self->_authenticated mode:a4];
      previousWidgetAppearanceDateByIdentifier = self->_previousWidgetAppearanceDateByIdentifier;
      v9 = [MEMORY[0x277CBEAA8] date];
      [(NSMutableDictionary *)previousWidgetAppearanceDateByIdentifier setObject:v9 forKey:v10];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)widget:(id)a3 didDisappearInMode:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v11 = v6;
    v8 = [(NSMutableDictionary *)self->_previousWidgetAppearanceDateByIdentifier objectForKey:v6];
    v9 = v8;
    if (v8)
    {
      [v8 timeIntervalSinceNow];
      [(WGWidgetEventTracker *)self _trackWidgetLingerEventForWidget:v11 withLocation:self->_location authenticated:self->_authenticated mode:a4 duration:-v10];
      [(NSMutableDictionary *)self->_previousWidgetAppearanceDateByIdentifier removeObjectForKey:v11];
    }

    v7 = v11;
  }

  MEMORY[0x2821F96F8](v6, v7);
}

- (void)widget:(id)a3 didChangeUserSpecifiedDisplayMode:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (a4 == 1)
    {
      v8 = v6;
      v6 = [(WGWidgetEventTracker *)self _trackWidgetExpandEventForWidget:v6];
    }

    else
    {
      if (a4)
      {
        goto LABEL_7;
      }

      v8 = v6;
      v6 = [(WGWidgetEventTracker *)self _trackWidgetContractEventForWidget:v6];
    }

    v7 = v8;
  }

LABEL_7:

  MEMORY[0x2821F96F8](v6, v7);
}

- (id)_authenticationProperty
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D41DA0];
  v6[0] = MEMORY[0x277CBEC38];
  v6[1] = MEMORY[0x277CBEC28];
  v7[0] = @"true";
  v7[1] = @"false";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [v2 propertyWithName:@"auth" enumMapping:v3];

  return v4;
}

- (id)_locationProperty
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D41DA0];
  v6[0] = &unk_28834F160;
  v6[1] = &unk_28834F178;
  v7[0] = @"Unknown";
  v7[1] = @"lock_screen_list";
  v6[2] = &unk_28834F190;
  v6[3] = &unk_28834F1A8;
  v7[2] = @"notification_center_list";
  v7[3] = @"home_screen_list";
  v6[4] = &unk_28834F1C0;
  v7[4] = @"home_screen_icon";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:5];
  v4 = [v2 propertyWithName:@"location" enumMapping:v3];

  return v4;
}

- (id)_modeProperty
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D41DA0];
  v6[0] = &unk_28834F1D8;
  v6[1] = &unk_28834F1F0;
  v7[0] = @"compact";
  v7[1] = @"expanded";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [v2 propertyWithName:@"mode" enumMapping:v3];

  return v4;
}

- (id)_statusProperty
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D41DA0];
  v6[0] = MEMORY[0x277CBEC38];
  v6[1] = MEMORY[0x277CBEC28];
  v7[0] = @"enabled";
  v7[1] = @"disabled";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [v2 propertyWithName:@"status" enumMapping:v3];

  return v4;
}

- (id)_widgetLingerTracker
{
  v13[4] = *MEMORY[0x277D85DE8];
  widgetLingerTracker = self->_widgetLingerTracker;
  if (!widgetLingerTracker)
  {
    v4 = [(WGWidgetEventTracker *)self _widgetProperty];
    v5 = [(WGWidgetEventTracker *)self _locationProperty];
    v6 = [(WGWidgetEventTracker *)self _authenticationProperty];
    v7 = [(WGWidgetEventTracker *)self _modeProperty];
    v8 = objc_alloc(MEMORY[0x277D41D98]);
    v13[0] = v4;
    v13[1] = v5;
    v13[2] = v6;
    v13[3] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
    v10 = [v8 initWithFeatureId:@"Widgets" event:@"widgetLinger" registerProperties:v9];
    v11 = self->_widgetLingerTracker;
    self->_widgetLingerTracker = v10;

    widgetLingerTracker = self->_widgetLingerTracker;
  }

  return widgetLingerTracker;
}

- (void)_trackWidgetLingerEventForWidget:(id)a3 withLocation:(unint64_t)a4 authenticated:(BOOL)a5 mode:(int64_t)a6 duration:(double)a7
{
  v18[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a4)
    {
      v10 = a5;
      v12 = a3;
      v13 = [(WGWidgetEventTracker *)self _widgetLingerTracker];
      v18[0] = v12;
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
      v18[1] = v14;
      v15 = [MEMORY[0x277CCABB0] numberWithBool:v10];
      v18[2] = v15;
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
      v18[3] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

      [v13 trackEventWithPropertyValues:v17 value:a7];
    }
  }
}

- (id)_widgetShownTracker
{
  v13[4] = *MEMORY[0x277D85DE8];
  widgetShownTracker = self->_widgetShownTracker;
  if (!widgetShownTracker)
  {
    v4 = [(WGWidgetEventTracker *)self _widgetProperty];
    v5 = [(WGWidgetEventTracker *)self _locationProperty];
    v6 = [(WGWidgetEventTracker *)self _authenticationProperty];
    v7 = [(WGWidgetEventTracker *)self _modeProperty];
    v8 = objc_alloc(MEMORY[0x277D41DB8]);
    v13[0] = v4;
    v13[1] = v5;
    v13[2] = v6;
    v13[3] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
    v10 = [v8 initWithFeatureId:@"Widgets" event:@"widgetShown" registerProperties:v9];
    v11 = self->_widgetShownTracker;
    self->_widgetShownTracker = v10;

    widgetShownTracker = self->_widgetShownTracker;
  }

  return widgetShownTracker;
}

- (void)_trackWidgetShownEventForWidget:(id)a3 withLocation:(unint64_t)a4 authenticated:(BOOL)a5 mode:(int64_t)a6
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = a5;
    v10 = a3;
    v11 = [(WGWidgetEventTracker *)self _widgetShownTracker];
    v16[0] = v10;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v16[1] = v12;
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v16[2] = v13;
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
    v16[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];

    [v11 trackEventWithPropertyValues:v15];
  }
}

- (id)_widgetStatusTracker
{
  v11[2] = *MEMORY[0x277D85DE8];
  widgetStatusTracker = self->_widgetStatusTracker;
  if (!widgetStatusTracker)
  {
    v4 = [(WGWidgetEventTracker *)self _widgetProperty];
    v5 = [(WGWidgetEventTracker *)self _statusProperty];
    v6 = objc_alloc(MEMORY[0x277D41DB8]);
    v11[0] = v4;
    v11[1] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v8 = [v6 initWithFeatureId:@"Widgets" event:@"widgetStatus" registerProperties:v7];
    v9 = self->_widgetStatusTracker;
    self->_widgetStatusTracker = v8;

    widgetStatusTracker = self->_widgetStatusTracker;
  }

  return widgetStatusTracker;
}

- (void)_trackWidgetStatusEventForWidget:(id)a3 withStatus:(BOOL)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a4;
    v6 = a3;
    v7 = [(WGWidgetEventTracker *)self _widgetStatusTracker];
    v10[0] = v6;
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    v10[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

    [v7 trackEventWithPropertyValues:v9];
  }
}

- (id)_widgetToggleContractTracker
{
  v10[1] = *MEMORY[0x277D85DE8];
  widgetToggleContractTracker = self->_widgetToggleContractTracker;
  if (!widgetToggleContractTracker)
  {
    v4 = [(WGWidgetEventTracker *)self _widgetProperty];
    v5 = objc_alloc(MEMORY[0x277D41DB8]);
    v10[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v7 = [v5 initWithFeatureId:@"Widgets" event:@"widgetToggleContract" registerProperties:v6];
    v8 = self->_widgetToggleContractTracker;
    self->_widgetToggleContractTracker = v7;

    widgetToggleContractTracker = self->_widgetToggleContractTracker;
  }

  return widgetToggleContractTracker;
}

- (void)_trackWidgetContractEventForWidget:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3;
    v5 = [(WGWidgetEventTracker *)self _widgetToggleContractTracker];
    v7[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

    [v5 trackEventWithPropertyValues:v6];
  }
}

- (id)widgetToggleExpandTracker
{
  v10[1] = *MEMORY[0x277D85DE8];
  widgetToggleExpandTracker = self->_widgetToggleExpandTracker;
  if (!widgetToggleExpandTracker)
  {
    v4 = [(WGWidgetEventTracker *)self _widgetProperty];
    v5 = objc_alloc(MEMORY[0x277D41DB8]);
    v10[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v7 = [v5 initWithFeatureId:@"Widgets" event:@"widgetToggleExpand" registerProperties:v6];
    v8 = self->_widgetToggleExpandTracker;
    self->_widgetToggleExpandTracker = v7;

    widgetToggleExpandTracker = self->_widgetToggleExpandTracker;
  }

  return widgetToggleExpandTracker;
}

- (void)_trackWidgetExpandEventForWidget:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3;
    v5 = [(WGWidgetEventTracker *)self widgetToggleExpandTracker];
    v7[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

    [v5 trackEventWithPropertyValues:v6];
  }
}

- (id)_widgetListLingerTracker
{
  v11[2] = *MEMORY[0x277D85DE8];
  widgetListLingerTracker = self->_widgetListLingerTracker;
  if (!widgetListLingerTracker)
  {
    v4 = [(WGWidgetEventTracker *)self _locationProperty];
    v5 = [(WGWidgetEventTracker *)self _authenticationProperty];
    v6 = objc_alloc(MEMORY[0x277D41D98]);
    v11[0] = v4;
    v11[1] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v8 = [v6 initWithFeatureId:@"Widgets" event:@"widgetListLinger" registerProperties:v7];
    v9 = self->_widgetListLingerTracker;
    self->_widgetListLingerTracker = v8;

    widgetListLingerTracker = self->_widgetListLingerTracker;
  }

  return widgetListLingerTracker;
}

- (void)_trackWidgetListLingerEventWithLocation:(unint64_t)a3 authenticated:(BOOL)a4 duration:(double)a5
{
  v6 = a4;
  v12[2] = *MEMORY[0x277D85DE8];
  v8 = [(WGWidgetEventTracker *)self _widgetListLingerTracker];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v12[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v12[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  [v8 trackEventWithPropertyValues:v11 value:a5];
}

- (id)widgetListShownTracker
{
  v11[2] = *MEMORY[0x277D85DE8];
  widgetListShownTracker = self->_widgetListShownTracker;
  if (!widgetListShownTracker)
  {
    v4 = [(WGWidgetEventTracker *)self _locationProperty];
    v5 = [(WGWidgetEventTracker *)self _authenticationProperty];
    v6 = objc_alloc(MEMORY[0x277D41DB8]);
    v11[0] = v4;
    v11[1] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v8 = [v6 initWithFeatureId:@"Widgets" event:@"widgetListShown" registerProperties:v7];
    v9 = self->_widgetListShownTracker;
    self->_widgetListShownTracker = v8;

    widgetListShownTracker = self->_widgetListShownTracker;
  }

  return widgetListShownTracker;
}

- (void)_trackWidgetListShownEventWithLocation:(unint64_t)a3 authenticated:(BOOL)a4
{
  v4 = a4;
  v10[2] = *MEMORY[0x277D85DE8];
  v6 = [(WGWidgetEventTracker *)self widgetListShownTracker];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v10[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v10[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [v6 trackEventWithPropertyValues:v9];
}

@end