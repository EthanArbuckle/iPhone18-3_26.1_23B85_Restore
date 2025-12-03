@interface HDSPIDSServiceManager
+ (id)_allowedMessageClasses;
+ (void)_sendMessage:(id)message onService:(id)service;
- (BOOL)_shouldHandleMessageFromService:(id)service;
- (BOOL)_shouldSendCloudMessage:(id)message;
- (BOOL)_shouldSyncAlarmMessageFromSource:(unint64_t)source;
- (BOOL)_shouldSyncMessage;
- (BOOL)_shouldSyncSleepModeWithReason:(unint64_t)reason;
- (HDSPEnvironment)environment;
- (HDSPIDSServiceManager)initWithEnvironment:(id)environment;
- (HDSPIDSServiceManager)initWithEnvironment:(id)environment localService:(id)service cloudService:(id)cloudService;
- (NSString)sourceIdentifier;
- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name;
- (void)_handleConfirmWakeUpMessage:(id)message;
- (void)_handleDismissGoodMorningMessage:(id)message;
- (void)_handleNotifiedForEarlyWakeUpMessage:(id)message;
- (void)_handleReceivedMessage:(id)message;
- (void)_handleSetSleepModeMessage:(id)message;
- (void)_handleSleepAlarmDismissedMessage:(id)message;
- (void)_handleSleepAlarmSnoozedMessage:(id)message;
- (void)_handleTestMessage:(id)message;
- (void)environmentDidBecomeReady:(id)ready;
- (void)environmentWillBecomeReady:(id)ready;
- (void)goodMorningWasDismissed;
- (void)sendMessage:(id)message;
- (void)sendNotifiedForEarlyWakeUpMessage;
- (void)sendTestIDSMessage;
- (void)service:(id)service didReceiveMessage:(id)message;
- (void)sleepEventIsDue:(id)due;
- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason;
- (void)wakeUpAlarmWasDismissedFromSource:(unint64_t)source;
- (void)wakeUpAlarmWasSnoozedFromSource:(unint64_t)source;
@end

@implementation HDSPIDSServiceManager

- (HDSPIDSServiceManager)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  behavior = [environmentCopy behavior];
  if ([behavior supportsNanoSync])
  {
    v6 = HKSPDispatchQueueName();
    v7 = HKSPSerialQueueBackedScheduler();
    v8 = [HDSPIDSService localServiceWithScheduler:v7];
  }

  else
  {
    v8 = 0;
  }

  behavior2 = [environmentCopy behavior];
  features = [behavior2 features];
  if ([features sleepCloudKitSync])
  {
    v11 = HKSPDispatchQueueName();
    v12 = HKSPSerialQueueBackedScheduler();
    v13 = [HDSPIDSService cloudServiceWithScheduler:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(HDSPIDSServiceManager *)self initWithEnvironment:environmentCopy localService:v8 cloudService:v13];
  return v14;
}

- (HDSPIDSServiceManager)initWithEnvironment:(id)environment localService:(id)service cloudService:(id)cloudService
{
  environmentCopy = environment;
  serviceCopy = service;
  cloudServiceCopy = cloudService;
  v15.receiver = self;
  v15.super_class = HDSPIDSServiceManager;
  v11 = [(HDSPIDSServiceManager *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_environment, environmentCopy);
    objc_storeStrong(&v12->_localService, service);
    objc_storeStrong(&v12->_cloudService, cloudService);
    v13 = v12;
  }

  return v12;
}

- (void)environmentWillBecomeReady:(id)ready
{
  readyCopy = ready;
  sleepModeManager = [readyCopy sleepModeManager];
  [sleepModeManager addObserver:self];

  actionManager = [readyCopy actionManager];
  [actionManager addObserver:self];

  sleepScheduler = [readyCopy sleepScheduler];
  [sleepScheduler addEventHandler:self];

  notificationListener = [readyCopy notificationListener];

  [notificationListener addObserver:self];
}

- (void)environmentDidBecomeReady:(id)ready
{
  [(HDSPIDSService *)self->_localService setDelegate:self];
  cloudService = self->_cloudService;

  [(HDSPIDSService *)cloudService setDelegate:self];
}

- (void)sendNotifiedForEarlyWakeUpMessage
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(HDSPNotifiedForEarlyWakeUpIDSMessage);
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = v3;
    v5 = v8;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] syncing notifiedForEarlyWakeUpMessage %{public}@", &v7, 0x16u);
  }

  [(HDSPIDSServiceManager *)self sendMessage:v3];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendTestIDSMessage
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(HDSPTestIDSMessage);
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = v3;
    v5 = v8;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] syncing testIDSMessage %{public}@", &v7, 0x16u);
  }

  [(HDSPIDSServiceManager *)self sendMessage:v3];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(HDSPIDSServiceManager *)self _shouldSyncSleepModeWithReason:reason, mode])
  {
    v7 = [[HDSPSetSleepModeIDSMessage alloc] initWithSleepModeOn:change == 2];
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v7;
      v9 = v12;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] syncing setSleepModeMessage %{public}@", &v11, 0x16u);
    }

    [(HDSPIDSServiceManager *)self sendMessage:v7];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldSyncSleepModeWithReason:(unint64_t)reason
{
  v17 = *MEMORY[0x277D85DE8];
  _shouldSyncMessage = [(HDSPIDSServiceManager *)self _shouldSyncMessage];
  if (_shouldSyncMessage)
  {
    _shouldSyncMessage = HKSPSleepModeChangeReasonTreatedAsUserRequested();
    if (_shouldSyncMessage)
    {
      v5 = HKSPLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = objc_opt_class();
        v6 = v16;
        _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] checking if paired device supports focus mode", &v15, 0xCu);
      }

      WeakRetained = objc_loadWeakRetained(&self->_environment);
      behavior = [WeakRetained behavior];
      hksp_activePairedDeviceSupportsFocusMode = [behavior hksp_activePairedDeviceSupportsFocusMode];

      if (hksp_activePairedDeviceSupportsFocusMode)
      {
        v10 = HKSPLogForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = objc_opt_class();
          v15 = 138543362;
          v16 = v11;
          v12 = v11;
          _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] not syncing because paired device supports focus mode", &v15, 0xCu);
        }

        LOBYTE(_shouldSyncMessage) = 0;
      }

      else
      {
        LOBYTE(_shouldSyncMessage) = 1;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return _shouldSyncMessage;
}

- (BOOL)_shouldSyncMessage
{
  v18 = *MEMORY[0x277D85DE8];
  environment = [(HDSPIDSServiceManager *)self environment];
  currentContext = [environment currentContext];

  source = [currentContext source];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_7;
  }

  source2 = [currentContext source];
  dontSync = [source2 dontSync];

  if (!dontSync)
  {
LABEL_7:
    v11 = 1;
    goto LABEL_8;
  }

  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    source3 = [currentContext source];
    v14 = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = source3;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] not syncing message for source %{public}@", &v14, 0x16u);
  }

  v11 = 0;
LABEL_8:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_shouldSyncAlarmMessageFromSource:(unint64_t)source
{
  v10 = *MEMORY[0x277D85DE8];
  if (source == 2)
  {
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = objc_opt_class();
      v4 = v9;
      v5 = "[%{public}@] not syncing alarm message from Cloud";
      goto LABEL_7;
    }
  }

  else
  {
    if (source != 1)
    {
      result = 1;
      goto LABEL_10;
    }

    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = objc_opt_class();
      v4 = v9;
      v5 = "[%{public}@] not syncing alarm message from NanoSync";
LABEL_7:
      _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, v5, &v8, 0xCu);
    }
  }

  result = 0;
LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)wakeUpAlarmWasDismissedFromSource:(unint64_t)source
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(HDSPIDSServiceManager *)self _shouldSyncMessage]&& [(HDSPIDSServiceManager *)self _shouldSyncAlarmMessageFromSource:source])
  {
    environment = [(HDSPIDSServiceManager *)self environment];
    sleepScheduleModelManager = [environment sleepScheduleModelManager];
    sleepEventRecord = [sleepScheduleModelManager sleepEventRecord];

    v8 = [HDSPSleepAlarmDismissedIDSMessage alloc];
    wakeUpAlarmDismissedDate = [sleepEventRecord wakeUpAlarmDismissedDate];
    v10 = [(HDSPSleepAlarmDismissedIDSMessage *)v8 initWithDismissedDate:wakeUpAlarmDismissedDate];

    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v10;
      v12 = v15;
      _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] syncing wakeUpAlarmWasDismissed %{public}@", &v14, 0x16u);
    }

    [(HDSPIDSServiceManager *)self sendMessage:v10];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)wakeUpAlarmWasSnoozedFromSource:(unint64_t)source
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(HDSPIDSServiceManager *)self _shouldSyncMessage]&& [(HDSPIDSServiceManager *)self _shouldSyncAlarmMessageFromSource:source])
  {
    environment = [(HDSPIDSServiceManager *)self environment];
    sleepScheduleModelManager = [environment sleepScheduleModelManager];
    sleepEventRecord = [sleepScheduleModelManager sleepEventRecord];

    v8 = [HDSPSleepAlarmSnoozedIDSMessage alloc];
    wakeUpAlarmSnoozedUntilDate = [sleepEventRecord wakeUpAlarmSnoozedUntilDate];
    v10 = [(HDSPSleepAlarmSnoozedIDSMessage *)v8 initWithSnoozedUntilDate:wakeUpAlarmSnoozedUntilDate];

    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v10;
      v12 = v15;
      _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] syncing wakeUpAlarmWasSnoozed %{public}@", &v14, 0x16u);
    }

    [(HDSPIDSServiceManager *)self sendMessage:v10];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)goodMorningWasDismissed
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(HDSPIDSServiceManager *)self _shouldSyncMessage])
  {
    environment = [(HDSPIDSServiceManager *)self environment];
    sleepScheduleModelManager = [environment sleepScheduleModelManager];
    sleepEventRecord = [sleepScheduleModelManager sleepEventRecord];

    v6 = [HDSPDismissGoodMorningIDSMessage alloc];
    goodMorningDismissedDate = [sleepEventRecord goodMorningDismissedDate];
    v8 = [(HDSPDismissGoodMorningIDSMessage *)v6 initWithGoodMorningDismissedDate:goodMorningDismissedDate];

    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v8;
      v10 = v13;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] syncing dismissGoodMorningMessage %{public}@", &v12, 0x16u);
    }

    [(HDSPIDSServiceManager *)self sendMessage:v8];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sleepEventIsDue:(id)due
{
  identifier = [due identifier];
  v6 = [identifier isEqualToString:*MEMORY[0x277D621D8]];

  if ((v6 & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSPIDSServiceManager.m" lineNumber:196 description:@"Unexpected event received"];
  }

  [(HDSPIDSServiceManager *)self sendNotifiedForEarlyWakeUpMessage];
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (self->_localService && ([messageCopy destinations] & 1) != 0)
  {
    [objc_opt_class() _sendMessage:v5 onService:self->_localService];
  }

  if (self->_cloudService && [(HDSPIDSServiceManager *)self _shouldSendCloudMessage:v5])
  {
    [objc_opt_class() _sendMessage:v5 onService:self->_cloudService];
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)_shouldSendCloudMessage:(id)message
{
  v15 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  environment = [(HDSPIDSServiceManager *)self environment];
  sleepScheduleModelManager = [environment sleepScheduleModelManager];
  sleepSettings = [sleepScheduleModelManager sleepSettings];

  if ([sleepSettings shareAcrossDevices])
  {
    v8 = ([messageCopy destinations] >> 1) & 1;
  }

  else
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = objc_opt_class();
      v10 = v14;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] not sending cloud message because share across devices is disabled", &v13, 0xCu);
    }

    LOBYTE(v8) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (void)_sendMessage:(id)message onService:(id)service
{
  v23 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  serviceCopy = service;
  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v18 = objc_opt_class();
    v19 = 2114;
    v20 = messageCopy;
    v21 = 2114;
    v22 = serviceCopy;
    v9 = v18;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] sending message %{public}@ on service %{public}@", buf, 0x20u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__HDSPIDSServiceManager__sendMessage_onService___block_invoke;
  v13[3] = &unk_279C7C6F0;
  v15 = serviceCopy;
  selfCopy = self;
  v14 = messageCopy;
  v10 = serviceCopy;
  v11 = messageCopy;
  [v10 sendMessage:v11 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __48__HDSPIDSServiceManager__sendMessage_onService___block_invoke(void *a1, int a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HKSPLogForCategory();
  v7 = v6;
  if (!a2)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v14 = a1[6];
    v15 = objc_opt_class();
    v16 = a1[4];
    v17 = a1[5];
    v18 = 138544130;
    v19 = v15;
    v20 = 2114;
    v21 = v16;
    v22 = 2114;
    v23 = v5;
    v24 = 2114;
    v25 = v17;
    v12 = v15;
    _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to send message %{public}@ with error %{public}@ on service %{public}@", &v18, 0x2Au);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[6];
    v9 = objc_opt_class();
    v10 = a1[4];
    v11 = a1[5];
    v18 = 138543874;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    v22 = 2114;
    v23 = v11;
    v12 = v9;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] sent message %{public}@ on service %{public}@", &v18, 0x20u);
LABEL_4:
  }

LABEL_6:

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)_allowedMessageClasses
{
  if (qword_2814C0E68 != -1)
  {
    dispatch_once(&qword_2814C0E68, &__block_literal_global_15);
  }

  v3 = _MergedGlobals_17;

  return v3;
}

void __47__HDSPIDSServiceManager__allowedMessageClasses__block_invoke()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:7];
  v2 = [v0 setWithArray:{v1, v5, v6, v7, v8, v9, v10}];
  v3 = _MergedGlobals_17;
  _MergedGlobals_17 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service didReceiveMessage:(id)message
{
  v17 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  messageCopy = message;
  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543874;
    v12 = objc_opt_class();
    v13 = 2114;
    v14 = messageCopy;
    v15 = 2114;
    v16 = serviceCopy;
    v9 = v12;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] received message %{public}@ from service %{public}@", &v11, 0x20u);
  }

  if ([(HDSPIDSServiceManager *)self _shouldHandleMessageFromService:serviceCopy])
  {
    [(HDSPIDSServiceManager *)self _handleReceivedMessage:messageCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldHandleMessageFromService:(id)service
{
  v19 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  environment = [(HDSPIDSServiceManager *)self environment];
  sleepScheduleModelManager = [environment sleepScheduleModelManager];
  sleepSettings = [sleepScheduleModelManager sleepSettings];

  environment2 = [(HDSPIDSServiceManager *)self environment];
  behavior = [environment2 behavior];
  if ([behavior isAppleWatch])
  {
    watchSleepFeaturesEnabled = [sleepSettings watchSleepFeaturesEnabled];

    if ((watchSleepFeaturesEnabled & 1) == 0)
    {
      v11 = HKSPLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        v18 = objc_opt_class();
        v12 = v18;
        v13 = "[%{public}@] ignoring message because watch sleep features are disabled";
LABEL_11:
        _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, v13, &v17, 0xCu);

        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  if (self->_cloudService == serviceCopy && ([sleepSettings shareAcrossDevices] & 1) == 0)
  {
    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = objc_opt_class();
      v12 = v18;
      v13 = "[%{public}@] ignoring cloud message because share across devices is disabled";
      goto LABEL_11;
    }

LABEL_12:

    v14 = 0;
    goto LABEL_13;
  }

  v14 = 1;
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_handleReceivedMessage:(id)message
{
  messageCopy = message;
  environment = [(HDSPIDSServiceManager *)self environment];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HDSPIDSServiceManager__handleReceivedMessage___block_invoke;
  v7[3] = &unk_279C7B2D0;
  v8 = messageCopy;
  selfCopy = self;
  v6 = messageCopy;
  [environment perform:v7 withSource:self];
}

void __48__HDSPIDSServiceManager__handleReceivedMessage___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *MEMORY[0x277D85DE8];

    [v3 _handleSetSleepModeMessage:v4];
  }

  else
  {
    v6 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = *MEMORY[0x277D85DE8];

      [v7 _handleConfirmWakeUpMessage:v8];
    }

    else
    {
      v10 = *(a1 + 32);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = *(a1 + 32);
        v11 = *(a1 + 40);
        v13 = *MEMORY[0x277D85DE8];

        [v11 _handleDismissGoodMorningMessage:v12];
      }

      else
      {
        v14 = *(a1 + 32);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = *(a1 + 32);
          v15 = *(a1 + 40);
          v17 = *MEMORY[0x277D85DE8];

          [v15 _handleNotifiedForEarlyWakeUpMessage:v16];
        }

        else
        {
          v18 = *(a1 + 32);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = *(a1 + 32);
            v19 = *(a1 + 40);
            v21 = *MEMORY[0x277D85DE8];

            [v19 _handleSleepAlarmDismissedMessage:v20];
          }

          else
          {
            v22 = *(a1 + 32);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = *(a1 + 32);
              v23 = *(a1 + 40);
              v25 = *MEMORY[0x277D85DE8];

              [v23 _handleSleepAlarmSnoozedMessage:v24];
            }

            else
            {
              v26 = *(a1 + 32);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v28 = *(a1 + 32);
                v27 = *(a1 + 40);
                v29 = *MEMORY[0x277D85DE8];

                [v27 _handleTestMessage:v28];
              }

              else
              {
                v30 = HKSPLogForCategory();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v32 = *(a1 + 40);
                  v33 = objc_opt_class();
                  v34 = *(a1 + 32);
                  v36 = 138543618;
                  v37 = v33;
                  v38 = 2114;
                  v39 = v34;
                  v35 = v33;
                  _os_log_error_impl(&dword_269B11000, v30, OS_LOG_TYPE_ERROR, "[%{public}@] unexpected message received %{public}@", &v36, 0x16u);
                }

                v31 = *MEMORY[0x277D85DE8];
              }
            }
          }
        }
      }
    }
  }
}

- (void)_handleSetSleepModeMessage:(id)message
{
  v12 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 138543618;
    *&v11[4] = objc_opt_class();
    *&v11[12] = 2114;
    *&v11[14] = messageCopy;
    v6 = *&v11[4];
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] _handleSetSleepModeMessage: %{public}@", v11, 0x16u);
  }

  environment = [(HDSPIDSServiceManager *)self environment];
  sleepModeManager = [environment sleepModeManager];
  if ([messageCopy sleepModeOn])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  [sleepModeManager setSleepMode:v9 reason:{5, *v11, *&v11[16], v12}];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleConfirmWakeUpMessage:(id)message
{
  v17 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = objc_opt_class();
    v15 = 2114;
    v16 = messageCopy;
    v6 = v14;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] _handleConfirmWakeUpMessage: %{public}@", &v13, 0x16u);
  }

  environment = [(HDSPIDSServiceManager *)self environment];
  actionManager = [environment actionManager];
  wasExplicitConfirmation = [messageCopy wasExplicitConfirmation];
  wakeUpConfirmedDate = [messageCopy wakeUpConfirmedDate];
  wakeUpConfirmedUntilDate = [messageCopy wakeUpConfirmedUntilDate];
  [actionManager confirmWakeUp:wasExplicitConfirmation date:wakeUpConfirmedDate confirmUntilDate:wakeUpConfirmedUntilDate];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleDismissGoodMorningMessage:(id)message
{
  v15 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = objc_opt_class();
    v13 = 2114;
    v14 = messageCopy;
    v6 = v12;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] _handleDismissGoodMorningMessage: %{public}@", &v11, 0x16u);
  }

  environment = [(HDSPIDSServiceManager *)self environment];
  actionManager = [environment actionManager];
  goodMorningDismissed = [messageCopy goodMorningDismissed];
  [actionManager dismissGoodMorningOnDate:goodMorningDismissed];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleNotifiedForEarlyWakeUpMessage:(id)message
{
  v14 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = messageCopy;
    v6 = v11;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] _handleNotifiedForEarlyWakeUpMessage: %{public}@", &v10, 0x16u);
  }

  environment = [(HDSPIDSServiceManager *)self environment];
  wakeDetectionManager = [environment wakeDetectionManager];
  [wakeDetectionManager earlyWakeUpWasNotifiedRemotely];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleSleepAlarmDismissedMessage:(id)message
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  environment = [(HDSPIDSServiceManager *)self environment];
  behavior = [environment behavior];
  hksp_supportsSleepAlarms = [behavior hksp_supportsSleepAlarms];

  if ((hksp_supportsSleepAlarms & 1) == 0)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = messageCopy;
      v9 = v15;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] _handleSleepAlarmDismissedMessage: %{public}@", &v14, 0x16u);
    }

    environment2 = [(HDSPIDSServiceManager *)self environment];
    actionManager = [environment2 actionManager];
    dismissedDate = [messageCopy dismissedDate];
    [actionManager sleepAlarmDismissedOnDate:dismissedDate source:2];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleSleepAlarmSnoozedMessage:(id)message
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  environment = [(HDSPIDSServiceManager *)self environment];
  behavior = [environment behavior];
  hksp_supportsSleepAlarms = [behavior hksp_supportsSleepAlarms];

  if ((hksp_supportsSleepAlarms & 1) == 0)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = messageCopy;
      v9 = v15;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] _handleSleepAlarmSnoozedMessage: %{public}@", &v14, 0x16u);
    }

    environment2 = [(HDSPIDSServiceManager *)self environment];
    actionManager = [environment2 actionManager];
    snoozedUntilDate = [messageCopy snoozedUntilDate];
    [actionManager sleepAlarmSnoozedUntilDate:snoozedUntilDate source:2];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleTestMessage:(id)message
{
  v11 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = messageCopy;
    v5 = v8;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] _handleTestMessage: %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (NSString)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name
{
  v12 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy isEqualToString:@"com.apple.sleepd.ids.test"])
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 138543618;
      *&v11[4] = objc_opt_class();
      *&v11[12] = 2114;
      *&v11[14] = nameCopy;
      v7 = *&v11[4];
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] received %{public}@", v11, 0x16u);
    }

    [(HDSPIDSServiceManager *)self sendTestIDSMessage];
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  v9 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end