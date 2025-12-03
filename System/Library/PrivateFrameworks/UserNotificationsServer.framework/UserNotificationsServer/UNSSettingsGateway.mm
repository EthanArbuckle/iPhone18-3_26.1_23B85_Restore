@interface UNSSettingsGateway
- (UNSSettingsGateway)init;
- (id)_queue_allEffectiveSectionInfos;
- (id)_queue_allSectionInfos;
- (id)_queue_effectiveSectionInfoForSectionID:(id)d;
- (id)_queue_effectiveSectionInfosForSectionIDs:(id)ds;
- (id)_queue_globalScheduledDeliveryTimes;
- (id)_queue_sectionInfoForSectionID:(id)d;
- (id)_queue_sectionInfosForSectionIDs:(id)ds;
- (id)allEffectiveSectionInfo;
- (id)allSectionInfo;
- (id)effectiveSectionInfoForSectionID:(id)d;
- (id)effectiveSectionInfoForSectionIDs:(id)ds;
- (id)globalScheduledDeliveryTimes;
- (id)sectionInfoForSectionID:(id)d;
- (id)sectionInfoForSectionIDs:(id)ds;
- (int64_t)_queue_globalAnnounceCarPlaySetting;
- (int64_t)_queue_globalAnnounceHeadphonesSetting;
- (int64_t)_queue_globalAnnounceSetting;
- (int64_t)_queue_globalContentPreviewSetting;
- (int64_t)_queue_globalNotificationListDisplayStyleSetting;
- (int64_t)_queue_globalPrioritizationSetting;
- (int64_t)_queue_globalScheduledDeliverySetting;
- (int64_t)_queue_globalScheduledDeliveryShowNextSummarySetting;
- (int64_t)_queue_globalSummarizationSetting;
- (int64_t)globalAnnounceCarPlaySetting;
- (int64_t)globalAnnounceHeadphonesSetting;
- (int64_t)globalAnnounceSetting;
- (int64_t)globalContentPreviewSetting;
- (int64_t)globalNotificationListDisplayStyleSetting;
- (int64_t)globalPrioritizationSetting;
- (int64_t)globalScheduledDeliverySetting;
- (int64_t)globalScheduledDeliveryShowNextSummarySetting;
- (int64_t)globalSummarizationSetting;
- (void)_queue_getSectionInfoForSectionIDs:(id)ds withCompletion:(id)completion;
- (void)_queue_setGlobalAnnounceCarPlaySetting:(int64_t)setting;
- (void)_queue_setGlobalAnnounceHeadphonesSetting:(int64_t)setting;
- (void)_queue_setGlobalAnnounceSetting:(int64_t)setting;
- (void)_queue_setGlobalContentPreviewSetting:(int64_t)setting;
- (void)_queue_setGlobalNotificationListDisplayStyleSetting:(int64_t)setting;
- (void)_queue_setGlobalPrioritizationSetting:(int64_t)setting;
- (void)_queue_setGlobalScheduledDeliverySetting:(int64_t)setting;
- (void)_queue_setGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)setting;
- (void)_queue_setGlobalScheduledDeliveryTimes:(id)times;
- (void)_queue_setGlobalSummarizationSetting:(int64_t)setting;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)getSectionInfoForSectionIDs:(id)ds withCompletion:(id)completion;
- (void)observer:(id)observer updateGlobalSettings:(id)settings;
- (void)observer:(id)observer updateSectionInfo:(id)info;
- (void)removeObserver:(id)observer;
- (void)setGlobalAnnounceCarPlaySetting:(int64_t)setting;
- (void)setGlobalAnnounceHeadphonesSetting:(int64_t)setting;
- (void)setGlobalAnnounceSetting:(int64_t)setting;
- (void)setGlobalContentPreviewSetting:(int64_t)setting;
- (void)setGlobalNotificationListDisplayStyleSetting:(int64_t)setting;
- (void)setGlobalPrioritizationSetting:(int64_t)setting;
- (void)setGlobalScheduledDeliverySetting:(int64_t)setting;
- (void)setGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)setting;
- (void)setGlobalScheduledDeliveryTimes:(id)times;
- (void)setGlobalSummarizationSetting:(int64_t)setting;
- (void)setSectionInfo:(id)info forSectionID:(id)d;
@end

@implementation UNSSettingsGateway

- (int64_t)_queue_globalContentPreviewSetting
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalContentPreviewSetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  result = [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalContentPreviewsSetting];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __49__UNSSettingsGateway_globalContentPreviewSetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalContentPreviewSetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)globalAnnounceSetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalAnnounceSetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__UNSSettingsGateway_globalAnnounceSetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (int64_t)globalContentPreviewSetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalContentPreviewSetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__UNSSettingsGateway_globalContentPreviewSetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __43__UNSSettingsGateway_globalAnnounceSetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalAnnounceSetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_queue_globalAnnounceSetting
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalAnnounceSetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  result = [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalAnnounceSetting];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)_queue_globalAnnounceHeadphonesSetting
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalAnnounceHeadphonesSetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  result = [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalAnnounceHeadphonesSetting];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)globalAnnounceHeadphonesSetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalAnnounceHeadphonesSetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__UNSSettingsGateway_globalAnnounceHeadphonesSetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __53__UNSSettingsGateway_globalAnnounceHeadphonesSetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalAnnounceHeadphonesSetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)globalAnnounceCarPlaySetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalAnnounceCarPlaySetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__UNSSettingsGateway_globalAnnounceCarPlaySetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __50__UNSSettingsGateway_globalAnnounceCarPlaySetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalAnnounceCarPlaySetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_queue_globalAnnounceCarPlaySetting
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalAnnounceCarPlaySetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  result = [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalAnnounceCarPlaySetting];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __52__UNSSettingsGateway_globalScheduledDeliverySetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalScheduledDeliverySetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_queue_globalScheduledDeliverySetting
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalScheduledDeliverySetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  result = [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalScheduledDeliverySetting];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)globalScheduledDeliverySetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalScheduledDeliverySetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__UNSSettingsGateway_globalScheduledDeliverySetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (id)globalScheduledDeliveryTimes
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalScheduledDeliveryTimes", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__UNSSettingsGateway_globalScheduledDeliveryTimes__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __50__UNSSettingsGateway_globalScheduledDeliveryTimes__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_globalScheduledDeliveryTimes];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_queue_globalScheduledDeliveryTimes
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v8 = 138543362;
    v9 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalScheduledDeliveryTimes from settingsGateway: [%{public}@]", &v8, 0xCu);
  }

  effectiveGlobalScheduledDeliveryTimes = [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalScheduledDeliveryTimes];
  v6 = *MEMORY[0x277D85DE8];

  return effectiveGlobalScheduledDeliveryTimes;
}

- (int64_t)_queue_globalScheduledDeliveryShowNextSummarySetting
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalScheduledDeliveryShowNextSummarySetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  result = [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalScheduledDeliveryShowNextSummarySetting];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __67__UNSSettingsGateway_globalScheduledDeliveryShowNextSummarySetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalScheduledDeliveryShowNextSummarySetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)globalScheduledDeliveryShowNextSummarySetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalScheduledDeliveryShowNextSummarySetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__UNSSettingsGateway_globalScheduledDeliveryShowNextSummarySetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (int64_t)globalNotificationListDisplayStyleSetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalNotificationListDisplayStyleSetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__UNSSettingsGateway_globalNotificationListDisplayStyleSetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __63__UNSSettingsGateway_globalNotificationListDisplayStyleSetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalNotificationListDisplayStyleSetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_queue_globalNotificationListDisplayStyleSetting
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalNotificationListDisplayStyleSetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  result = [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalNotificationListDisplayStyleSetting];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)globalSummarizationSetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalSummarizationSetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__UNSSettingsGateway_globalSummarizationSetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __48__UNSSettingsGateway_globalSummarizationSetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalSummarizationSetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_queue_globalSummarizationSetting
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalSummarizationSetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  result = [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalSummarizationSetting];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)globalPrioritizationSetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalPrioritizationSetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__UNSSettingsGateway_globalPrioritizationSetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __49__UNSSettingsGateway_globalPrioritizationSetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalPrioritizationSetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_queue_globalPrioritizationSetting
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalPrioritizationSetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  result = [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalHighlightsSetting];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (UNSSettingsGateway)init
{
  v13.receiver = self;
  v13.super_class = UNSSettingsGateway;
  v2 = [(UNSSettingsGateway *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.usernotificationsserver.SettingsGateway", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = [objc_alloc(MEMORY[0x277CF3580]) initWithQueue:v2->_queue];
    settingsGateway = v2->_settingsGateway;
    v2->_settingsGateway = v8;

    v10 = [objc_alloc(MEMORY[0x277CF3550]) initWithQueue:v2->_queue];
    settingsObserver = v2->_settingsObserver;
    v2->_settingsObserver = v10;

    [(BBObserver *)v2->_settingsObserver setObserverFeed:512];
    [(BBObserver *)v2->_settingsObserver setDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(BBSettingsGateway *)self->_settingsGateway invalidate];
  v3.receiver = self;
  v3.super_class = UNSSettingsGateway;
  [(UNSSettingsGateway *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__UNSSettingsGateway_addObserver___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__UNSSettingsGateway_removeObserver___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)setSectionInfo:(id)info forSectionID:(id)d
{
  infoCopy = info;
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__UNSSettingsGateway_setSectionInfo_forSectionID___block_invoke;
  block[3] = &unk_279E10700;
  block[4] = self;
  v12 = infoCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = infoCopy;
  dispatch_async(queue, block);
}

- (id)effectiveSectionInfoForSectionID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = dCopy;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Getting effectiveSectionInfo for section identifier: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__UNSSettingsGateway_effectiveSectionInfoForSectionID___block_invoke;
  block[3] = &unk_279E109D8;
  v12 = dCopy;
  v13 = &v14;
  block[4] = self;
  v7 = dCopy;
  dispatch_sync(queue, block);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __55__UNSSettingsGateway_effectiveSectionInfoForSectionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_effectiveSectionInfoForSectionID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)sectionInfoForSectionID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = dCopy;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Getting sectionInfo for section identifier: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__UNSSettingsGateway_sectionInfoForSectionID___block_invoke;
  block[3] = &unk_279E109D8;
  v12 = dCopy;
  v13 = &v14;
  block[4] = self;
  v7 = dCopy;
  dispatch_sync(queue, block);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __46__UNSSettingsGateway_sectionInfoForSectionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_sectionInfoForSectionID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)effectiveSectionInfoForSectionIDs:(id)ds
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = dsCopy;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Getting effectiveSectionInfos for section identifiers: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__UNSSettingsGateway_effectiveSectionInfoForSectionIDs___block_invoke;
  block[3] = &unk_279E109D8;
  v12 = dsCopy;
  v13 = &v14;
  block[4] = self;
  v7 = dsCopy;
  dispatch_sync(queue, block);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __56__UNSSettingsGateway_effectiveSectionInfoForSectionIDs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_effectiveSectionInfosForSectionIDs:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)sectionInfoForSectionIDs:(id)ds
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = dsCopy;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Getting sectionInfos for section identifiers: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__UNSSettingsGateway_sectionInfoForSectionIDs___block_invoke;
  block[3] = &unk_279E109D8;
  v12 = dsCopy;
  v13 = &v14;
  block[4] = self;
  v7 = dsCopy;
  dispatch_sync(queue, block);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __47__UNSSettingsGateway_sectionInfoForSectionIDs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_sectionInfosForSectionIDs:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)getSectionInfoForSectionIDs:(id)ds withCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = dsCopy;
    _os_log_impl(&dword_270AA8000, v8, OS_LOG_TYPE_DEFAULT, "Getting sectionInfos for section identifiers: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__UNSSettingsGateway_getSectionInfoForSectionIDs_withCompletion___block_invoke;
  block[3] = &unk_279E10290;
  block[4] = self;
  v14 = dsCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = dsCopy;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x277D85DE8];
}

- (id)allEffectiveSectionInfo
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting allEffectiveSectionInfos", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__UNSSettingsGateway_allEffectiveSectionInfo__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __45__UNSSettingsGateway_allEffectiveSectionInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_allEffectiveSectionInfos];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)allSectionInfo
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting allSectionInfos", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__UNSSettingsGateway_allSectionInfo__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __36__UNSSettingsGateway_allSectionInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_allSectionInfos];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setGlobalContentPreviewSetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__UNSSettingsGateway_setGlobalContentPreviewSetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)setGlobalAnnounceSetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__UNSSettingsGateway_setGlobalAnnounceSetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)setGlobalAnnounceHeadphonesSetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__UNSSettingsGateway_setGlobalAnnounceHeadphonesSetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)setGlobalAnnounceCarPlaySetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__UNSSettingsGateway_setGlobalAnnounceCarPlaySetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)setGlobalScheduledDeliverySetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__UNSSettingsGateway_setGlobalScheduledDeliverySetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)setGlobalScheduledDeliveryTimes:(id)times
{
  timesCopy = times;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__UNSSettingsGateway_setGlobalScheduledDeliveryTimes___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = timesCopy;
  v6 = timesCopy;
  dispatch_sync(queue, v7);
}

- (void)setGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__UNSSettingsGateway_setGlobalScheduledDeliveryShowNextSummarySetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)setGlobalNotificationListDisplayStyleSetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__UNSSettingsGateway_setGlobalNotificationListDisplayStyleSetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)setGlobalSummarizationSetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__UNSSettingsGateway_setGlobalSummarizationSetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)setGlobalPrioritizationSetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__UNSSettingsGateway_setGlobalPrioritizationSetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (id)_queue_effectiveSectionInfoForSectionID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = MEMORY[0x277CE20B0];
  v6 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = dCopy;
    _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting effective section info", &v11, 0xCu);
  }

  v7 = [(BBSettingsGateway *)self->_settingsGateway effectiveSectionInfoForSectionID:dCopy];
  v8 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = dCopy;
    v13 = 1024;
    v14 = v7 != 0;
    _os_log_impl(&dword_270AA8000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got effective section info [ hasResult: %d ]", &v11, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_queue_sectionInfoForSectionID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = MEMORY[0x277CE20B0];
  v6 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = dCopy;
    _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting section info", &v11, 0xCu);
  }

  v7 = [(BBSettingsGateway *)self->_settingsGateway sectionInfoForSectionID:dCopy];
  v8 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = dCopy;
    v13 = 1024;
    v14 = v7 != 0;
    _os_log_impl(&dword_270AA8000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got section info [ hasResult: %d ]", &v11, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_queue_effectiveSectionInfosForSectionIDs:(id)ds
{
  v12 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v10 = 138543362;
    v11 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Getting effective section infos from settingsGateway: [%{public}@]", &v10, 0xCu);
  }

  v7 = [(BBSettingsGateway *)self->_settingsGateway effectiveSectionInfoForSectionIDs:dsCopy];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_queue_sectionInfosForSectionIDs:(id)ds
{
  v12 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v10 = 138543362;
    v11 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Getting section infos from settingsGateway: [%{public}@]", &v10, 0xCu);
  }

  v7 = [(BBSettingsGateway *)self->_settingsGateway sectionInfoForSectionIDs:dsCopy];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_queue_getSectionInfoForSectionIDs:(id)ds withCompletion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  settingsGateway = self->_settingsGateway;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__UNSSettingsGateway__queue_getSectionInfoForSectionIDs_withCompletion___block_invoke;
  v11[3] = &unk_279E111E8;
  v12 = dsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  [(BBSettingsGateway *)settingsGateway getSectionInfoForSectionIDs:v10 withCompletion:v11];
}

void __72__UNSSettingsGateway__queue_getSectionInfoForSectionIDs_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 1024;
    v10 = v3 != 0;
    _os_log_impl(&dword_270AA8000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got section infos [ hasResult: %d ]", &v7, 0x12u);
  }

  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_queue_allEffectiveSectionInfos
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v8 = 138543362;
    v9 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting all effective section infos from settingsGateway: [%{public}@]", &v8, 0xCu);
  }

  allEffectiveSectionInfo = [(BBSettingsGateway *)self->_settingsGateway allEffectiveSectionInfo];
  v6 = *MEMORY[0x277D85DE8];

  return allEffectiveSectionInfo;
}

- (id)_queue_allSectionInfos
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v8 = 138543362;
    v9 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting all section infos from settingsGateway: [%{public}@]", &v8, 0xCu);
  }

  allSectionInfo = [(BBSettingsGateway *)self->_settingsGateway allSectionInfo];
  v6 = *MEMORY[0x277D85DE8];

  return allSectionInfo;
}

- (void)_queue_setGlobalContentPreviewSetting:(int64_t)setting
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v8 = 138543362;
    v9 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalContentPreviewSetting from settingsGateway: [%{public}@]", &v8, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalContentPreviewsSetting:setting];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setGlobalAnnounceSetting:(int64_t)setting
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v8 = 138543362;
    v9 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalAnnounceSetting from settingsGateway: [%{public}@]", &v8, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalAnnounceSetting:setting];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setGlobalAnnounceHeadphonesSetting:(int64_t)setting
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v8 = 138543362;
    v9 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalAnnounceHeadphonesSetting from settingsGateway: [%{public}@]", &v8, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalAnnounceHeadphonesSetting:setting];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setGlobalAnnounceCarPlaySetting:(int64_t)setting
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v8 = 138543362;
    v9 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalAnnounceCarPlaySetting from settingsGateway: [%{public}@]", &v8, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalAnnounceCarPlaySetting:setting];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setGlobalScheduledDeliverySetting:(int64_t)setting
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v8 = 138543362;
    v9 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalScheduledDeliverySetting from settingsGateway: [%{public}@]", &v8, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalScheduledDeliverySetting:setting];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setGlobalScheduledDeliveryTimes:(id)times
{
  v10 = *MEMORY[0x277D85DE8];
  timesCopy = times;
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v8 = 138543362;
    v9 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalScheduledDeliveryTimes from settingsGateway: [%{public}@]", &v8, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalScheduledDeliveryTimes:timesCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)setting
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v8 = 138543362;
    v9 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalScheduledDeliveryShowNextSummarySetting from settingsGateway: [%{public}@]", &v8, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalScheduledDeliveryShowNextSummarySetting:setting];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setGlobalNotificationListDisplayStyleSetting:(int64_t)setting
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v8 = 138543362;
    v9 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalNotificationListDisplayStyleSetting from settingsGateway: [%{public}@]", &v8, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalNotificationListDisplayStyleSetting:setting];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setGlobalSummarizationSetting:(int64_t)setting
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v8 = 138543362;
    v9 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalSummarizationSetting from settingsGateway: [%{public}@]", &v8, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalSummarizationSetting:setting];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setGlobalPrioritizationSetting:(int64_t)setting
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v8 = 138543362;
    v9 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalPrioritizationSetting from settingsGateway: [%{public}@]", &v8, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalHighlightsSetting:setting];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)observer:(id)observer updateSectionInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__UNSSettingsGateway_observer_updateSectionInfo___block_invoke;
  v8[3] = &unk_279E104B8;
  v9 = infoCopy;
  selfCopy = self;
  v7 = infoCopy;
  dispatch_async(queue, v8);
}

void __49__UNSSettingsGateway_observer_updateSectionInfo___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = [*(a1 + 32) sectionID];
  v4 = [v2 initWithObjects:{v3, 0}];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 40) + 8);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) settingsGateway:*(a1 + 40) didUpdateSectionInfoForSectionIDs:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)observer:(id)observer updateGlobalSettings:(id)settings
{
  settingsCopy = settings;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__UNSSettingsGateway_observer_updateGlobalSettings___block_invoke;
  v8[3] = &unk_279E104B8;
  v8[4] = self;
  v9 = settingsCopy;
  v7 = settingsCopy;
  dispatch_async(queue, v8);
}

void __52__UNSSettingsGateway_observer_updateGlobalSettings___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) settingsGateway:*(a1 + 32) didUpdateGlobalSettings:{*(a1 + 40), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end