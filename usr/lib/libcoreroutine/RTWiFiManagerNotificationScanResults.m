@interface RTWiFiManagerNotificationScanResults
- (RTWiFiManagerNotificationScanResults)initWithScanResults:(id)a3;
@end

@implementation RTWiFiManagerNotificationScanResults

- (RTWiFiManagerNotificationScanResults)initWithScanResults:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RTWiFiManagerNotificationScanResults;
  v5 = [(RTNotification *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    scanResults = v5->_scanResults;
    v5->_scanResults = v6;
  }

  return v5;
}

@end