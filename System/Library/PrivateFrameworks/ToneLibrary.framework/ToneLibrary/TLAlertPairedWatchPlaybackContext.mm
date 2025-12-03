@interface TLAlertPairedWatchPlaybackContext
- (TLAlertPairedWatchPlaybackContext)initWithAlert:(id)alert completionHandler:(id)handler;
@end

@implementation TLAlertPairedWatchPlaybackContext

- (TLAlertPairedWatchPlaybackContext)initWithAlert:(id)alert completionHandler:(id)handler
{
  alertCopy = alert;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = TLAlertPairedWatchPlaybackContext;
  v9 = [(TLAlertPairedWatchPlaybackContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_alert, alert);
    v11 = [handlerCopy copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

@end