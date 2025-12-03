@interface SCDAArbitrationParticipationController
- (AFSettingsConnection)settingsConnection;
- (SCDAArbitrationParticipationController)init;
- (void)_publishFeedbackArbitrationRecordForNearMiss;
- (void)_resetSettingsConnection;
- (void)dealloc;
- (void)publishArbitrationParticipationContext:(id)context;
@end

@implementation SCDAArbitrationParticipationController

- (AFSettingsConnection)settingsConnection
{
  if (self->_settingsConnection)
  {
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_6;
    }

    settingsConnection = self->_settingsConnection;
  }

  else
  {
    settingsConnection = 0;
  }

  self->_settingsConnection = 0;

  v4 = objc_alloc_init(MEMORY[0x1E698D1E0]);
  v5 = self->_settingsConnection;
  self->_settingsConnection = v4;

  [(AFSettingsConnection *)self->_settingsConnection setXPCConnectionManagementQueue:self->_xpcConnectionQueue];
LABEL_6:
  v6 = self->_settingsConnection;

  return v6;
}

- (void)_resetSettingsConnection
{
  if (self->_settingsConnection)
  {
    self->_settingsConnection = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)publishArbitrationParticipationContext:(id)context
{
  contextCopy = context;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__SCDAArbitrationParticipationController_publishArbitrationParticipationContext___block_invoke;
  v7[3] = &unk_1E85D38A0;
  v8 = contextCopy;
  selfCopy = self;
  v6 = contextCopy;
  dispatch_async(queue, v7);
}

void __81__SCDAArbitrationParticipationController_publishArbitrationParticipationContext___block_invoke(uint64_t a1)
{
  v16 = objc_alloc(MEMORY[0x1E69CE3C8]);
  v2 = [*(a1 + 32) myAdvertisement];
  v3 = [*(a1 + 32) boosts];
  v4 = [*(a1 + 32) cdaId];
  v5 = [*(a1 + 32) rawGoodnessScore];
  v15 = [*(a1 + 32) requestStartDate];
  v14 = [*(a1 + 32) result];
  v13 = [*(a1 + 32) seenAdvertisements];
  v12 = [*(a1 + 32) msSinceTrigger];
  v11 = [*(a1 + 32) msSinceLastWin];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "triggerType")}];
  v7 = [*(a1 + 32) trumpReasons];
  v8 = [*(a1 + 32) voiceTriggerDate];
  v9 = [*(a1 + 32) winnerAdvertisement];
  v17 = [v16 initWithAdvertisement:v2 boosts:v3 cdaId:v4 rawGoodnessScore:v15 requestStartDate:v14 result:v13 seenAdvertisements:v5 timeSinceLastTriggerInMilliseconds:v12 timeSinceLastWinInMilliseconds:v11 triggerType:v6 trumpReasons:v7 voiceTriggerDate:v8 winnerAdvertisement:v9];

  v10 = [*(a1 + 40) settingsConnection];
  [v10 publishFeedbackArbitrationParticipation:v17];

  [*(a1 + 40) _resetSettingsConnection];
}

- (void)_publishFeedbackArbitrationRecordForNearMiss
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__SCDAArbitrationParticipationController__publishFeedbackArbitrationRecordForNearMiss__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(queue, block);
}

void __86__SCDAArbitrationParticipationController__publishFeedbackArbitrationRecordForNearMiss__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69CE3C8]) initNearMiss];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[SCDAArbitrationParticipationController _publishFeedbackArbitrationRecordForNearMiss]_block_invoke";
    _os_log_debug_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEBUG, "%s #scda #feedback", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) settingsConnection];
  [v4 publishFeedbackArbitrationParticipation:v2];

  [*(a1 + 32) _resetSettingsConnection];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.voicetrigger.NearTrigger", 0);
  v4.receiver = self;
  v4.super_class = SCDAArbitrationParticipationController;
  [(SCDAArbitrationParticipationController *)&v4 dealloc];
}

- (SCDAArbitrationParticipationController)init
{
  v11.receiver = self;
  v11.super_class = SCDAArbitrationParticipationController;
  v2 = [(SCDAArbitrationParticipationController *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);

    v5 = dispatch_queue_create("AFArbitrationParticipationXPCConnectionQueue", v4);
    xpcConnectionQueue = v2->_xpcConnectionQueue;
    v2->_xpcConnectionQueue = v5;

    v7 = dispatch_queue_create("AFArbitrationParticipationQueue", v4);
    queue = v2->_queue;
    v2->_queue = v7;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, notificationNearMissCallback, @"com.apple.voicetrigger.NearTrigger", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

@end