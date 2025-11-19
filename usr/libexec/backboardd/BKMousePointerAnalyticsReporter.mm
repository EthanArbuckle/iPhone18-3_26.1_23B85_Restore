@interface BKMousePointerAnalyticsReporter
- (BKMousePointerAnalyticsReporter)init;
- (void)availableDevicesDidChange;
- (void)evaluatePeriodicReportingTrigger;
- (void)mousePointerGlobalDevicePreferencesDidChange:(id)a3;
- (void)setMousePointerController:(id)a3;
@end

@implementation BKMousePointerAnalyticsReporter

- (void)evaluatePeriodicReportingTrigger
{
  BSContinuousMachTimeNow();
  if (v3 - self->_lastReportedPeriodicTriggerTime > 86400.0)
  {
    v4 = [(BKMousePointerController *)self->_mousePointerController globalDevicePreferences];
    v5 = v4;
    if (v4)
    {
      analyticsReportingQueue = self->_analyticsReportingQueue;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000190A4;
      v8[3] = &unk_1000FD128;
      v8[4] = self;
      v9 = v4;
      dispatch_async(analyticsReportingQueue, v8);
      BSContinuousMachTimeNow();
      self->_lastReportedPeriodicTriggerTime = v7;
    }
  }
}

- (void)mousePointerGlobalDevicePreferencesDidChange:(id)a3
{
  v4 = a3;
  analyticsReportingQueue = self->_analyticsReportingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000181D8;
  v7[3] = &unk_1000FD128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(analyticsReportingQueue, v7);
}

- (void)availableDevicesDidChange
{
  v3 = [(BKMousePointerController *)self->_mousePointerController globalDevicePreferences];
  analyticsReportingQueue = self->_analyticsReportingQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100019098;
  v6[3] = &unk_1000FD128;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(analyticsReportingQueue, v6);
}

- (void)setMousePointerController:(id)a3
{
  v5 = a3;
  mousePointerController = self->_mousePointerController;
  v8 = v5;
  if (mousePointerController != v5)
  {
    [(BKMousePointerController *)mousePointerController removeGlobalDevicePreferencesObserver:self];
    objc_storeStrong(&self->_mousePointerController, a3);
    v7 = self->_mousePointerController;
    if (v7)
    {
      [(BKMousePointerController *)v7 addGlobalDevicePreferencesObserver:self];
    }
  }
}

- (BKMousePointerAnalyticsReporter)init
{
  v9.receiver = self;
  v9.super_class = BKMousePointerAnalyticsReporter;
  v2 = [(BKMousePointerAnalyticsReporter *)&v9 init];
  if (v2)
  {
    v3 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    gregorianCalendar = v2->_gregorianCalendar;
    v2->_gregorianCalendar = v3;

    v5 = dispatch_queue_create("BKMousePointerAnalyticsReporter Core Analytics Queue", 0);
    analyticsReportingQueue = v2->_analyticsReportingQueue;
    v2->_analyticsReportingQueue = v5;

    BSContinuousMachTimeNow();
    v2->_lastReportedPeriodicTriggerTime = v7;
  }

  return v2;
}

@end