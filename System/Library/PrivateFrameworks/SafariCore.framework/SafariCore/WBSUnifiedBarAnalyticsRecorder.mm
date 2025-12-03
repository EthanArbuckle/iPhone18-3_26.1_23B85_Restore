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

  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [mainRunLoop addTimer:v6 forMode:*MEMORY[0x1E695D918]];
}

- (void)_reportAnalytics
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  unifiedBarAnalyticsProvider = [WeakRetained unifiedBarAnalyticsProvider];

  if ([unifiedBarAnalyticsProvider shouldReportUnifiedTabBarAnalytics])
  {
    v3 = +[WBSAnalyticsLogger sharedLogger];
    [v3 reportUnifiedTabBarStatusWithLayout:objc_msgSend(unifiedBarAnalyticsProvider numberOfTabsInCurrentTabBar:"unifiedTabBarLayoutStyle") tabBarIsCurrentlyScrollable:objc_msgSend(unifiedBarAnalyticsProvider tabsShowOnlyIcons:"numberOfTabsInCurrentTabBar") backgroundColorInTabBarEnabled:{objc_msgSend(unifiedBarAnalyticsProvider, "tabBarIsCurrentlyScrollable"), objc_msgSend(unifiedBarAnalyticsProvider, "tabsShowOnlyIcons"), objc_msgSend(unifiedBarAnalyticsProvider, "backgroundColorInTabBarEnabled")}];
  }
}

- (WBSUnifiedBarAnalyticsRecorderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end