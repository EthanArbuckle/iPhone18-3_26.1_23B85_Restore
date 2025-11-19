@interface SVXMyriadDeviceManager
- (SVXMyriadDeviceManager)initWithInstanceContext:(id)a3 analytics:(id)a4 preferences:(id)a5 delegate:(id)a6;
- (void)_initializeMyriadDeviceWithInstanceContext:(id)a3 analytics:(id)a4 preferences:(id)a5 delegate:(id)a6 workQueue:(id)a7 analyticsQueue:(id)a8;
- (void)preheatMyriad;
- (void)resetMyriad;
- (void)startAdvertising:(unint64_t)a3 withSCDAGoodnessScoreContext:(id)a4 withSCDAAudioContext:(id)a5 completion:(id)a6;
@end

@implementation SVXMyriadDeviceManager

- (void)resetMyriad
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SVXMyriadDeviceManager resetMyriad]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s #myriad", &v5, 0xCu);
  }

  [(SVXMyriadRequestDelegate *)self->_device resetMyriad];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)preheatMyriad
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SVXMyriadDeviceManager preheatMyriad]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s #myriad", &v5, 0xCu);
  }

  [(SVXMyriadRequestDelegate *)self->_device preheatMyriad];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)startAdvertising:(unint64_t)a3 withSCDAGoodnessScoreContext:(id)a4 withSCDAAudioContext:(id)a5 completion:(id)a6
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[SVXMyriadDeviceManager startAdvertising:withSCDAGoodnessScoreContext:withSCDAAudioContext:completion:]";
    _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s #myriad", &v15, 0xCu);
  }

  [(SVXMyriadRequestDelegate *)self->_device startAdvertising:a3 withSCDAGoodnessScoreContext:v10 withSCDAAudioContext:v11 completion:v12];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_initializeMyriadDeviceWithInstanceContext:(id)a3 analytics:(id)a4 preferences:(id)a5 delegate:(id)a6 workQueue:(id)a7 analyticsQueue:(id)a8
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = a7;
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v16 = 136315138;
    v17 = "[SVXMyriadDeviceManager _initializeMyriadDeviceWithInstanceContext:analytics:preferences:delegate:workQueue:analyticsQueue:]";
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s #myriad Initializing Myriad on host device", &v16, 0xCu);
  }

  v13 = [[SVXMyriadHostDevice alloc] initWithDelegate:v10 queue:v11];
  device = self->_device;
  self->_device = v13;

  v15 = *MEMORY[0x277D85DE8];
}

- (SVXMyriadDeviceManager)initWithInstanceContext:(id)a3 analytics:(id)a4 preferences:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = SVXMyriadDeviceManager;
  v14 = [(SVXMyriadDeviceManager *)&v25 init];
  if (v14)
  {
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_USER_INTERACTIVE, 0);

    if (SVXDispatchRootQueueGetHighPriority_onceToken != -1)
    {
      dispatch_once(&SVXDispatchRootQueueGetHighPriority_onceToken, &__block_literal_global_4986);
    }

    v17 = SVXDispatchRootQueueGetHighPriority_queue;
    v18 = dispatch_queue_create_with_target_V2("com.apple.SiriHeadlessService.myriadproxy", v16, v17);
    queue = v14->_queue;
    v14->_queue = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_UTILITY, 0);

    v22 = dispatch_queue_create("com.apple.SiriHeadlessService.myriadproxy.analytics", v21);
    analyticsQueue = v14->_analyticsQueue;
    v14->_analyticsQueue = v22;

    [(SVXMyriadDeviceManager *)v14 _initializeMyriadDeviceWithInstanceContext:v10 analytics:v11 preferences:v12 delegate:v13 workQueue:v14->_queue analyticsQueue:v14->_analyticsQueue];
  }

  return v14;
}

@end