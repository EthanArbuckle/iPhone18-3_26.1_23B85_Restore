@interface SUUIMobileAnalyticsReporter
- (SUUIMobileAnalyticsReporter)initWithSUManagerClient:(id)a3;
- (id)eventNameFor:(int64_t)a3;
- (id)interactionTypeToSUInteractionType:(int64_t)a3;
- (id)toSUAnalyticsEvent:(id)a3;
- (void)assignValue:(id)a3 forKey:(id)a4 in:(id)a5;
- (void)submitAnalyticsEvent:(id)a3;
@end

@implementation SUUIMobileAnalyticsReporter

- (SUUIMobileAnalyticsReporter)initWithSUManagerClient:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = SUUIMobileAnalyticsReporter;
  v8 = [(SUUIMobileAnalyticsReporter *)&v9 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    objc_storeStrong(&v11->_managerClient, location[0]);
    v4 = dispatch_queue_create("com.apple.softwareupdateui.mobile.analyticsreporter", 0);
    eventQueue = v11->_eventQueue;
    v11->_eventQueue = v4;
    MEMORY[0x277D82BD8](eventQueue);
  }

  v7 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)submitAnalyticsEvent:(id)a3
{
  v14 = self;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  objc_initWeak(&v11, v14);
  queue = v14->_eventQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __52__SUUIMobileAnalyticsReporter_submitAnalyticsEvent___block_invoke;
  v8 = &unk_279CCBD58;
  objc_copyWeak(v10, &v11);
  v10[1] = v13;
  v9 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(v10);
  objc_destroyWeak(&v11);
  objc_storeStrong(&location, 0);
}

void __52__SUUIMobileAnalyticsReporter_submitAnalyticsEvent___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v15[2] = a1;
  v15[1] = a1;
  v15[0] = objc_loadWeakRetained((a1 + 40));
  v6 = 0;
  if (!v15[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v14 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v13 = 16;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      log = v14;
      type = v13;
      v4 = NSStringFromSelector(*(a1 + 48));
      v12 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v17, "[SUUIMobileAnalyticsReporter submitAnalyticsEvent:]_block_invoke", v12);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v17, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v12, 0);
    }

    objc_storeStrong(&v14, 0);
    v11 = 1;
    v6 = 1;
  }

  if (v6)
  {
    v10 = 1;
  }

  else
  {
    v9 = [v15[0] toSUAnalyticsEvent:*(a1 + 32)];
    v1 = [MEMORY[0x277D64B58] analyticsLogger];
    oslog = [v1 oslog];
    MEMORY[0x277D82BD8](v1);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_8_66(v16, "[SUUIMobileAnalyticsReporter submitAnalyticsEvent:]_block_invoke", v9);
      _os_log_impl(&dword_26B0B9000, oslog, OS_LOG_TYPE_INFO, "%s: Submitting CoreAnalytics event: %{public}@", v16, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    [*(v15[0] + 1) submitSUAnalyticsEvent:v9];
    objc_storeStrong(&v9, 0);
    v10 = 0;
  }

  objc_storeStrong(v15, 0);
  *MEMORY[0x277D85DE8];
}

- (id)toSUAnalyticsEvent:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = objc_alloc(MEMORY[0x277D64868]);
  v7 = -[SUUIMobileAnalyticsReporter eventNameFor:](v20, "eventNameFor:", [location[0] eventType]);
  v18 = [v6 initWithEventName:?];
  MEMORY[0x277D82BD8](v7);
  v17 = [location[0] payload];
  v16 = [v17 objectForKey:*MEMORY[0x277D64C20]];
  if (v16)
  {
    v15 = -[SUUIMobileAnalyticsReporter interactionTypeToSUInteractionType:](v20, "interactionTypeToSUInteractionType:", [v16 intValue]);
    if (!v15)
    {
      _suui_precondition_failure_with_format();
    }

    [(SUUIMobileAnalyticsReporter *)v20 assignValue:v15 forKey:*MEMORY[0x277D64960] in:v18];
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v5 = v17;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __50__SUUIMobileAnalyticsReporter_toSUAnalyticsEvent___block_invoke;
    v12 = &unk_279CCBD80;
    v13 = MEMORY[0x277D82BE0](v20);
    v14 = MEMORY[0x277D82BE0](v18);
    [v5 enumerateKeysAndObjectsUsingBlock:&v8];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
  }

  v4 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v4;
}

void __50__SUUIMobileAnalyticsReporter_toSUAnalyticsEvent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [*(a1 + 32) assignValue:v5 forKey:location[0] in:*(a1 + 40)];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)eventNameFor:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64950]);
    }
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64958]);
  }

  return v4;
}

- (void)assignValue:(id)a3 forKey:(id)a4 in:(id)a5
{
  v13 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (numberIsBoolean(location[0]))
    {
      [v9 setEventPayloadEntry:v10 BOOLValue:{objc_msgSend(location[0], "BOOLValue")}];
    }

    else
    {
      [v9 setEventPayloadEntry:v10 numberValue:location[0]];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 setEventPayloadEntry:v10 stringValue:location[0]];
    }

    else
    {
      v5 = [MEMORY[0x277D64B58] analyticsLogger];
      v8 = [v5 oslog];
      MEMORY[0x277D82BD8](v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIMobileAnalyticsReporter assignValue:forKey:in:]", v10);
        _os_log_error_impl(&dword_26B0B9000, v8, OS_LOG_TYPE_ERROR, "%s: Could not assign the SUAnalyticsEvent payload event for key %{public}@ - the given value type is not supported.", v12, 0x16u);
      }

      objc_storeStrong(&v8, 0);
    }
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)interactionTypeToSUInteractionType:(int64_t)a3
{
  switch(a3)
  {
    case 0:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D649B0]);
      break;
    case 1:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D649A8]);
      break;
    case 2:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64970]);
      break;
    case 3:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64968]);
      break;
    case 4:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64990]);
      break;
    case 5:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64988]);
      break;
    case 6:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64980]);
      break;
    case 7:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64978]);
      break;
    case 8:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64A28]);
      break;
    case 9:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64A30]);
      break;
    case 10:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64A20]);
      break;
    case 11:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64A38]);
      break;
    case 12:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64A50]);
      break;
    case 13:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64A48]);
      break;
    case 14:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64A40]);
      break;
    case 15:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64A60]);
      break;
    case 16:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64A58]);
      break;
    case 17:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64A68]);
      break;
    case 18:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64A70]);
      break;
    case 19:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64928]);
      break;
    case 20:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64920]);
      break;
    case 21:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64918]);
      break;
    case 22:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64938]);
      break;
    case 23:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64930]);
      break;
    case 24:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64940]);
      break;
    case 25:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64948]);
      break;
    case 26:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64A10]);
      break;
    case 27:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64A88]);
      break;
    case 28:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64A78]);
      break;
    case 29:
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277D64A80]);
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

@end