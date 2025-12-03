@interface CACOutOfProcessPresentationManager
+ (int)axNotification;
+ (int64_t)remoteViewType;
- (BOOL)isShowing;
- (CACOutOfProcessPresentationManager)init;
- (void)handleAXNotificationData:(void *)data;
- (void)hide;
- (void)observer:(id)observer didObserveNotification:(int)notification notificationData:(void *)data;
- (void)presentWithData:(id)data;
@end

@implementation CACOutOfProcessPresentationManager

- (CACOutOfProcessPresentationManager)init
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = CACOutOfProcessPresentationManager;
  v2 = [(CACOutOfProcessPresentationManager *)&v11 init];
  if (v2)
  {
    axNotification = [objc_opt_class() axNotification];
    if (axNotification)
    {
      v4 = axNotification;
      v5 = [CACAXNotificationObserver alloc];
      v6 = [MEMORY[0x277CCABB0] numberWithInt:v4];
      v12[0] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      v8 = [(CACAXNotificationObserver *)v5 initWithNotifications:v7];

      [(CACAXNotificationObserver *)v8 setDelegate:v2];
      observer = v2->_observer;
      v2->_observer = v8;
    }
  }

  return v2;
}

- (void)presentWithData:(id)data
{
  v3 = MEMORY[0x277CE7E40];
  dataCopy = data;
  server = [v3 server];
  [server showRemoteView:objc_msgSend(objc_opt_class() withData:{"remoteViewType"), dataCopy}];
}

- (BOOL)isShowing
{
  server = [MEMORY[0x277CE7E40] server];
  v3 = [server isShowingRemoteView:{objc_msgSend(objc_opt_class(), "remoteViewType")}];

  return v3;
}

- (void)hide
{
  server = [MEMORY[0x277CE7E40] server];
  [server hideRemoteView:{objc_msgSend(objc_opt_class(), "remoteViewType")}];
}

- (void)observer:(id)observer didObserveNotification:(int)notification notificationData:(void *)data
{
  if ([objc_opt_class() axNotification] == notification)
  {

    [(CACOutOfProcessPresentationManager *)self handleAXNotificationData:data];
  }
}

+ (int64_t)remoteViewType
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_6();
  NSRequestConcreteImplementation();
  return 0;
}

+ (int)axNotification
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_6();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)handleAXNotificationData:(void *)data
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_6();

  NSRequestConcreteImplementation();
}

@end