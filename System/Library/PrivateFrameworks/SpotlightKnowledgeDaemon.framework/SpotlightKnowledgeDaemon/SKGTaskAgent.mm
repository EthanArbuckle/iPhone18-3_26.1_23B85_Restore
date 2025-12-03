@interface SKGTaskAgent
+ (void)initialize;
- (BOOL)start;
- (void)_runKnowledgeUpdatingWithJobContext:(id)context group:(id)group queue:(id)queue delegate:(id)delegate;
- (void)_setup;
- (void)beginDebugActivity:(id)activity event:(int64_t)event name:(const char *)name knowledgedQueue:(id)queue;
- (void)beginTaskWithName:(id)name knowledgeEvent:(int64_t)event logMessage:(id)message deviceUnlocked:(BOOL)unlocked knowledgedQueue:(id)queue progressBlock:(id)block checkpointBlock:(id)checkpointBlock completeBlock:(id)self0 cancelBlock:(id)self1 deferBlock:(id)self2;
- (void)didReceiveMemoryPressureNotification:(unint64_t)notification;
- (void)didReceiveSignal:(unint64_t)signal;
@end

@implementation SKGTaskAgent

+ (void)initialize
{
  v2 = [(CSXPCConnection *)[SKGTaskAgent alloc] initMachServiceListenerWithName:@"com.apple.spotlightknowledged" enableConnectionLogging:0];
  v3 = sTaskAgent;
  sTaskAgent = v2;

  v4 = sTaskAgent;

  [v4 _setup];
}

- (BOOL)start
{
  [(CSXPCConnection *)self startListener];
  knowledgedQueue = [(SKGTaskAgent *)self knowledgedQueue];
  dispatch_activate(knowledgedQueue);

  return 1;
}

- (void)beginTaskWithName:(id)name knowledgeEvent:(int64_t)event logMessage:(id)message deviceUnlocked:(BOOL)unlocked knowledgedQueue:(id)queue progressBlock:(id)block checkpointBlock:(id)checkpointBlock completeBlock:(id)self0 cancelBlock:(id)self1 deferBlock:(id)self2
{
  unlockedCopy = unlocked;
  v36 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  messageCopy = message;
  queueCopy = queue;
  blockCopy = block;
  checkpointBlockCopy = checkpointBlock;
  completeBlockCopy = completeBlock;
  cancelBlockCopy = cancelBlock;
  deferBlockCopy = deferBlock;
  v24 = objc_autoreleasePoolPush();
  if ((cancelBlockCopy[2](cancelBlockCopy) & 1) == 0)
  {
    if (_os_feature_enabled_impl())
    {
      selfCopy = self;
      if (atomic_fetch_add(atomic_counter, 1u))
      {
        deferBlockCopy[2](deferBlockCopy);
        atomic_fetch_add(atomic_counter, 0xFFFFFFFF);
      }

      else
      {
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v25 = SKGLogAgentInit();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v35 = nameCopy;
            _os_log_impl(&dword_231B25000, v25, OS_LOG_TYPE_DEFAULT, "Performing task:%@", buf, 0xCu);
          }
        }

        v27 = dispatch_group_create();
        v30 = [SKGJobContext defaultJobContextWithDeviceUnlocked:unlockedCopy];
        [v30 logEvent:event message:messageCopy];
        [v30 setTaskName:nameCopy];
        [(SKGTaskAgent *)selfCopy _runKnowledgeUpdatingWithJobContext:v30 group:v27 queue:queueCopy deferBlock:deferBlockCopy progressBlock:blockCopy checkpointBlock:checkpointBlockCopy completeBlock:completeBlockCopy cancelBlock:cancelBlockCopy];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __158__SKGTaskAgent_beginTaskWithName_knowledgeEvent_logMessage_deviceUnlocked_knowledgedQueue_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke;
        block[3] = &unk_27893CE68;
        v33 = nameCopy;
        dispatch_group_notify(v27, queueCopy, block);
      }
    }

    else
    {
      completeBlockCopy[2](completeBlockCopy);
    }
  }

  objc_autoreleasePoolPop(v24);

  v26 = *MEMORY[0x277D85DE8];
}

void __158__SKGTaskAgent_beginTaskWithName_knowledgeEvent_logMessage_deviceUnlocked_knowledgedQueue_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  atomic_fetch_add(atomic_counter, 0xFFFFFFFF);
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v2 = SKGLogAgentInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "Exiting process after task:%@", &v4, 0xCu);
    }
  }

  exit(0);
}

- (void)beginDebugActivity:(id)activity event:(int64_t)event name:(const char *)name knowledgedQueue:(id)queue
{
  v26 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  queueCopy = queue;
  v12 = objc_autoreleasePoolPush();
  if (xpc_activity_get_state(activityCopy) == 2)
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v13 = activityCopy;
      v14 = 5;
      goto LABEL_6;
    }

    if (atomic_fetch_add(atomic_counter, 1u))
    {
      atomic_fetch_add(atomic_counter, 0xFFFFFFFF);
      v13 = activityCopy;
      v14 = 3;
LABEL_6:
      xpc_activity_set_state(v13, v14);
      goto LABEL_7;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v16 = SKGLogAgentInit();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        nameCopy = name;
        _os_log_impl(&dword_231B25000, v16, OS_LOG_TYPE_DEFAULT, "Performing XPC activity:%s", buf, 0xCu);
      }
    }

    xpc_activity_set_state(activityCopy, 4);
    v17 = dispatch_group_create();
    v18 = [SKGJobContext defaultJobContextWithDeviceUnlocked:0];
    v19 = v18;
    switch(event)
    {
      case 1:
        v20 = @"debug inferring people";
        v21 = 1;
        break;
      case 7:
        v20 = @"debug reset";
        v21 = 7;
        break;
      case 2:
        v20 = @"debug indexing people";
        v21 = 2;
        break;
      default:
LABEL_19:
        [v19 logEvent:6 message:@"reporting"];
        [(SKGTaskAgent *)self _runKnowledgeUpdatingWithJobContext:v19 group:v17 queue:queueCopy delegate:0];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__SKGTaskAgent_beginDebugActivity_event_name_knowledgedQueue___block_invoke;
        block[3] = &unk_27893CE68;
        v23 = activityCopy;
        dispatch_group_notify(v17, queueCopy, block);

        goto LABEL_7;
    }

    [v18 logEvent:v21 message:v20];
    goto LABEL_19;
  }

LABEL_7:
  objc_autoreleasePoolPop(v12);

  v15 = *MEMORY[0x277D85DE8];
}

void __62__SKGTaskAgent_beginDebugActivity_event_name_knowledgedQueue___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (xpc_activity_get_state(*(a1 + 32)) != 3)
  {
    xpc_activity_set_state(*(a1 + 32), 5);
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v2 = SKGLogAgentInit();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315138;
        v5 = "com.apple.corespotlight.knowledge.debug.people";
        _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "Marked XPC activity:%s as done", &v4, 0xCu);
      }
    }
  }

  atomic_fetch_add(atomic_counter, 0xFFFFFFFF);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_setup
{
  v96 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D65750] setDelegate:self memoryStatusFlags:55];
  [MEMORY[0x277D65750] setupHandlers];
  v3 = dispatch_queue_attr_make_initially_inactive(0);
  v4 = dispatch_queue_attr_make_with_overcommit();
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);

  v7 = dispatch_queue_create("knowledge queue", v6);
  [(SKGTaskAgent *)self setKnowledgedQueue:v7];

  knowledgedQueue = [(SKGTaskAgent *)self knowledgedQueue];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v9 = SKGLogAgentInit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      uTF8String = [@"com.apple.corespotlight.knowledge.AB" UTF8String];
      _os_log_impl(&dword_231B25000, v9, OS_LOG_TYPE_DEFAULT, "Registering XPC task: %s", buf, 0xCu);
    }
  }

  mEMORY[0x277CF0810] = [MEMORY[0x277CF0810] sharedScheduler];
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = __22__SKGTaskAgent__setup__block_invoke;
  v92[3] = &unk_27893F610;
  v92[4] = self;
  v11 = knowledgedQueue;
  v93 = v11;
  [mEMORY[0x277CF0810] registerForTaskWithIdentifier:@"com.apple.corespotlight.knowledge.AB" usingQueue:0 launchHandler:v92];

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v12 = SKGLogAgentInit();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String2 = [@"com.apple.corespotlight.knowledge.journals.AB" UTF8String];
      *buf = 136315138;
      uTF8String = uTF8String2;
      _os_log_impl(&dword_231B25000, v12, OS_LOG_TYPE_DEFAULT, "Registering XPC task: %s", buf, 0xCu);
    }
  }

  mEMORY[0x277CF0810]2 = [MEMORY[0x277CF0810] sharedScheduler];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __22__SKGTaskAgent__setup__block_invoke_46;
  v90[3] = &unk_27893F610;
  v90[4] = self;
  v15 = v11;
  v91 = v15;
  [mEMORY[0x277CF0810]2 registerForTaskWithIdentifier:@"com.apple.corespotlight.knowledge.journals.AB" usingQueue:0 launchHandler:v90];

  if (_os_feature_enabled_impl())
  {
    v16 = objc_alloc_init(SKDMetricsJob);
    metricsJob = self->_metricsJob;
    self->_metricsJob = v16;
  }

  else
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v18 = SKGLogAgentInit();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String3 = [@"com.apple.corespotlight.knowledge.report" UTF8String];
        *buf = 136315138;
        uTF8String = uTF8String3;
        _os_log_impl(&dword_231B25000, v18, OS_LOG_TYPE_DEFAULT, "Registering background task: %s", buf, 0xCu);
      }
    }

    mEMORY[0x277CF0810]3 = [MEMORY[0x277CF0810] sharedScheduler];
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __22__SKGTaskAgent__setup__block_invoke_56;
    v88[3] = &unk_27893F610;
    v88[4] = self;
    v89 = v15;
    [mEMORY[0x277CF0810]3 registerForTaskWithIdentifier:@"com.apple.corespotlight.knowledge.report" usingQueue:0 launchHandler:v88];
  }

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v21 = SKGLogAgentInit();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String4 = [@"com.apple.corespotlight.knowledge" UTF8String];
      *buf = 136315138;
      uTF8String = uTF8String4;
      _os_log_impl(&dword_231B25000, v21, OS_LOG_TYPE_DEFAULT, "Registering XPC task: %s", buf, 0xCu);
    }
  }

  mEMORY[0x277CF0810]4 = [MEMORY[0x277CF0810] sharedScheduler];
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __22__SKGTaskAgent__setup__block_invoke_110;
  v86[3] = &unk_27893F610;
  v86[4] = self;
  v24 = v15;
  v87 = v24;
  [mEMORY[0x277CF0810]4 registerForTaskWithIdentifier:@"com.apple.corespotlight.knowledge" usingQueue:0 launchHandler:v86];

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v25 = SKGLogAgentInit();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String5 = [@"com.apple.corespotlight.knowledge.cascadeVerification" UTF8String];
      *buf = 136315138;
      uTF8String = uTF8String5;
      _os_log_impl(&dword_231B25000, v25, OS_LOG_TYPE_DEFAULT, "Registering XPC task: %s", buf, 0xCu);
    }
  }

  mEMORY[0x277CF0810]5 = [MEMORY[0x277CF0810] sharedScheduler];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __22__SKGTaskAgent__setup__block_invoke_118;
  v84[3] = &unk_27893F688;
  v28 = v24;
  v85 = v28;
  [mEMORY[0x277CF0810]5 registerForTaskWithIdentifier:@"com.apple.corespotlight.knowledge.cascadeVerification" usingQueue:0 launchHandler:v84];

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v29 = SKGLogAgentInit();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String6 = [@"com.apple.corespotlight.knowledge.journals" UTF8String];
      *buf = 136315138;
      uTF8String = uTF8String6;
      _os_log_impl(&dword_231B25000, v29, OS_LOG_TYPE_DEFAULT, "Registering XPC task: %s", buf, 0xCu);
    }
  }

  mEMORY[0x277CF0810]6 = [MEMORY[0x277CF0810] sharedScheduler];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __22__SKGTaskAgent__setup__block_invoke_129;
  v82[3] = &unk_27893F610;
  v82[4] = self;
  v32 = v28;
  v83 = v32;
  [mEMORY[0x277CF0810]6 registerForTaskWithIdentifier:@"com.apple.corespotlight.knowledge.journals" usingQueue:0 launchHandler:v82];

  v33 = +[SKDDefaults sharedDefaults];
  anyPipelineEnabled = [v33 anyPipelineEnabled];

  if (anyPipelineEnabled)
  {
    v35 = [SKGJobContext defaultJobContextWithDeviceUnlocked:0];
    v36 = +[SKDPipelineManager sharedManager];
    protectionClasses = [v35 protectionClasses];
    v38 = [v36 indexProcessingJobWithProtectionClasses:protectionClasses];

    if (v38)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v39 = SKGLogAgentInit();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          uTF8String7 = [@"com.apple.corespotlight.knowledge.indexing" UTF8String];
          *buf = 136315138;
          uTF8String = uTF8String7;
          _os_log_impl(&dword_231B25000, v39, OS_LOG_TYPE_DEFAULT, "Registering XPC task: %s", buf, 0xCu);
        }
      }

      v41 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v42 = dispatch_queue_create("com.apple.spotlight.indexing.task", v41);

      mEMORY[0x277CF0810]7 = [MEMORY[0x277CF0810] sharedScheduler];
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __22__SKGTaskAgent__setup__block_invoke_140;
      v79[3] = &unk_27893F610;
      v80 = v35;
      v81 = v38;
      [mEMORY[0x277CF0810]7 registerForTaskWithIdentifier:@"com.apple.corespotlight.knowledge.indexing" usingQueue:v42 launchHandler:v79];
    }
  }

  else
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v44 = SKGLogAgentInit();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String8 = [@"com.apple.corespotlight.knowledge.processing" UTF8String];
        *buf = 136315138;
        uTF8String = uTF8String8;
        _os_log_impl(&dword_231B25000, v44, OS_LOG_TYPE_DEFAULT, "Registering XPC task: %s", buf, 0xCu);
      }
    }

    v46 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v35 = dispatch_queue_create("com.apple.spotlight.processing.task", v46);

    mEMORY[0x277CF0810]8 = [MEMORY[0x277CF0810] sharedScheduler];
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __22__SKGTaskAgent__setup__block_invoke_152;
    v77[3] = &unk_27893F610;
    v77[4] = self;
    v78 = v32;
    [mEMORY[0x277CF0810]8 registerForTaskWithIdentifier:@"com.apple.corespotlight.knowledge.processing" usingQueue:v35 launchHandler:v77];
  }

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v48 = SKGLogAgentInit();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String9 = [@"com.apple.corespotlight.knowledge.inference" UTF8String];
      *buf = 136315138;
      uTF8String = uTF8String9;
      _os_log_impl(&dword_231B25000, v48, OS_LOG_TYPE_DEFAULT, "Registering XPC task: %s", buf, 0xCu);
    }
  }

  mEMORY[0x277CF0810]9 = [MEMORY[0x277CF0810] sharedScheduler];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __22__SKGTaskAgent__setup__block_invoke_160;
  v75[3] = &unk_27893F610;
  v75[4] = self;
  v51 = v32;
  v76 = v51;
  [mEMORY[0x277CF0810]9 registerForTaskWithIdentifier:@"com.apple.corespotlight.knowledge.inference" usingQueue:0 launchHandler:v75];

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v52 = SKGLogAgentInit();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      uTF8String = "com.apple.corespotlight.knowledge.debug.people";
      _os_log_impl(&dword_231B25000, v52, OS_LOG_TYPE_DEFAULT, "Registering Debug Update XPC activity:%s", buf, 0xCu);
    }
  }

  v53 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __22__SKGTaskAgent__setup__block_invoke_165;
  handler[3] = &unk_27893F6D8;
  handler[4] = self;
  v54 = v51;
  v74 = v54;
  xpc_activity_register("com.apple.corespotlight.knowledge.debug.people", v53, handler);
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v55 = SKGLogAgentInit();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      uTF8String = "com.apple.corespotlight.knowledge.debug.inference";
      _os_log_impl(&dword_231B25000, v55, OS_LOG_TYPE_DEFAULT, "Registering Debug Inference XPC activity:%s", buf, 0xCu);
    }
  }

  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __22__SKGTaskAgent__setup__block_invoke_168;
  v71[3] = &unk_27893F6D8;
  v71[4] = self;
  v56 = v54;
  v72 = v56;
  xpc_activity_register("com.apple.corespotlight.knowledge.debug.inference", v53, v71);
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v57 = SKGLogAgentInit();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      uTF8String = "com.apple.corespotlight.knowledge.debug.reset";
      _os_log_impl(&dword_231B25000, v57, OS_LOG_TYPE_DEFAULT, "Registering Debug Reset XPC activity:%s", buf, 0xCu);
    }
  }

  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __22__SKGTaskAgent__setup__block_invoke_170;
  v69[3] = &unk_27893F6D8;
  v69[4] = self;
  v58 = v56;
  v70 = v58;
  xpc_activity_register("com.apple.corespotlight.knowledge.debug.reset", v53, v69);
  mEMORY[0x277CF0810]10 = [MEMORY[0x277CF0810] sharedScheduler];
  v64 = MEMORY[0x277D85DD0];
  v65 = 3221225472;
  v66 = __22__SKGTaskAgent__setup__block_invoke_2_174;
  v67 = &unk_27893F720;
  v68 = v58;
  v60 = v58;
  [mEMORY[0x277CF0810]10 registerForTaskWithIdentifier:@"com.apple.corespotlight.knowledge.cascadeDonateNow" usingQueue:0 launchHandler:&v64];

  mEMORY[0x277D65738] = [MEMORY[0x277D65738] sharedInstance];
  [mEMORY[0x277D65738] registerHandler:&__block_literal_global_186 forEventName:@"com.apple.CascadeSets.DonateNow"];

  mEMORY[0x277D65738]2 = [MEMORY[0x277D65738] sharedInstance];
  [mEMORY[0x277D65738]2 startMonitoringEvents];

  v63 = *MEMORY[0x277D85DE8];
}

void __22__SKGTaskAgent__setup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __22__SKGTaskAgent__setup__block_invoke_2;
  v13[3] = &unk_27893F0D0;
  v13[4] = v14;
  [v3 setExpirationHandler:v13];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __22__SKGTaskAgent__setup__block_invoke_39;
  v11[3] = &unk_27893CE68;
  v12 = v3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__SKGTaskAgent__setup__block_invoke_2_40;
  v10[3] = &unk_27893F5E8;
  v10[4] = v14;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __22__SKGTaskAgent__setup__block_invoke_3;
  v8[3] = &unk_27893CE68;
  v7 = v12;
  v9 = v7;
  [v6 beginGraphIndexingTaskWithName:@"com.apple.corespotlight.knowledge.AB" deviceUnlocked:1 knowledgedQueue:v5 completeBlock:v11 cancelBlock:v10 deferBlock:v8];

  _Block_object_dispose(v14, 8);
  objc_autoreleasePoolPop(v4);
}

void __22__SKGTaskAgent__setup__block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v2 = SKGLogAgentInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = @"com.apple.corespotlight.knowledge.AB";
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "Task %@ cancelled", &v4, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v3 = *MEMORY[0x277D85DE8];
}

void __22__SKGTaskAgent__setup__block_invoke_46(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __22__SKGTaskAgent__setup__block_invoke_2_47;
  v13[3] = &unk_27893F0D0;
  v13[4] = v14;
  [v3 setExpirationHandler:v13];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __22__SKGTaskAgent__setup__block_invoke_48;
  v11[3] = &unk_27893CE68;
  v12 = v3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__SKGTaskAgent__setup__block_invoke_2_49;
  v10[3] = &unk_27893F5E8;
  v10[4] = v14;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __22__SKGTaskAgent__setup__block_invoke_3_50;
  v8[3] = &unk_27893CE68;
  v7 = v12;
  v9 = v7;
  [v6 beginJournalingTaskWithName:@"com.apple.corespotlight.knowledge.journals.AB" deviceUnlocked:1 knowledgedQueue:v5 completeBlock:v11 cancelBlock:v10 deferBlock:v8];

  _Block_object_dispose(v14, 8);
  objc_autoreleasePoolPop(v4);
}

void __22__SKGTaskAgent__setup__block_invoke_2_47(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v2 = SKGLogAgentInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = @"com.apple.corespotlight.knowledge.journals.AB";
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "Task %@ cancelled", &v4, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v3 = *MEMORY[0x277D85DE8];
}

void __22__SKGTaskAgent__setup__block_invoke_56(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __22__SKGTaskAgent__setup__block_invoke_2_57;
  v13[3] = &unk_27893F0D0;
  v13[4] = v14;
  [v3 setExpirationHandler:v13];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __22__SKGTaskAgent__setup__block_invoke_71;
  v11[3] = &unk_27893CE68;
  v12 = v3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__SKGTaskAgent__setup__block_invoke_2_72;
  v10[3] = &unk_27893F5E8;
  v10[4] = v14;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __22__SKGTaskAgent__setup__block_invoke_3_73;
  v8[3] = &unk_27893CE68;
  v7 = v12;
  v9 = v7;
  [v6 beginReportTaskWithName:@"com.apple.corespotlight.knowledge.report" deviceUnlocked:1 knowledgedQueue:v5 progressBlock:&__block_literal_global_42 checkpointBlock:&__block_literal_global_69_0 completeBlock:v11 cancelBlock:v10 deferBlock:v8];

  _Block_object_dispose(v14, 8);
  objc_autoreleasePoolPop(v4);
}

void __22__SKGTaskAgent__setup__block_invoke_2_57(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v2 = SKGLogAgentInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = @"com.apple.corespotlight.knowledge.report";
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "Task %@ cancelled", &v4, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v3 = *MEMORY[0x277D85DE8];
}

void __22__SKGTaskAgent__setup__block_invoke_58(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x277CF07F8];
  v9 = a3;
  v10 = [v8 alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v13 = [v10 initWithIdentifier:v9 qos:&unk_2846E7F20 workloadCategory:a2 expectedMetricValue:0 itemsCompleted:v11 totalItemCount:v12];

  v14 = [MEMORY[0x277CF0810] sharedScheduler];
  v17 = 0;
  [v14 reportProgressMetrics:v13 error:&v17];
  v15 = v17;

  if (v15 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v16 = SKGLogAgentInit();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __22__SKGTaskAgent__setup__block_invoke_58_cold_1();
    }
  }
}

void __22__SKGTaskAgent__setup__block_invoke_66(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = [MEMORY[0x277CF07F0] reportFeatureCheckpoint:a2 forFeature:900 atDate:0 error:&v6];
  v4 = v6;
  if ((v3 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v5 = SKGLogAgentInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __22__SKGTaskAgent__setup__block_invoke_66_cold_1(v4, a2);
    }
  }
}

uint64_t __22__SKGTaskAgent__setup__block_invoke_3_73(uint64_t a1)
{
  result = deferTask(*(a1 + 32), 300.0);
  if ((result & 1) == 0)
  {
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();

    return AnalyticsSendEventLazy();
  }

  return result;
}

void __22__SKGTaskAgent__setup__block_invoke_110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __22__SKGTaskAgent__setup__block_invoke_2_111;
  v13[3] = &unk_27893F0D0;
  v13[4] = v14;
  [v3 setExpirationHandler:v13];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __22__SKGTaskAgent__setup__block_invoke_112;
  v11[3] = &unk_27893CE68;
  v12 = v3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__SKGTaskAgent__setup__block_invoke_2_113;
  v10[3] = &unk_27893F5E8;
  v10[4] = v14;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __22__SKGTaskAgent__setup__block_invoke_3_114;
  v8[3] = &unk_27893CE68;
  v7 = v12;
  v9 = v7;
  [v6 beginGraphIndexingTaskWithName:@"com.apple.corespotlight.knowledge" deviceUnlocked:0 knowledgedQueue:v5 completeBlock:v11 cancelBlock:v10 deferBlock:v8];

  _Block_object_dispose(v14, 8);
  objc_autoreleasePoolPop(v4);
}

void __22__SKGTaskAgent__setup__block_invoke_2_111(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v2 = SKGLogAgentInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = @"com.apple.corespotlight.knowledge";
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "Task %@ cancelled", &v4, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v3 = *MEMORY[0x277D85DE8];
}

void __22__SKGTaskAgent__setup__block_invoke_118(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__SKGTaskAgent__setup__block_invoke_2_119;
  v10[3] = &unk_27893F0D0;
  v10[4] = v11;
  [v3 setExpirationHandler:v10];
  v5 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__SKGTaskAgent__setup__block_invoke_120;
  block[3] = &unk_27893F660;
  v6 = v3;
  v8 = v6;
  v9 = v11;
  dispatch_async(v5, block);

  _Block_object_dispose(v11, 8);
  objc_autoreleasePoolPop(v4);
}

void __22__SKGTaskAgent__setup__block_invoke_2_119(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v2 = SKGLogAgentInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = @"com.apple.corespotlight.knowledge.cascadeVerification";
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "Task %@ cancelled", &v4, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v3 = *MEMORY[0x277D85DE8];
}

void __22__SKGTaskAgent__setup__block_invoke_120(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = indexRootPath();
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    createCascadeRootDirectory();
    v5 = +[CSAppEntityUpdater sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __22__SKGTaskAgent__setup__block_invoke_123;
    v10[3] = &unk_27893F5E8;
    v10[4] = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __22__SKGTaskAgent__setup__block_invoke_2_124;
    v8[3] = &unk_27893F638;
    v9 = *(a1 + 32);
    [v5 runNightlyVerification:v10 completionHandler:v8];
  }

  else
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v6 = SKGLogAgentInit();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = @"com.apple.corespotlight.knowledge.cascadeVerification";
        _os_log_impl(&dword_231B25000, v6, OS_LOG_TYPE_DEFAULT, "spotlight root directory not present, no work to perform for activity %@", buf, 0xCu);
      }
    }

    completeTask(*(a1 + 32));
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __22__SKGTaskAgent__setup__block_invoke_2_124(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v3 = SKGLogAgentInit();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412290;
        v8 = @"com.apple.corespotlight.knowledge.cascadeVerification";
        _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_DEFAULT, "task %@ expired, rescheduling to continue work with default retry interval", &v7, 0xCu);
      }
    }

    deferTask(*(a1 + 32), 3600.0);
    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *MEMORY[0x277D85DE8];

    completeTask(v5);
  }
}

void __22__SKGTaskAgent__setup__block_invoke_129(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __22__SKGTaskAgent__setup__block_invoke_2_130;
  v13[3] = &unk_27893F0D0;
  v13[4] = v14;
  [v3 setExpirationHandler:v13];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __22__SKGTaskAgent__setup__block_invoke_131;
  v11[3] = &unk_27893CE68;
  v12 = v3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__SKGTaskAgent__setup__block_invoke_2_132;
  v10[3] = &unk_27893F5E8;
  v10[4] = v14;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __22__SKGTaskAgent__setup__block_invoke_3_133;
  v8[3] = &unk_27893CE68;
  v7 = v12;
  v9 = v7;
  [v6 beginJournalingTaskWithName:@"com.apple.corespotlight.knowledge.journals" deviceUnlocked:0 knowledgedQueue:v5 completeBlock:v11 cancelBlock:v10 deferBlock:v8];

  _Block_object_dispose(v14, 8);
  objc_autoreleasePoolPop(v4);
}

void __22__SKGTaskAgent__setup__block_invoke_2_130(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v2 = SKGLogAgentInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = @"com.apple.corespotlight.knowledge.journals";
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "Task %@ cancelled", &v4, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v3 = *MEMORY[0x277D85DE8];
}

void __22__SKGTaskAgent__setup__block_invoke_140(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __22__SKGTaskAgent__setup__block_invoke_2_141;
  v11[3] = &unk_27893F0D0;
  v11[4] = v12;
  [v3 setExpirationHandler:v11];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v5 = SKGLogAgentInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = @"com.apple.corespotlight.knowledge.indexing";
      _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_DEFAULT, "Performing task:%@", buf, 0xCu);
    }
  }

  v6 = objc_autoreleasePoolPush();
  [*(a1 + 32) logEvent:20 message:@"indexing attrs"];
  [*(a1 + 32) setTaskName:@"com.apple.corespotlight.knowledge.indexing"];
  [*(a1 + 32) startTextProcessingJob];
  v7 = [[SKGJob alloc] initWithJobContext:*(a1 + 32)];
  [*(a1 + 32) startTextQueries];
  v8 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__SKGTaskAgent__setup__block_invoke_146;
  v10[3] = &unk_27893F6B0;
  v10[4] = v12;
  [(SKGJob *)v7 performCSIndexProcessingJob:v8 cancelBlock:v10];
  [*(a1 + 32) finishedTextQueries];
  [*(a1 + 32) finishedTextProcessingJob];

  objc_autoreleasePoolPop(v6);
  _Block_object_dispose(v12, 8);
  objc_autoreleasePoolPop(v4);

  v9 = *MEMORY[0x277D85DE8];
}

void __22__SKGTaskAgent__setup__block_invoke_2_141(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v2 = SKGLogAgentInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = @"com.apple.corespotlight.knowledge.indexing";
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "Task %@ cancelled", &v4, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v3 = *MEMORY[0x277D85DE8];
}

void __22__SKGTaskAgent__setup__block_invoke_152(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __22__SKGTaskAgent__setup__block_invoke_2_153;
  v13[3] = &unk_27893F0D0;
  v13[4] = v14;
  [v3 setExpirationHandler:v13];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __22__SKGTaskAgent__setup__block_invoke_154;
  v11[3] = &unk_27893CE68;
  v12 = v3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__SKGTaskAgent__setup__block_invoke_2_155;
  v10[3] = &unk_27893F5E8;
  v10[4] = v14;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __22__SKGTaskAgent__setup__block_invoke_3_156;
  v8[3] = &unk_27893CE68;
  v7 = v12;
  v9 = v7;
  [v6 beginProcessingTaskWithName:@"com.apple.corespotlight.knowledge.processing" deviceUnlocked:0 knowledgedQueue:v5 completeBlock:v11 cancelBlock:v10 deferBlock:v8];

  _Block_object_dispose(v14, 8);
  objc_autoreleasePoolPop(v4);
}

void __22__SKGTaskAgent__setup__block_invoke_2_153(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v2 = SKGLogAgentInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = @"com.apple.corespotlight.knowledge.processing";
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "Task %@ cancelled", &v4, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v3 = *MEMORY[0x277D85DE8];
}

void __22__SKGTaskAgent__setup__block_invoke_160(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __22__SKGTaskAgent__setup__block_invoke_2_161;
  v13[3] = &unk_27893F0D0;
  v13[4] = v14;
  [v3 setExpirationHandler:v13];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __22__SKGTaskAgent__setup__block_invoke_162;
  v11[3] = &unk_27893CE68;
  v12 = v3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__SKGTaskAgent__setup__block_invoke_2_163;
  v10[3] = &unk_27893F5E8;
  v10[4] = v14;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __22__SKGTaskAgent__setup__block_invoke_3_164;
  v8[3] = &unk_27893CE68;
  v7 = v12;
  v9 = v7;
  [v6 beginInferenceTaskWithName:@"com.apple.corespotlight.knowledge.inference" deviceUnlocked:0 knowledgedQueue:v5 completeBlock:v11 cancelBlock:v10 deferBlock:v8];

  _Block_object_dispose(v14, 8);
  objc_autoreleasePoolPop(v4);
}

void __22__SKGTaskAgent__setup__block_invoke_2_161(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v2 = SKGLogAgentInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = @"com.apple.corespotlight.knowledge.inference";
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "Task %@ cancelled", &v4, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v3 = *MEMORY[0x277D85DE8];
}

void __22__SKGTaskAgent__setup__block_invoke_2_174(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __22__SKGTaskAgent__setup__block_invoke_3_175;
  v8[3] = &unk_27893F0D0;
  v8[4] = v9;
  [v3 setExpirationHandler:v8];
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __22__SKGTaskAgent__setup__block_invoke_176;
  v6[3] = &unk_27893CE68;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  _Block_object_dispose(v9, 8);
}

void __22__SKGTaskAgent__setup__block_invoke_3_175(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v2 = SKGLogAgentInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = @"com.apple.corespotlight.knowledge.cascadeDonateNow";
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "Task %@ is expiring, but ignoring cancellation DonateNow task must complete", &v4, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v3 = *MEMORY[0x277D85DE8];
}

void __22__SKGTaskAgent__setup__block_invoke_176(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = indexRootPath();
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    createCascadeRootDirectory();
    v5 = +[CSAppEntityUpdater sharedInstance];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __22__SKGTaskAgent__setup__block_invoke_2_180;
    v8[3] = &unk_27893F638;
    v9 = *(a1 + 32);
    [v5 handleDonateNowNotification:&__block_literal_global_179_0 completionHandler:v8];
  }

  else
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v6 = SKGLogAgentInit();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = @"com.apple.corespotlight.knowledge.cascadeDonateNow";
        _os_log_impl(&dword_231B25000, v6, OS_LOG_TYPE_DEFAULT, "spotlight root directory not present, no work to perform for activity %@", buf, 0xCu);
      }
    }

    completeTask(*(a1 + 32));
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __22__SKGTaskAgent__setup__block_invoke_3_183()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CF0810] sharedScheduler];
  v1 = [v0 taskRequestForIdentifier:@"com.apple.corespotlight.knowledge.cascadeDonateNow"];

  v2 = v1;
  if (!v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:@"com.apple.corespotlight.knowledge.cascadeDonateNow"];
  }

  [v2 setRequiresProtectionClass:4];
  [v2 setPriority:2];
  [v2 setResourceIntensive:1];
  [v2 setResources:5];
  [v2 setInvolvedProcesses:&unk_2846E8580];
  v3 = [MEMORY[0x277CF0810] sharedScheduler];
  v4 = v3;
  if (v1)
  {
    v11 = 0;
    v5 = [v3 updateTaskRequest:v2 error:&v11];
    v6 = v11;

    if ((v5 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v7 = SKGLogAgentInit();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v13 = @"com.apple.corespotlight.knowledge.cascadeDonateNow";
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEFAULT, "Failed to update existing task request for %@ with error %@", buf, 0x16u);
      }

LABEL_12:
    }
  }

  else
  {
    v10 = 0;
    v8 = [v3 submitTaskRequest:v2 error:&v10];
    v6 = v10;

    if ((v8 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v7 = SKGLogAgentInit();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __22__SKGTaskAgent__setup__block_invoke_3_183_cold_1();
      }

      goto LABEL_12;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveSignal:(unint64_t)signal
{
  v8 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v4 = SKGLogAgentInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      signalCopy = signal;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "didReceiveSignal %ld", &v6, 0xCu);
    }
  }

  if (signal == 15)
  {
    exit(0);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveMemoryPressureNotification:(unint64_t)notification
{
  v8 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v4 = SKGLogAgentInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      notificationCopy = notification;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "didReceiveMemoryPressureNotification %llx", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_runKnowledgeUpdatingWithJobContext:(id)context group:(id)group queue:(id)queue delegate:(id)delegate
{
  contextCopy = context;
  groupCopy = group;
  delegateCopy = delegate;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SKGTaskAgent__runKnowledgeUpdatingWithJobContext_group_queue_delegate___block_invoke;
  block[3] = &unk_27893D928;
  v16 = contextCopy;
  v17 = groupCopy;
  v18 = delegateCopy;
  v12 = delegateCopy;
  v13 = groupCopy;
  v14 = contextCopy;
  dispatch_group_async(v13, queue, block);
}

void __22__SKGTaskAgent__setup__block_invoke_58_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = @"com.apple.spotlightknowledged.task";
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_11(&dword_231B25000, v0, v1, "Failed to report task progress %@: %@", &v3);
  v2 = *MEMORY[0x277D85DE8];
}

void __22__SKGTaskAgent__setup__block_invoke_66_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a2;
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_11(&dword_231B25000, v2, v2, "Failed to report DAS checkpoint %lu: %@", &v4);
  v3 = *MEMORY[0x277D85DE8];
}

void __22__SKGTaskAgent__setup__block_invoke_3_183_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = @"com.apple.corespotlight.knowledge.cascadeDonateNow";
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_11(&dword_231B25000, v0, v1, "Failed to submit task request for %@ with error %@", &v3);
  v2 = *MEMORY[0x277D85DE8];
}

@end