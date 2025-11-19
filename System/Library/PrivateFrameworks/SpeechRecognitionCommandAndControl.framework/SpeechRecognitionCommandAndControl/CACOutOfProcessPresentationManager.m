@interface CACOutOfProcessPresentationManager
+ (int)axNotification;
+ (int64_t)remoteViewType;
- (BOOL)isShowing;
- (CACOutOfProcessPresentationManager)init;
- (void)handleAXNotificationData:(void *)a3;
- (void)hide;
- (void)observer:(id)a3 didObserveNotification:(int)a4 notificationData:(void *)a5;
- (void)presentWithData:(id)a3;
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
    v3 = [objc_opt_class() axNotification];
    if (v3)
    {
      v4 = v3;
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

- (void)presentWithData:(id)a3
{
  v3 = MEMORY[0x277CE7E40];
  v4 = a3;
  v5 = [v3 server];
  [v5 showRemoteView:objc_msgSend(objc_opt_class() withData:{"remoteViewType"), v4}];
}

- (BOOL)isShowing
{
  v2 = [MEMORY[0x277CE7E40] server];
  v3 = [v2 isShowingRemoteView:{objc_msgSend(objc_opt_class(), "remoteViewType")}];

  return v3;
}

- (void)hide
{
  v2 = [MEMORY[0x277CE7E40] server];
  [v2 hideRemoteView:{objc_msgSend(objc_opt_class(), "remoteViewType")}];
}

- (void)observer:(id)a3 didObserveNotification:(int)a4 notificationData:(void *)a5
{
  if ([objc_opt_class() axNotification] == a4)
  {

    [(CACOutOfProcessPresentationManager *)self handleAXNotificationData:a5];
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

- (void)handleAXNotificationData:(void *)a3
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_6();

  NSRequestConcreteImplementation();
}

@end