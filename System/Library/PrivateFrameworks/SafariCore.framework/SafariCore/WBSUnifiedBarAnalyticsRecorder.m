@interface WBSUnifiedBarAnalyticsRecorder
- (WBSUnifiedBarAnalyticsRecorderDelegate)delegate;
- (void)_reportAnalytics;
- (void)schedulePeriodicReport;
@end

@implementation WBSUnifiedBarAnalyticsRecorder

- (void)schedulePeriodicReport
{
  v3 = objc_alloc(MEMORY[0x1E695DFF0]);
  v4 = [MEMORY[0x1E695DF00] now];
  v6 = [v3 initWithFireDate:v4 interval:self target:sel__reportAnalytics selector:0 userInfo:1 repeats:600.0];

  v5 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [v5 addTimer:v6 forMode:*MEMORY[0x1E695D918]];
}

- (void)_reportAnalytics
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained unifiedBarAnalyticsProvider];

  if ([v4 shouldReportUnifiedTabBarAnalytics])
  {
    v3 = +[WBSAnalyticsLogger sharedLogger];
    [v3 reportUnifiedTabBarStatusWithLayout:objc_msgSend(v4 numberOfTabsInCurrentTabBar:"unifiedTabBarLayoutStyle") tabBarIsCurrentlyScrollable:objc_msgSend(v4 tabsShowOnlyIcons:"numberOfTabsInCurrentTabBar") backgroundColorInTabBarEnabled:{objc_msgSend(v4, "tabBarIsCurrentlyScrollable"), objc_msgSend(v4, "tabsShowOnlyIcons"), objc_msgSend(v4, "backgroundColorInTabBarEnabled")}];
  }
}

- (WBSUnifiedBarAnalyticsRecorderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end