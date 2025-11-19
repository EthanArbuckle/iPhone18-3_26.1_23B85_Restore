@interface WFBiomeListener
+ (id)registrationError;
- (BOOL)isTransactionEventDuplicate:(id)a3 forTrigger:(id)a4 withSeenTransactionIdentifiers:(id)a5;
- (WFBiomeListener)initWithEventQueue:(id)a3;
- (void)fireTriggerWithIdentifier:(id)a3 force:(BOOL)a4 eventInfo:(id)a5 completion:(id)a6;
- (void)queue_handleEvent:(id)a3 forTrigger:(id)a4;
- (void)queue_unregisterConfiguredTriggerWithIdentifier:(id)a3;
- (void)registerConfiguredTrigger:(id)a3 completion:(id)a4;
- (void)unregisterConfiguredTriggerWithIdentifier:(id)a3;
@end

@implementation WFBiomeListener

- (BOOL)isTransactionEventDuplicate:(id)a3 forTrigger:(id)a4 withSeenTransactionIdentifiers:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 trigger];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v10 transactionIdentifierWithEvent:v7];
    if ([v11 length])
    {
      v12 = [v8 identifier];
      v13 = [v9 objectForKeyedSubscript:v12];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = objc_opt_new();
      }

      v17 = v15;

      v16 = [v17 containsObject:v11];
      if (v16)
      {
        v18 = getWFTriggersLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 136315394;
          v22 = "[WFBiomeListener isTransactionEventDuplicate:forTrigger:withSeenTransactionIdentifiers:]";
          v23 = 2112;
          v24 = v11;
          _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_DEFAULT, "%s Ignoring duplicate transaction identifier %@", &v21, 0x16u);
        }
      }

      else
      {
        [v17 addObject:v11];
        v18 = [v8 identifier];
        [v9 setObject:v17 forKeyedSubscript:v18];
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {

    LOBYTE(v16) = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)queue_handleEvent:(id)a3 forTrigger:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(WFBiomeListener *)self queue];
  dispatch_assert_queue_V2(v9);

  if (!v8)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFBiomeListener.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"configuredTrigger"}];
  }

  v10 = [v8 trigger];
  v11 = getWFTriggersLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 identifier];
    *buf = 136315906;
    v24 = "[WFBiomeListener queue_handleEvent:forTrigger:]";
    v25 = 2112;
    v26 = v10;
    v27 = 2114;
    v28 = v12;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s 🤖 Handling event for trigger with identifier (%@, %{public}@) and event: %@", buf, 0x2Au);
  }

  v13 = [(WFBiomeListener *)self seenTransactionIdentifiers];
  v14 = [(WFBiomeListener *)self isTransactionEventDuplicate:v7 forTrigger:v8 withSeenTransactionIdentifiers:v13];

  if (!v14)
  {
    v15 = [v8 identifier];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __48__WFBiomeListener_queue_handleEvent_forTrigger___block_invoke;
    v18[3] = &unk_278900058;
    v19 = v10;
    v20 = v8;
    v21 = v7;
    v22 = self;
    [v19 shouldFireInResponseToEvent:v21 triggerIdentifier:v15 completion:v18];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __48__WFBiomeListener_queue_handleEvent_forTrigger___block_invoke(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = getWFTriggersLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[WFBiomeListener queue_handleEvent:forTrigger:]_block_invoke";
    v16 = 1024;
    LODWORD(v17) = a2;
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_DEFAULT, "%s 🤖 Should the trigger fire in response to this event? %d", buf, 0x12u);
  }

  if (a2)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__WFBiomeListener_queue_handleEvent_forTrigger___block_invoke_213;
    v12[3] = &unk_278900030;
    v5 = *(a1 + 48);
    v12[4] = *(a1 + 56);
    v6 = *(a1 + 32);
    v13 = *(a1 + 40);
    [v6 eventInfoForEvent:v5 completion:v12];
  }

  else
  {
    v7 = getWFTriggersLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) identifier];
      v10 = *(a1 + 48);
      *buf = 136315906;
      v15 = "[WFBiomeListener queue_handleEvent:forTrigger:]_block_invoke";
      v16 = 2112;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s 🤖 Trigger (%@, %{public}@) should NOT fire in response to event: %@, dropping", buf, 0x2Au);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __48__WFBiomeListener_queue_handleEvent_forTrigger___block_invoke_213(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WFBiomeListener_queue_handleEvent_forTrigger___block_invoke_2;
  block[3] = &unk_2789000F8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

void __48__WFBiomeListener_queue_handleEvent_forTrigger___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v5 = v3;
  if (*(a1 + 48))
  {
    v4 = *(a1 + 48);
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  [v2 queue_fireTriggerWithIdentifier:v3 force:0 eventInfo:v4 completion:&__block_literal_global_6717];
}

void __48__WFBiomeListener_queue_handleEvent_forTrigger___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = getWFTriggersLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[WFBiomeListener queue_handleEvent:forTrigger:]_block_invoke_3";
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_ERROR, "%s Failed to fire trigger: %{public}@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fireTriggerWithIdentifier:(id)a3 force:(BOOL)a4 eventInfo:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(WFBiomeListener *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__WFBiomeListener_fireTriggerWithIdentifier_force_eventInfo_completion___block_invoke;
  block[3] = &unk_2788FFFE8;
  block[4] = self;
  v18 = v10;
  v21 = a4;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

- (void)queue_unregisterConfiguredTriggerWithIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFBiomeListener *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = getWFTriggersLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    v18 = "[WFBiomeListener queue_unregisterConfiguredTriggerWithIdentifier:]";
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s [Biome] Unregistering trigger with identifier: %{public}@", &v17, 0x16u);
  }

  v7 = [(WFBiomeListener *)self triggerIDToSinks];
  v8 = [v7 objectForKey:v4];

  v9 = [(WFBiomeListener *)self remoteTriggerIDToSinks];
  v10 = [v9 objectForKey:v4];

  if (!(v8 | v10))
  {
    v15 = getWFTriggersLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315394;
      v18 = "[WFBiomeListener queue_unregisterConfiguredTriggerWithIdentifier:]";
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEFAULT, "%s [Biome] No sink associated with identifier: %{public}@, nothing to unregister", &v17, 0x16u);
    }

    goto LABEL_12;
  }

  if (v8)
  {
    [v8 cancel];
    v11 = [(WFBiomeListener *)self triggerIDToSinks];
    [v11 removeObjectForKey:v4];
  }

  if (v10)
  {
    v12 = [(WFBiomeListener *)self remoteTriggerIDToSinks];
    v13 = [v12 allValues];
    v14 = [v13 count];

    if (v14 <= 1)
    {
      [MEMORY[0x277D7CA50] unregisterContextSyncClient];
    }

    [v10 cancel];
    v15 = [(WFBiomeListener *)self remoteTriggerIDToSinks];
    [v15 removeObjectForKey:v4];
LABEL_12:
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)unregisterConfiguredTriggerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WFBiomeListener *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__WFBiomeListener_unregisterConfiguredTriggerWithIdentifier___block_invoke;
  v7[3] = &unk_2788FFFC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)registerConfiguredTrigger:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFBiomeListener *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke;
  block[3] = &unk_2788FFF98;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v61 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke";
    v62 = 2112;
    v63 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEFAULT, "%s 🤖 [Biome] Registering configured trigger: %@", buf, 0x16u);
  }

  v4 = [*(a1 + 32) identifier];
  if ([*(a1 + 32) isEnabled])
  {
    v5 = [*(a1 + 32) trigger];
    v6 = [*(a1 + 40) triggerIDToSinks];
    v7 = [v6 objectForKey:v4];
    if (v7)
    {
    }

    else
    {
      v10 = [*(a1 + 40) remoteTriggerIDToSinks];
      v11 = [v10 objectForKey:v4];

      if (!v11)
      {
LABEL_11:
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.siriactionsd.%@", v4];
        v13 = objc_alloc(MEMORY[0x277CF1918]);
        v14 = [*(a1 + 40) queue];
        v49 = v12;
        v15 = [v13 initWithIdentifier:v12 targetQueue:v14];

        v48 = v15;
        v16 = [v5 publisherWithScheduler:v15];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_175;
        v58[3] = &unk_2788FFF48;
        v59 = v5;
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_177;
        v55[3] = &unk_2788FFF70;
        v17 = v59;
        v56 = v17;
        v46 = *(a1 + 32);
        v18 = v46.i64[0];
        v57 = vextq_s8(v46, v46, 8uLL);
        v19 = [v16 sinkWithCompletion:v58 receiveInput:v55];

        if (v19)
        {
          v20 = [*(a1 + 40) triggerIDToSinks];
          [v20 setObject:v19 forKey:v4];

          if (![v17 hasRemotePublisher])
          {
            goto LABEL_22;
          }

          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.siriactionsd.remote.%@", v4];
          v22 = objc_alloc(MEMORY[0x277CF1918]);
          v23 = [*(a1 + 40) queue];
          v24 = [v22 initWithIdentifier:v21 targetQueue:v23];

          v25 = [v17 remotePublisherWithScheduler:v24];
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_185;
          v53[3] = &unk_2788FFF48;
          v54 = v17;
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_186;
          v50[3] = &unk_2788FFF70;
          v51 = v54;
          v47 = *(a1 + 32);
          v26 = v47.i64[0];
          v52 = vextq_s8(v47, v47, 8uLL);
          v27 = [v25 sinkWithCompletion:v53 receiveInput:v50];

          if (v27)
          {
            v28 = [*(a1 + 40) remoteTriggerIDToSinks];
            [v28 setObject:v27 forKey:v4];
          }

          else
          {
            v36 = v21;
            v37 = getWFTriggersLogObject();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
            {
              v38 = [*(a1 + 32) trigger];
              v39 = objc_opt_class();
              v40 = NSStringFromClass(v39);
              *buf = 136315394;
              v61 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke_2";
              v62 = 2114;
              v63 = v40;
              _os_log_impl(&dword_23103C000, v37, OS_LOG_TYPE_FAULT, "%s Could not register trigger of type %{public}@ due to missing remote sink", buf, 0x16u);
            }

            v41 = *(a1 + 40);
            v42 = *(a1 + 48);
            v28 = [objc_opt_class() registrationError];
            (*(v42 + 16))(v42, 0, v28);
            v21 = v36;
          }

          if (v27)
          {
LABEL_22:
            v43 = getWFTriggersLogObject();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = *(a1 + 32);
              *buf = 136315394;
              v61 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke";
              v62 = 2112;
              v63 = v44;
              _os_log_impl(&dword_23103C000, v43, OS_LOG_TYPE_DEFAULT, "%s 🤖 [Biome] Registered configured trigger: %@", buf, 0x16u);
            }

            (*(*(a1 + 48) + 16))();
          }
        }

        else
        {
          v29 = getWFTriggersLogObject();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            v30 = [*(a1 + 32) trigger];
            v31 = objc_opt_class();
            v32 = NSStringFromClass(v31);
            *buf = 136315394;
            v61 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke_2";
            v62 = 2114;
            v63 = v32;
            _os_log_impl(&dword_23103C000, v29, OS_LOG_TYPE_FAULT, "%s Could not register trigger of type %{public}@ due to missing sink", buf, 0x16u);
          }

          v33 = *(a1 + 40);
          v34 = *(a1 + 48);
          v35 = [objc_opt_class() registrationError];
          (*(v34 + 16))(v34, 0, v35);
        }

        goto LABEL_26;
      }
    }

    [*(a1 + 40) queue_unregisterConfiguredTriggerWithIdentifier:v4];
    goto LABEL_11;
  }

  v8 = getWFTriggersLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 136315394;
    v61 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke";
    v62 = 2112;
    v63 = v9;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s 🤖 [Biome] Configured trigger %@ is not enabled", buf, 0x16u);
  }

  [*(a1 + 40) queue_unregisterConfiguredTriggerWithIdentifier:v4];
  (*(*(a1 + 48) + 16))();
LABEL_26:

  v45 = *MEMORY[0x277D85DE8];
}

void __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_175(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEFAULT, "%s 🤖 [Biome] Event cancelled %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_177(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFTriggersLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 136315650;
    v14 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_DEFAULT, "%s 🤖 [Biome] Received input %@ from trigger %@", buf, 0x20u);
  }

  v6 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_178;
  block[3] = &unk_2789000F8;
  v7 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v11 = v3;
  v12 = v7;
  v8 = v3;
  dispatch_async(v6, block);

  v9 = *MEMORY[0x277D85DE8];
}

void __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_185(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEFAULT, "%s Event cancelled %@ remote", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_186(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFTriggersLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 136315650;
    v14 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_DEFAULT, "%s Received input %@ from trigger %@", buf, 0x20u);
  }

  v6 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_187;
  block[3] = &unk_2789000F8;
  v7 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v11 = v3;
  v12 = v7;
  v8 = v3;
  dispatch_async(v6, block);

  v9 = *MEMORY[0x277D85DE8];
}

- (WFBiomeListener)initWithEventQueue:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = WFBiomeListener;
  v6 = [(WFBiomeListener *)&v19 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("com.apple.siriactionsd.WFBiomeListener", v8);
    queue = v6->_queue;
    v6->_queue = v9;

    objc_storeStrong(&v6->_eventQueue, a3);
    v11 = objc_opt_new();
    triggerIDToSinks = v6->_triggerIDToSinks;
    v6->_triggerIDToSinks = v11;

    v13 = objc_opt_new();
    remoteTriggerIDToSinks = v6->_remoteTriggerIDToSinks;
    v6->_remoteTriggerIDToSinks = v13;

    v15 = objc_opt_new();
    seenTransactionIdentifiers = v6->_seenTransactionIdentifiers;
    v6->_seenTransactionIdentifiers = v15;

    v17 = v6;
  }

  return v6;
}

+ (id)registrationError
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB38]);
  v3 = *MEMORY[0x277CCA450];
  v9[0] = *MEMORY[0x277CCA470];
  v9[1] = v3;
  v10[0] = @"Automation could not be registered";
  v10[1] = @"The associated automation could not be registered due to an underlying error.";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v5 = [v2 initWithDictionary:v4];

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7D008] code:1002 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end