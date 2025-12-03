@interface RTWiFiManagerNotificationLeechScanResults
- (RTWiFiManagerNotificationLeechScanResults)initWithScanResults:(id)results;
@end

@implementation RTWiFiManagerNotificationLeechScanResults

- (RTWiFiManagerNotificationLeechScanResults)initWithScanResults:(id)results
{
  resultsCopy = results;
  v9.receiver = self;
  v9.super_class = RTWiFiManagerNotificationLeechScanResults;
  v5 = [(RTNotification *)&v9 init];
  if (v5)
  {
    v6 = [resultsCopy copy];
    scanResults = v5->_scanResults;
    v5->_scanResults = v6;
  }

  return v5;
}

@end