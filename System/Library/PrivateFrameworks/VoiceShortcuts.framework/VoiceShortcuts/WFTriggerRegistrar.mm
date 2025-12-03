@interface WFTriggerRegistrar
- (WFTriggerRegistrar)initWithDatabaseProvider:(id)provider eventHandler:(id)handler userNotificationManager:(id)manager;
- (int64_t)triggerBackingForConfiguredTrigger:(id)trigger;
- (void)dealloc;
- (void)deleteTriggerWithIdentifier:(id)identifier allowedDeletionClasses:(id)classes completion:(id)completion;
- (void)deviceDidUnlockForFirstTime;
- (void)fireTriggerWithIdentifier:(id)identifier force:(BOOL)force eventInfo:(id)info completion:(id)completion;
- (void)getConfiguredTriggerDescriptionsWithCompletion:(id)completion;
- (void)handleRemovedIgnoredNotifications:(id)notifications;
- (void)queue_registerConfiguredTrigger:(id)trigger completion:(id)completion;
- (void)queue_unregisterConfiguredTrigger:(id)trigger;
- (void)queue_unregisterConfiguredTriggerWithIdentifier:(id)identifier triggerBacking:(int64_t)backing;
- (void)registerAllTriggersWithCompletion:(id)completion;
- (void)registerTriggerWithIdentifier:(id)identifier completion:(id)completion;
- (void)unregisterAllTriggers;
- (void)unregisterTriggerWithIdentifier:(id)identifier triggerBacking:(int64_t)backing;
@end

@implementation WFTriggerRegistrar

- (int64_t)triggerBackingForConfiguredTrigger:(id)trigger
{
  trigger = [trigger trigger];
  triggerBacking = [objc_opt_class() triggerBacking];

  return triggerBacking;
}

- (void)getConfiguredTriggerDescriptionsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerRegistrar.m" lineNumber:348 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  queue = [(WFTriggerRegistrar *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__WFTriggerRegistrar_getConfiguredTriggerDescriptionsWithCompletion___block_invoke;
  block[3] = &unk_2788FF680;
  block[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, block);
}

void __69__WFTriggerRegistrar_getConfiguredTriggerDescriptionsWithCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) databaseProvider];
  v11 = 0;
  v3 = [v2 databaseWithError:&v11];
  v4 = v11;

  if (v3)
  {
    v5 = [v3 allConfiguredTriggers];
    v6 = [v5 descriptors];
    v7 = [v6 if_map:&__block_literal_global_4249];

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v7 = [*(a1 + 32) unableToLoadDatabaseErrorWithUnderlyingError:v4];
    v9 = getWFTriggersLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[WFTriggerRegistrar getConfiguredTriggerDescriptionsWithCompletion:]_block_invoke";
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_ERROR, "%s Failed to get configured trigger descriptions: %{public}@", buf, 0x16u);
    }

    v8 = *(*(a1 + 40) + 16);
  }

  v8();

  v10 = *MEMORY[0x277D85DE8];
}

id __69__WFTriggerRegistrar_getConfiguredTriggerDescriptionsWithCompletion___block_invoke_208(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 identifier];
  v4 = [v2 trigger];

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = [MEMORY[0x277D7A048] defaultContext];
  v8 = [v6 localizedDisplayNameWithContext:v7];
  v9 = [v4 localizedDescriptionWithConfigurationSummary];
  v10 = [v5 stringWithFormat:@"%@ %@: %@", v3, v8, v9];

  return v10;
}

- (void)deleteTriggerWithIdentifier:(id)identifier allowedDeletionClasses:(id)classes completion:(id)completion
{
  identifierCopy = identifier;
  classesCopy = classes;
  completionCopy = completion;
  queue = [(WFTriggerRegistrar *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__WFTriggerRegistrar_deleteTriggerWithIdentifier_allowedDeletionClasses_completion___block_invoke;
  block[3] = &unk_2788FF548;
  block[4] = self;
  v17 = identifierCopy;
  v19 = completionCopy;
  v20 = a2;
  v18 = classesCopy;
  v13 = classesCopy;
  v14 = identifierCopy;
  v15 = completionCopy;
  dispatch_async(queue, block);
}

void __84__WFTriggerRegistrar_deleteTriggerWithIdentifier_allowedDeletionClasses_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseProvider];
  v12 = 0;
  v3 = [v2 databaseWithError:&v12];
  v4 = v12;

  if (v3)
  {
    v5 = [v3 configuredTriggerForTriggerID:*(a1 + 40)];
    if (!v5)
    {
      goto LABEL_10;
    }

    if (![*(a1 + 32) triggerBackingForConfiguredTrigger:v5])
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"WFTriggerRegistrar.m" lineNumber:329 description:@"Trigger did not specify a backing source and cannot be registered."];
    }

    if (![*(a1 + 48) count] || (v6 = *(a1 + 48), objc_msgSend(v5, "trigger"), v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(v6) = objc_msgSend(v6, "containsObject:", objc_opt_class()), v7, (v6 & 1) != 0))
    {
      v11 = 0;
      v8 = [v3 deleteReference:v5 error:&v11];
      v9 = v11;
      if (v8)
      {
        [*(a1 + 32) queue_unregisterConfiguredTrigger:v5];
      }

      (*(*(a1 + 56) + 16))();
    }

    else
    {
LABEL_10:
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)fireTriggerWithIdentifier:(id)identifier force:(BOOL)force eventInfo:(id)info completion:(id)completion
{
  identifierCopy = identifier;
  infoCopy = info;
  completionCopy = completion;
  queue = [(WFTriggerRegistrar *)self queue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__WFTriggerRegistrar_fireTriggerWithIdentifier_force_eventInfo_completion___block_invoke;
  v18[3] = &unk_2788FEF98;
  v18[4] = self;
  v19 = identifierCopy;
  v21 = completionCopy;
  v22 = a2;
  forceCopy = force;
  v20 = infoCopy;
  v15 = infoCopy;
  v16 = identifierCopy;
  v17 = completionCopy;
  dispatch_async(queue, v18);
}

void __75__WFTriggerRegistrar_fireTriggerWithIdentifier_force_eventInfo_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseProvider];
  v10 = 0;
  v3 = [v2 databaseWithError:&v10];
  v4 = v10;

  if (!v3)
  {
    v8 = *(a1 + 56);
    v5 = [*(a1 + 32) unableToLoadDatabaseErrorWithUnderlyingError:v4];
    (*(v8 + 16))(v8, 0, v5);
    goto LABEL_14;
  }

  v5 = [v3 configuredTriggerForTriggerID:*(a1 + 40)];
  if (!v5)
  {
    (*(*(a1 + 56) + 16))(*(a1 + 56), 0, 0);
    goto LABEL_14;
  }

  v6 = [*(a1 + 32) triggerBackingForConfiguredTrigger:v5];
  switch(v6)
  {
    case 1:
      v9 = [*(a1 + 32) coreDuetListener];
LABEL_12:
      v7 = v9;
      [v9 fireTriggerWithIdentifier:*(a1 + 40) force:*(a1 + 72) eventInfo:*(a1 + 48) completion:*(a1 + 56)];
      goto LABEL_13;
    case 2:
      v9 = [*(a1 + 32) biomeListener];
      goto LABEL_12;
    case 0:
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"WFTriggerRegistrar.m" lineNumber:295 description:@"Trigger did not specify a backing source and cannot be fired."];
LABEL_13:

      break;
  }

LABEL_14:
}

- (void)queue_unregisterConfiguredTriggerWithIdentifier:(id)identifier triggerBacking:(int64_t)backing
{
  identifierCopy = identifier;
  queue = [(WFTriggerRegistrar *)self queue];
  dispatch_assert_queue_V2(queue);

  if (backing == 2)
  {
    biomeListener = [(WFTriggerRegistrar *)self biomeListener];
  }

  else
  {
    if (backing != 1)
    {
      goto LABEL_6;
    }

    biomeListener = [(WFTriggerRegistrar *)self coreDuetListener];
  }

  v8 = biomeListener;
  [biomeListener unregisterConfiguredTriggerWithIdentifier:identifierCopy];

LABEL_6:
  databaseProvider = [(WFTriggerRegistrar *)self databaseProvider];
  v10 = [databaseProvider databaseWithError:0];

  triggerBootManager = [(WFTriggerRegistrar *)self triggerBootManager];
  allConfiguredTriggers = [v10 allConfiguredTriggers];
  descriptors = [allConfiguredTriggers descriptors];
  [triggerBootManager configuredTriggersDidChange:descriptors];
}

- (void)queue_unregisterConfiguredTrigger:(id)trigger
{
  triggerCopy = trigger;
  queue = [(WFTriggerRegistrar *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(WFTriggerRegistrar *)self triggerBackingForConfiguredTrigger:triggerCopy];
  v7 = MEMORY[0x277CCACA8];
  trigger = [triggerCopy trigger];
  v9 = [v7 stringWithFormat:@"Trigger (%@) did not specify a backing source and cannot be unregistered", trigger];

  if (!v6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerRegistrar.m" lineNumber:252 description:v9];
  }

  scheduler = [(WFTriggerRegistrar *)self scheduler];
  identifier = [triggerCopy identifier];
  [scheduler cancelActivitiesFromTriggerIdentifier:identifier];

  identifier2 = [triggerCopy identifier];
  trigger2 = [triggerCopy trigger];
  -[WFTriggerRegistrar queue_unregisterConfiguredTriggerWithIdentifier:triggerBacking:](self, "queue_unregisterConfiguredTriggerWithIdentifier:triggerBacking:", identifier2, [objc_opt_class() triggerBacking]);
}

- (void)unregisterTriggerWithIdentifier:(id)identifier triggerBacking:(int64_t)backing
{
  identifierCopy = identifier;
  queue = [(WFTriggerRegistrar *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__WFTriggerRegistrar_unregisterTriggerWithIdentifier_triggerBacking___block_invoke;
  block[3] = &unk_2788FEF70;
  block[4] = self;
  v10 = identifierCopy;
  backingCopy = backing;
  v8 = identifierCopy;
  dispatch_async(queue, block);
}

void __69__WFTriggerRegistrar_unregisterTriggerWithIdentifier_triggerBacking___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseProvider];
  v6 = 0;
  v3 = [v2 databaseWithError:&v6];
  v4 = v6;

  if (v3)
  {
    v5 = [*(a1 + 32) scheduler];
    [v5 cancelActivitiesFromTriggerIdentifier:*(a1 + 40)];

    [*(a1 + 32) queue_unregisterConfiguredTriggerWithIdentifier:*(a1 + 40) triggerBacking:*(a1 + 48)];
  }
}

- (void)unregisterAllTriggers
{
  queue = [(WFTriggerRegistrar *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__WFTriggerRegistrar_unregisterAllTriggers__block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_async(queue, block);
}

void __43__WFTriggerRegistrar_unregisterAllTriggers__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) databaseProvider];
  v16 = 0;
  v3 = [v2 databaseWithError:&v16];
  v4 = v16;

  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3 allConfiguredTriggers];
    v6 = [v5 descriptors];

    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(a1 + 32) queue_unregisterConfiguredTrigger:*(*(&v12 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)queue_registerConfiguredTrigger:(id)trigger completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  completionCopy = completion;
  queue = [(WFTriggerRegistrar *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = [(WFTriggerRegistrar *)self triggerBackingForConfiguredTrigger:triggerCopy];
  switch(v10)
  {
    case 1:
      v12 = getWFTriggersLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315138;
        v18 = "[WFTriggerRegistrar queue_registerConfiguredTrigger:completion:]";
        _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEFAULT, "%s Using CoreDuet backing source", &v17, 0xCu);
      }

      coreDuetListener = [(WFTriggerRegistrar *)self coreDuetListener];
      goto LABEL_11;
    case 2:
      v14 = getWFTriggersLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315138;
        v18 = "[WFTriggerRegistrar queue_registerConfiguredTrigger:completion:]";
        _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_DEFAULT, "%s Using Biome backing source", &v17, 0xCu);
      }

      coreDuetListener = [(WFTriggerRegistrar *)self biomeListener];
LABEL_11:
      v15 = coreDuetListener;
      [coreDuetListener registerConfiguredTrigger:triggerCopy completion:completionCopy];

      break;
    case 0:
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerRegistrar.m" lineNumber:198 description:@"Trigger did not specify a backing source and cannot be registered."];

      break;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)registerTriggerWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = [(WFTriggerRegistrar *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__WFTriggerRegistrar_registerTriggerWithIdentifier_completion___block_invoke;
  block[3] = &unk_2788FFF98;
  v12 = identifierCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = identifierCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __63__WFTriggerRegistrar_registerTriggerWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) databaseProvider];
  v16 = 0;
  v3 = [v2 databaseWithError:&v16];
  v4 = v16;

  if (v3)
  {
    v5 = [v3 configuredTriggerForTriggerID:*(a1 + 40)];
    if (v5)
    {
      v6 = v5;
      v7 = [*(a1 + 32) triggerBootManager];
      v8 = [v3 allConfiguredTriggers];
      v9 = [v8 descriptors];
      [v7 configuredTriggersDidChange:v9];

      [*(a1 + 32) queue_registerConfiguredTrigger:v6 completion:*(a1 + 48)];
    }

    else
    {
      v11 = getWFTriggersLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 40);
        *buf = 136315394;
        v18 = "[WFTriggerRegistrar registerTriggerWithIdentifier:completion:]_block_invoke";
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s No configured trigger for identifier: %@", buf, 0x16u);
      }

      v13 = *(a1 + 48);
      v14 = [*(a1 + 32) unableToLoadDatabaseErrorWithUnderlyingError:0];
      (*(v13 + 16))(v13, 0, v14);

      v6 = 0;
    }
  }

  else
  {
    v10 = *(a1 + 48);
    v6 = [*(a1 + 32) unableToLoadDatabaseErrorWithUnderlyingError:v4];
    (*(v10 + 16))(v10, 0, v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)registerAllTriggersWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(WFTriggerRegistrar *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__WFTriggerRegistrar_registerAllTriggersWithCompletion___block_invoke;
  v7[3] = &unk_2788FF680;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __56__WFTriggerRegistrar_registerAllTriggersWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseProvider];
  v15 = 0;
  v3 = [v2 databaseWithError:&v15];
  v4 = v15;

  if (v3)
  {
    v5 = [*(a1 + 32) triggerBootManager];
    v6 = [v3 allConfiguredTriggers];
    v7 = [v6 descriptors];
    [v5 configuredTriggersDidChange:v7];

    v8 = [v3 allConfiguredTriggers];
    v9 = [v8 descriptors];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__WFTriggerRegistrar_registerAllTriggersWithCompletion___block_invoke_2;
    v14[3] = &unk_2788FEF48;
    v14[4] = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__WFTriggerRegistrar_registerAllTriggersWithCompletion___block_invoke_4;
    v12[3] = &unk_2788FF098;
    v13 = *(a1 + 40);
    [v9 if_mapAsynchronously:v14 completionHandler:v12];
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = [*(a1 + 32) unableToLoadDatabaseErrorWithUnderlyingError:v4];
      (*(v10 + 16))(v10, 0, v11);
    }
  }
}

void __56__WFTriggerRegistrar_registerAllTriggersWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__WFTriggerRegistrar_registerAllTriggersWithCompletion___block_invoke_3;
  v9[3] = &unk_2788FEF20;
  v10 = v6;
  v8 = v6;
  [v7 queue_registerConfiguredTrigger:a2 completion:v9];
}

uint64_t __56__WFTriggerRegistrar_registerAllTriggersWithCompletion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3 == 0);
  }

  return result;
}

- (void)handleRemovedIgnoredNotifications:(id)notifications
{
  notificationsCopy = notifications;
  eventQueue = [(WFTriggerRegistrar *)self eventQueue];
  [eventQueue handleRemovedIgnoredNotifications:notificationsCopy];
}

- (void)deviceDidUnlockForFirstTime
{
  triggerBootManager = [(WFTriggerRegistrar *)self triggerBootManager];
  [triggerBootManager deviceWasUnlockedForTheFirstTime];

  [(WFTriggerRegistrar *)self registerAllTriggersWithCompletion:0];
}

- (void)dealloc
{
  eventHandler = [(WFTriggerRegistrar *)self eventHandler];
  [eventHandler removeObserver:self name:@"com.apple.mobile.keybagd.first_unlock"];

  eventHandler2 = [(WFTriggerRegistrar *)self eventHandler];
  [eventHandler2 removeObserver:self name:@"com.apple.system.timezone"];

  eventHandler3 = [(WFTriggerRegistrar *)self eventHandler];
  [eventHandler3 removeObserver:self name:@"com.apple.system.clock_set"];

  v6.receiver = self;
  v6.super_class = WFTriggerRegistrar;
  [(WFTriggerRegistrar *)&v6 dealloc];
}

- (WFTriggerRegistrar)initWithDatabaseProvider:(id)provider eventHandler:(id)handler userNotificationManager:(id)manager
{
  providerCopy = provider;
  handlerCopy = handler;
  managerCopy = manager;
  v34.receiver = self;
  v34.super_class = WFTriggerRegistrar;
  v12 = [(WFTriggerRegistrar *)&v34 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_databaseProvider, provider);
    objc_storeStrong(&v13->_eventHandler, handler);
    v14 = [[WFTriggerUserNotificationManager alloc] initWithUserNotificationManager:managerCopy];
    v15 = [[WFTriggerNotificationScheduler alloc] initWithUserNotificationManager:v14 databaseProvider:providerCopy];
    scheduler = v13->_scheduler;
    v13->_scheduler = v15;

    v17 = objc_alloc(MEMORY[0x277CE2028]);
    v18 = [v17 initWithBundleIdentifier:*MEMORY[0x277D7A340]];
    v19 = [[WFTriggerBootManager alloc] initWithDatabaseProvider:providerCopy notificationCenter:v18];
    [(WFTriggerBootManager *)v19 start];
    triggerBootManager = v13->_triggerBootManager;
    v13->_triggerBootManager = v19;
    v21 = v19;

    v22 = [[WFTriggerEventQueue alloc] initWithDatabaseProvider:providerCopy notificationManager:v14 notificationScheduler:v13->_scheduler triggerBootManager:v21];
    eventQueue = v13->_eventQueue;
    v13->_eventQueue = v22;

    [(WFTriggerBootManager *)v13->_triggerBootManager setEventQueueDelegate:v13->_eventQueue];
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_attr_make_with_qos_class(v24, QOS_CLASS_USER_INITIATED, 0);
    v26 = dispatch_queue_create("com.apple.siriactionsd.WFTriggerRegistrar", v25);
    queue = v13->_queue;
    v13->_queue = v26;

    v28 = [[WFCoreDuetListener alloc] initWithDatabaseProvider:providerCopy eventQueue:v13->_eventQueue];
    coreDuetListener = v13->_coreDuetListener;
    v13->_coreDuetListener = v28;

    v30 = [[WFBiomeListener alloc] initWithEventQueue:v13->_eventQueue];
    biomeListener = v13->_biomeListener;
    v13->_biomeListener = v30;

    [(SwiftVCDaemonXPCEventHandler *)v13->_eventHandler addObserver:v13 selector:sel_deviceDidUnlockForFirstTime name:@"com.apple.mobile.keybagd.first_unlock"];
    [(SwiftVCDaemonXPCEventHandler *)v13->_eventHandler addObserver:v13 selector:sel_timezoneChangeDidOccur name:@"com.apple.system.timezone"];
    [(SwiftVCDaemonXPCEventHandler *)v13->_eventHandler addObserver:v13 selector:sel_timeChangeDidOccur name:@"com.apple.system.clock_set"];

    v32 = v13;
  }

  return v13;
}

@end