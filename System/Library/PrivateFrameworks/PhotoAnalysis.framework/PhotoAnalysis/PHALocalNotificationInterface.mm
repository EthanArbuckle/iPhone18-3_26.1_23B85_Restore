@interface PHALocalNotificationInterface
+ (id)localNotificationInterface;
- (PHALocalNotificationInterface)init;
- (void)fireLocalNotificationWithOptions:(id)a3 completionHandler:(id)a4;
@end

@implementation PHALocalNotificationInterface

- (void)fireLocalNotificationWithOptions:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ((PLIsFeaturedContentAllowed() & 1) != 0 || [v5 type])
  {
    v7 = dispatch_get_global_queue(0, 0);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__PHALocalNotificationInterface_fireLocalNotificationWithOptions_completionHandler___block_invoke_33;
    v12[3] = &unk_2788B1910;
    v13 = v5;
    v14 = v6;
    dispatch_async(v7, v12);

    v8 = v13;
LABEL_4:

    goto LABEL_5;
  }

  if (__PXLoggraph_workerOnceToken != -1)
  {
    dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_27_1162);
  }

  v9 = __PXLoggraph_workerOSLog;
  if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = +[PHANotificationOptions stringFromNotificationType:](PHANotificationOptions, "stringFromNotificationType:", [v5 type]);
    *buf = 138412290;
    v16 = v11;
    _os_log_impl(&dword_22FA28000, v10, OS_LOG_TYPE_DEFAULT, "[%@ Notification] Not firing notification because featured content is disabled in settings", buf, 0xCu);
  }

  if (v6)
  {
    v8 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:14 localizedDescription:@"Featured content is disabled in settings"];
    (*(v6 + 2))(v6, 0, v8);
    goto LABEL_4;
  }

LABEL_5:
}

void __84__PHALocalNotificationInterface_fireLocalNotificationWithOptions_completionHandler___block_invoke_33(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) collectionUUID];
  v3 = [*(a1 + 32) deliveryDate];
  if (__PXLoggraph_workerOnceToken != -1)
  {
    dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_35);
  }

  v4 = __PXLoggraph_workerOSLog;
  if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = +[PHANotificationOptions stringFromNotificationType:](PHANotificationOptions, "stringFromNotificationType:", [v5 type]);
    v8 = *(a1 + 32);
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_INFO, "[%@ Notification] Firing notification %@", &v14, 0x16u);
  }

  v9 = [MEMORY[0x277CD9948] systemPhotoLibraryURL];
  v10 = [objc_alloc(MEMORY[0x277CD9948]) initWithPhotoLibraryURL:v9];
  if (![*(a1 + 32) type])
  {
    v11 = [v10 assetsdClient];
    v12 = [v11 notificationClient];
    [v12 asyncNotifyInterestingMemoryNotificationForColletionID:v2 notificationDeliveryDate:v3];
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, 1, 0);
  }
}

uint64_t __84__PHALocalNotificationInterface_fireLocalNotificationWithOptions_completionHandler___block_invoke_2()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

uint64_t __84__PHALocalNotificationInterface_fireLocalNotificationWithOptions_completionHandler___block_invoke()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

- (PHALocalNotificationInterface)init
{
  v3.receiver = self;
  v3.super_class = PHALocalNotificationInterface;
  result = [(PHALocalNotificationInterface *)&v3 init];
  if (result)
  {
    result->_isNotificationRegistered = 0;
  }

  return result;
}

+ (id)localNotificationInterface
{
  if (localNotificationInterface_onceToken != -1)
  {
    dispatch_once(&localNotificationInterface_onceToken, &__block_literal_global_1172);
  }

  v3 = localNotificationInterface_interface;

  return v3;
}

uint64_t __59__PHALocalNotificationInterface_localNotificationInterface__block_invoke()
{
  localNotificationInterface_interface = objc_alloc_init(PHALocalNotificationInterface);

  return MEMORY[0x2821F96F8]();
}

@end